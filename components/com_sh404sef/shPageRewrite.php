<?php
/**
 * SEF extensions for Joomla!
 *
 * @author      $Author: shumisha $
 * @copyright   Yannick Gaultier - 2007-2011
 * @package     sh404SEF-16
 * @license     http://www.gnu.org/copyleft/gpl.html GNU/GPL
 * @version     $Id: shPageRewrite.php 2254 2012-01-23 15:38:07Z silianacom-svn $
 *
 */

defined( '_JEXEC' ) or die( 'Restricted access' );

// V 1.2.4.t  check if sh404SEF is running
if (defined('SH404SEF_IS_RUNNING')) {

  // support for improved TITLE, DESCRIPTION, KEYWORDS and ROBOTS head tag
  global $shCustomTitleTag, $shCustomDescriptionTag, $shCustomKeywordsTag,
  $shCustomRobotsTag, $shCustomLangTag, $shCanonicalTag;
  // these variables can be set throughout your php code in components, bots or other modules
  // the last one wins !


  function shCleanUpTitle( $title) {
    $title = JString::trim(JString::trim(stripslashes(html_entity_decode($title))), '"');
    // in case there are some $nn in the title
    $title = preg_replace( '#\$([0-9]*)#', '\\\$${1}', $title);
    return $title;
  }

  function shCleanUpDesc( $desc) {
    $desc = stripslashes(html_entity_decode(strip_tags($desc, '<br><br /><p></p>'), ENT_NOQUOTES));
    $desc = str_replace('<br>',' - ', $desc);  // otherwise, one word<br >another becomes onewordanother
    $desc = str_replace('<br />',' - ', $desc);
    $desc = str_replace('<p>',' - ', $desc);
    $desc = str_replace('</p>',' - ', $desc);
    while (strpos($desc, ' -  - ') !== false) {
      $desc = str_replace(' -  - ', ' - ', $desc);
    }
    $desc = str_replace("&#39;",'\'', $desc);
    $desc = str_replace("&#039;",'\'', $desc);
    $desc = str_replace('"', '\'', $desc);
    $desc = str_replace("\r",'', $desc);
    $desc = str_replace("\n",'', $desc);
    return JString::substr( JString::trim($desc), 0, 512);
  }

  function shIncludeMetaPlugin() {

    $option = JRequest::getCmd( 'option');

    // get extension plugin
    $extPlugin = & Sh404sefFactory::getExtensionPlugin( $option);

    // which plugin file are we supposed to use?
    $extPluginPath = $extPlugin->getMetaPluginPath( Sh404sefFactory::getPageInfo()->shCurrentPageNonSef);

    if(!empty( $extPluginPath)) {
      include $extPluginPath;
    }

  }

  // utility function to insert data into an html buffer, after, instead or before
  // one or more instances of a tag. If last parameter is 'first', then only the
  // first occurence of the tag is replaced, or the new value is inserted only
  // after or before the first occurence of the tag

  function shInsertCustomTagInBuffer( $buffer, $tag, $where, $value, $firstOnly) {
    if (!$buffer || !$tag || !$value) return $buffer;
    $bits = explode($tag, $buffer);
    if (count($bits) < 2) return $buffer;
    $result = $bits[0];
    $maxCount = count($bits)-1;
    switch ($where) {
      case 'instead' :
        for ($i=0; $i < $maxCount; $i++) {
          $result .= ($firstOnly == 'first' ? ($i==0 ? $value:$tag):$value).$bits[$i+1];
        }
        break;
      case 'after' :
        for ($i=0; $i < $maxCount; $i++) {
          $result .= $tag.($firstOnly == 'first' ? ($i==0 ? $value:$tag):$value).$bits[$i+1];
        }
        break;
      default :
        for ($i=0; $i < $maxCount; $i++) {
        $result .= ($firstOnly == 'first' ? ($i==0 ? $value:$tag):$value).$tag.$bits[$i+1];
      }
      break;
    }
    return $result;
  }

  function shPregInsertCustomTagInBuffer( $buffer, $tag, $where, $value, $firstOnly, $rawPattern = false) {
    if (!$buffer || !$tag || !$value) return $buffer;
    $pattern = $rawPattern ? $tag : '#(' . $tag . ')#iUs';

    switch ($where) {
      case 'instead' :
        $replacement = $value;
        break;
      case 'after' :
        $replacement = '$1' . $value;
        break;
      default :
        $replacement = $value . '$1';
      break;
    }

    $result = preg_replace( $pattern, $replacement, $buffer, $firstOnly ? 1 : 0);

    return $result;
  }

  function shDoLinkReadMoreCallback($matches) {
    if (count($matches) != 3) return empty($matches) ? '' : $matches[0];
    $mask = '<td class="contentheading" width="100%">%%shM1%%title="%%shTitle%%" class="readon">%%shM2%%&nbsp;[%%shTitle%%]</a>';
    $result = str_replace('%%shM2%%', $matches[2], $mask);
    // we may have captured more than we want, if there are several articles, but only the last one has
    // a Read more link (first ones may be intro-only articles). Need to make sure we are fetching the right title
    $otherArticles = explode( '<td class="contentheading" width="100%">', $matches[1]);
    $articlesCount = count ($otherArticles);
    $matches[1] = $otherArticles[$articlesCount-1];
    unset($otherArticles[$articlesCount-1]);

    $bits = explode ('class="contentpagetitle">', $matches[1]);
    if (count ($bits) > 1) {
      // there is a linked title
      $titleBits = array();
      preg_match('/(.*)(<script|<\/a>)/isU', $bits[1], $titleBits); // extract title-may still have <h1> tags
      $title = JString::trim(JString::trim(stripslashes(html_entity_decode(JString::trim($titleBits[1])))), '"');
    } else {  // title is not linked
      $titleBits = array();
      preg_match('/(.*)(<script|<a\s*href=|<\/td>)/isU', $matches[1], $titleBits); // extract title-may still have <h1> tags
      $title = str_replace('<h1>', '', $titleBits[1]);
      $title = str_replace('</h1>', '', $title);
      $title = JString::trim(JString::trim(stripslashes(html_entity_decode(JString::trim($title)))), '"');
    }
    $result = str_replace('%%shTitle%%', $title, $result);
    // restore possible additionnal articles
    $articles = implode( '<td class="contentheading" width="100%">', $otherArticles);
    $matches[1] = (empty($articles) ? '': $articles . '<td class="contentheading" width="100%">') . $matches[1];
    $result = str_replace('%%shM1%%', $matches[1], $result);
    $result = str_replace('%%shM2%%', $matches[2], $result);
    $result = str_replace( 'class="contentpagetitle">', 'title="'.$title.'" class="contentpagetitle">', $result);
    return $result;
  }

  function shDoRedirectOutboundLinksCallback($matches) {
    if (count($matches) != 2) return empty($matches) ? '' : $matches[0];
    if (strpos($matches[1], Sh404sefFactory::getPageInfo()->getDefaultLiveSite()) === false){
      $mask = '<a href="'.Sh404sefFactory::getPageInfo()->getDefaultLiveSite().'/index.php?option=com_sh404sef&shtask=redirect&shtarget=%%shM1%%"';
      $result = str_replace('%%shM1%%', $matches[1], $mask);
    } else $result = $matches[0];
    return $result;
  }


  function shDoInsertOutboundLinksImageCallback($matches) {
    //if (count($matches) != 2 && count($matches) != 3) return empty($matches) ? '' : $matches[0];
    $orig = $matches[0];
    $bits = explode('href=', $orig);
    $part2 = $bits[1];  // 2nd part, after the href=
    $sep = substr($part2, 0, 1);  // " or ' ?
    $link = JString::trim($part2, $sep);  // remove first " or '
    if (empty($sep)) {
      // this should not happen, but it happens (Fireboard)
      $result = $matches[0];
      return $result;
    }
    $link = explode($sep, $link);
    $link = $link[0]; // keep only the link
     
    $shPageInfo = & Sh404sefFactory::getPageInfo();
    $sefConfig = & Sh404sefFactory::getConfig();
     
    if ( substr($link, 0, strlen($shPageInfo->getDefaultLiveSite())) != $shPageInfo->getDefaultLiveSite()
    && substr($link, 0, 7) == 'http://'
    && substr($link, 0, strlen($shPageInfo->basePath)) != $shPageInfo->basePath){

      $mask = '%%shM1%%href="%%shM2%%" %%shM3%% >%%shM4%%<img border="0" alt="%%shM5%%" src="'
      .$shPageInfo->getDefaultLiveSite().'/components/com_sh404sef/images/'
      .$sefConfig->shImageForOutboundLinks
      .'"/></a>';

      $result = str_replace('%%shM1%%', $bits[0], $mask);
      $result = str_replace('%%shM2%%', $link, $result);

      $m3 = str_replace($sep.$link.$sep, '', str_replace('</a>', '', $part2)); // remove link from part 2
      $bits2 = explode('>', $m3);
      $m3 = $bits2[0];
      $result = str_replace('%%shM3%%', $m3, $result);

      array_shift($bits2); // remove first bit
      $m4 = implode($bits2, '>');
      $result = str_replace('%%shM4%%', $m4, $result);

      $m5 = strip_tags($m4);
      $result = str_replace('%%shM5%%', $m5, $result);

    } else $result = $matches[0];
    return $result;
  }

  function shGetCustomMetaData( $nonSef) {

    static $_tags;

    if(is_null( $_tags)) {
      $_tags = new Sh404sefTableMetas(JFactory::getDbo());
      // now read manually setup tags
      try {
        $data = Sh404sefHelperDb::selectObject('#__sh404sef_metas', '*', array('newurl' => $nonSef));
      } catch (Sh404sefExceptionDefault $e) {
      }
      if(!empty($data)) {
        $_tags->bind($data);
      }
    }
    return $_tags;
  }

  function shGetCurrentNonSef() {

    // remove Google tracking vars, would prevent us to find the correct meta tags
    $nonSef = Sh404sefHelperGeneral::stripTrackingVarsFromNonSef( Sh404sefFactory::getPageInfo()->shCurrentPageNonSef);

    // normalize, set variables in alpha order
    return shSortUrl($nonSef);
  }

  function shDoTitleTags( &$buffer) {
    // Replace TITLE and DESCRIPTION and KEYWORDS
    if (empty($buffer)) return;
    global $shCustomTitleTag, $shCustomDescriptionTag, $shCustomKeywordsTag,
    $shCustomRobotsTag, $shCustomLangTag, $shCanonicalTag;

    $database	= & JFactory::getDBO();
    $shPageInfo = & Sh404sefFactory::getPageInfo();
    $sefConfig = & Sh404sefFactory::getConfig();
    $document = &JFactory::getDocument();
    $headData = $document->getHeadData();

    // V 1.2.4.t protect against error if using shCustomtags without sh404SEF activated
    // this should not happen, so we simply do nothing
    if (!isset($sefConfig) || empty( $shPageInfo->shCurrentPageNonSef)) {
      return;
    }

    // check if there is a manually created set of tags from tags file
    // need to get them from DB
    if ($sefConfig->shMetaManagementActivated) {

      shIncludeMetaPlugin();

      // is this homepage ? set flag for future use
      // V 1.2.4.t make sure we have lang info and properly sorted params
      if (!preg_match( '/(&|\?)lang=[a-zA-Z]{2,3}/iU', $shPageInfo->shCurrentPageNonSef)) {
        // no lang string, let's add default
        $shTemp = explode( '-', $shPageInfo->shMosConfig_locale);
        $shLangTemp = $shTemp[0] ? $shTemp[0] : 'en';
        $shPageInfo->shCurrentPageNonSef .= '&lang='.$shLangTemp;
      }

      $nonSef = shGetCurrentNonSef();
      $isHome = $nonSef == shSortUrl(shCleanUpAnchor(Sh404sefFactory::getPageInfo()->homeLink));
      $shCustomTags = shGetCustomMetaData( $isHome ? sh404SEF_HOMEPAGE_CODE : $nonSef);

      // J! 2.5 finder canonical handling/hack
      $highlight = shGetURLVar($nonSef, 'highlight', null);
      if(!empty($highlight) && empty($shCanonicalTag)) {
        $searchCanoNonSef = str_replace( '?highlight='.$highlight, '', $nonSef);
        $searchCanoNonSef = str_replace( '&highlight='.$highlight, '', $searchCanoNonSef);
        $shCanonicalTag = JRoute::_($searchCanoNonSef);
      }

      $tagsToInsert = ''; // group new tags insertion, better perf

      if ( !empty($shCustomTags)) {
        $shCustomTitleTag = !empty($shCustomTags->metatitle) ? $shCustomTags->metatitle : $shCustomTitleTag;
        $shCustomDescriptionTag = !empty($shCustomTags->metadesc) ? $shCustomTags->metadesc : $shCustomDescriptionTag;
        $shCustomKeywordsTag = !empty($shCustomTags->metakey) ? $shCustomTags->metakey : $shCustomKeywordsTag;
        $shCustomRobotsTag = !empty($shCustomTags->metarobots) ? $shCustomTags->metarobots : $shCustomRobotsTag;
        $shCustomLangTag = !empty($shCustomTags->metalang) ? $shCustomTags->metalang : $shCustomLangTag;
        $shCanonicalTag = !empty($shCustomTags->canonical) ? $shCustomTags->canonical : $shCanonicalTag;
      }

      // then insert them in page
      if (empty( $shCustomTitleTag)) {
        $shCustomTitleTag = $document->getTitle();
      }

      if (!empty($shCustomTitleTag)) {
        $prepend = $isHome ? '' : $sefConfig->prependToPageTitle;
        $append = $isHome ? '' : $sefConfig->appendToPageTitle;
        $shPageInfo->pageTitle = htmlspecialchars( shCleanUpTitle($prepend . $shCustomTitleTag . $append), ENT_COMPAT, 'UTF-8');
        $buffer = preg_replace( '/\<\s*title\s*\>.*\<\s*\/title\s*\>/isU', '<title>'
        . $shPageInfo->pageTitle .'</title>', $buffer);
        $buffer = preg_replace( '/\<\s*meta\s+name\s*=\s*"title.*\/\>/isU', '', $buffer); // remove Joomla title meta

      }

      if (!is_null($shCustomDescriptionTag)) {
        $t = htmlspecialchars( shCleanUpDesc($shCustomDescriptionTag), ENT_COMPAT, 'UTF-8');
        $shPageInfo->pageDescription = preg_replace( '#\$([0-9]*)#', '\\\$${1}', $t);
        if(strpos( $buffer, '<meta name="description" content=') !== false) {
          $buffer = preg_replace( '/\<\s*meta\s+name\s*=\s*"description.*\/\>/isU', '<meta name="description" content="'.$shPageInfo->pageDescription.'" />', $buffer);
        } else {
          $tagsToInsert .= "\n" . '<meta name="description" content="'.$shPageInfo->pageDescription.'" />';
        }
      } else {
        // read Joomla! description if none set by us
        if(empty($shPageInfo->pageDescription)) {
          $shPageInfo->pageDescription = empty($headData['description']) ? '' : htmlspecialchars( shCleanUpDesc($headData['description']), ENT_COMPAT, 'UTF-8');
        }
      }

      if (!is_null($shCustomKeywordsTag)) {
        $t = htmlspecialchars( shCleanUpDesc($shCustomKeywordsTag), ENT_COMPAT, 'UTF-8');
        $shPageInfo->pageKeywords = preg_replace( '#\$([0-9]*)#', '\\\$${1}', $t);
        if(strpos( $buffer, '<meta name="keywords" content=') !== false) {
          $buffer = preg_replace( '/\<\s*meta\s+name\s*=\s*"keywords.*\/\>/isU', '<meta name="keywords" content="'.$shPageInfo->pageKeywords.'" />', $buffer);
        } else {
          $tagsToInsert .= "\n" . '<meta name="keywords" content="'.$shPageInfo->pageKeywords.'" />';
        }
      } else {
        // read Joomla! description if none set by us
        if(empty($shPageInfo->pageKeywords)) {
          $shPageInfo->pageKeywords = empty($headData['metaTags']['standard']['keywords']) ? '' : htmlspecialchars( shCleanUpDesc($headData['metaTags']['standard']['keywords']), ENT_COMPAT, 'UTF-8');
        }
      }

      if (!is_null($shCustomRobotsTag)) {
        $shPageInfo->pageRobotsTag = $shCustomRobotsTag;
        if (strpos($buffer, '<meta name="robots" content="') !== false) {
          $buffer = preg_replace( '/\<\s*meta\s+name\s*=\s*"robots.*\/\>/isU', '<meta name="robots" content="'
          .$shCustomRobotsTag.'" />', $buffer);
        }
        else if (!empty($shCustomRobotsTag)) {
          $tagsToInsert .= "\n" . '<meta name="robots" content="'.$shCustomRobotsTag.'" />';
        }
      } else {
        // read Joomla! description if none set by us
        if(empty($shPageInfo->pageRobotsTag)) {
          $shPageInfo->pageRobotsTag = empty($headData['metaTags']['standard']['robots']) ? '' : htmlspecialchars( shCleanUpDesc($headData['metaTags']['standard']['robots']), ENT_COMPAT, 'UTF-8');
        }
      }

      if (!is_null($shCustomLangTag)) {
        $shLang = $shCustomLangTag;
        $shPageInfo->pageLangTag = $shCustomLangTag;
        if (strpos($buffer, '<meta http-equiv="Content-Language"') !== false) {
          $buffer = preg_replace( '/\<\s*meta\s+http-equiv\s*=\s*"Content-Language".*\/\>/isU', '<meta http-equiv="Content-Language" content="'.$shCustomLangTag.'" />', $buffer);
        } else {
          $tagsToInsert .= "\n" . '<meta http-equiv="Content-Language" content="'.$shCustomLangTag.'" />';
        }
      }

      if (!empty($shCanonicalTag)) {
        $shPageInfo->pageCanonicalUrl = $shCanonicalTag;
        if (strpos($buffer, '<link rel="canonical" href="') !== false) {
          $buffer = preg_replace( '/\<\s*link\s+rel\s*=\s*"canonical.*\/\>/isU', '<link rel="canonical" href="'
          .$shCanonicalTag.'" />', $buffer);
        } else {
          $tagsToInsert .= "\n" . '<link rel="canonical" href="'.$shCanonicalTag.'" />';
        }
      }

      // insert all tags in one go
      if(!empty( $tagsToInsert)) {
        $buffer = shInsertCustomTagInBuffer( $buffer, '<head>', 'after', $tagsToInsert, 'first');
      }

      // remove Generator tag
      if ($sefConfig->shRemoveGeneratorTag) {
        $buffer = preg_replace( '/<meta\s*name="generator"\s*content=".*\/>/isU','', $buffer);
      }

      // put <h1> tags around content elements titles
      if ($sefConfig->shPutH1Tags) {
        if (strpos($buffer, 'class="componentheading') !== false) {
          $buffer = preg_replace( '/<div class="componentheading([^>]*)>\s*(.*)\s*<\/div>/isU',
                              '<div class="componentheading$1><h1>$2</h1></div>', $buffer);    	
          $buffer = preg_replace( '/<td class="contentheading([^>]*)>\s*(.*)\s*<\/td>/isU',
                              '<td class="contentheading$1><h2>$2</h2></td>', $buffer);
        } else {  // replace contentheading by h1
          $buffer = preg_replace( '/<td class="contentheading([^>]*)>\s*(.*)\s*<\/td>/isU',
                              '<td class="contentheading$1><h1>$2</h1></td>', $buffer);
        }
      }

      // version x : if multiple h1 headings, replace them by h2
      if ($sefConfig->shMultipleH1ToH2 && substr_count( JString::strtolower($buffer), '<h1>') > 1) {
        $buffer = str_replace( '<h1>', '<h2>', $buffer);
        $buffer = str_replace( '<H1>', '<h2>', $buffer);
        $buffer = str_replace( '</h1>', '</h2>', $buffer);
        $buffer = str_replace( '</H1>', '</h2>', $buffer);
      }

      // V 1.3.1 : replace outbounds links by internal redirects
      if (sh404SEF_REDIRECT_OUTBOUND_LINKS) {
        $buffer = preg_replace_callback( '/<\s*a\s*href\s*=\s*"(.*)"/isU',
									'shDoRedirectOutboundLinksCallback', $buffer);
      }

      // V 1.3.1 : add symbol to outbounds links
      if ($sefConfig->shInsertOutboundLinksImage) {
        $buffer = preg_replace_callback( "/<\s*a\s*href\s*=\s*(\"|').*(\"|')\s*>.*<\/a>/isU",
									'shDoInsertOutboundLinksImageCallback', $buffer);
      }

      // fix homepage link when using Joomfish in non default languages, error in joomla mainmenu helper
      /*
       if (sh404SEF_PROTECT_AGAINST_BAD_NON_DEFAULT_LANGUAGE_MENU_HOMELINK && !shIsDefaultLang( $shPageInfo->shMosConfig_locale)) {
      $badHomeLink = preg_quote(JURI::base());
      $targetLang = explode( '-', $shPageInfo->shMosConfig_locale);
      $goodHomeLink = rtrim(JURI::base(), '/') . $sefConfig->shRewriteStrings[$sefConfig->shRewriteMode] . $targetLang[0] . '/';
      $buffer = preg_replace( '#<div class="module_menu(.*)href="' . $badHomeLink . '"#isU',
      '<div class="module_menu$1href="' . $goodHomeLink . '"', $buffer);
      $buffer = preg_replace( '#<div class="moduletable_menu(.*)href="' . $badHomeLink . '"#isU',
      '<div class="moduletable_menu$1href="' . $goodHomeLink . '"', $buffer);
      }
      */
      // all done
      return $buffer;
    }
  }

  function shDoAnalytics( & $buffer) {

    // get sh404sef config
    $sefConfig = & Sh404sefFactory::getConfig();

    // check if set to insert snippet
    if( !$sefConfig->analyticsEnabled) {
      return;
    }

    // calculate params
    $className = 'Sh404sefAdapterAnalytics' . strtolower( $sefConfig->analyticsType);
    $handler = new $className();

    // do insert
    $snippet = $handler->getSnippet();

    // use page rewrite utility function to insert as needed
    if(!empty( $snippet)) {
      $buffer = shInsertCustomTagInBuffer( $buffer, '</head>', 'before', $snippet, $firstOnly = 'first');
    }

  }

  function shDoSocialButtons( & $buffer) {

    // get sh404sef config
    $sefConfig = & Sh404sefFactory::getConfig();

    // fire event so that social plugin can attach required external js
    $dispatcher = &JDispatcher::getInstance();
    $dispatcher->trigger('onSh404sefInsertFBJavascriptSDK', array( &$buffer, $sefConfig));

    // fire event so that social plugin can attach required external js and css
    $dispatcher = &JDispatcher::getInstance();
    $dispatcher->trigger('onSh404sefInsertSocialButtons', array( &$buffer, $sefConfig));

  }

  function shDoSocialAnalytics( & $buffer) {

    // get sh404sef config
    $sefConfig = & Sh404sefFactory::getConfig();

    // check if set to insert snippet
    if( !$sefConfig->analyticsEnabled) {
      return;
    }

    // fire event so that social plugin can attach required external js
    $dispatcher = &JDispatcher::getInstance();
    $dispatcher->trigger('onSh404sefInsertFBJavascriptSDK', array( &$buffer, $sefConfig));

  }


  function shDoShURL( &$buffer) {

    // get sh404sef config
    $sefConfig = & Sh404sefFactory::getConfig();

    // check if shURLs are enabled
    if( !$sefConfig->Enabled || !$sefConfig->enablePageId) {
      return;
    }

    // get current page information
    $shPageInfo = & Sh404sefFactory::getPageInfo();

    // insert shURL if tag found, except if editing item on frontend
    if (strpos( $buffer, '{sh404sef_pageid}') !== false || strpos( $buffer, '{sh404sef_shurl}') !== false) {
      // pull out contents of editor to prevent URL changes inside edit area
      $editor =& JFactory::getEditor();
      $regex = '#'.$editor->_tagForSEF['start'].'(.*)'.$editor->_tagForSEF['end'].'#Us';
      preg_match_all($regex, $buffer, $editContents, PREG_PATTERN_ORDER);

      // create an array to hold the placeholder text (in case there are more than one editor areas)
      $placeholders = array();
      for ($i = 0; $i < count($editContents[0]); $i++) {
        $placeholders[] = $editor->_tagForSEF['start'].$i.$editor->_tagForSEF['end'];
      }

      // replace editor contents with placeholder text
      $buffer   = str_replace($editContents[0], $placeholders, $buffer);
      $buffer = str_replace( array('{sh404sef_pageid}', '{sh404sef_shurl}'), $shPageInfo->shURL, $buffer );
      // restore the editor contents
      $buffer   = str_replace($placeholders, $editContents[0], $buffer);

    }
  }

  function shInsertOpenGraphData( &$buffer) {

    // get sh404sef config
    $sefConfig = & Sh404sefFactory::getConfig();
    $pageInfo = &Sh404sefFactory::getPageInfo();
    if(empty($sefConfig->shMetaManagementActivated) || !isset($sefConfig) || empty( $pageInfo->shCurrentPageNonSef)) {
      return;
    }

    $nonSef = shGetCurrentNonSef();
    $customData = shGetCustomMetaData( $nonSef);

    // user can disable per url
    if($customData->og_enable == SH404SEF_OPTION_VALUE_NO || (empty($sefConfig->enableOpenGraphData) && $customData->og_enable == SH404SEF_OPTION_VALUE_USE_DEFAULT)) {
      return;
    }

    $openGraphData = '';
    $ogNameSpace = '';
    $fbNameSpace = '';

    // add locale -  FB use underscore in language tags
    $locale = str_replace( '-', '_', JFactory::getLanguage()->getTag());
    $openGraphData .= "\n" . '  <meta property="og:locale" content="'.$locale.'" />';

    // insert title
    if(!empty( $pageInfo->pageTitle)) {
      $openGraphData .= "\n" . '  <meta property="og:title" content="'.$pageInfo->pageTitle.'" />';
    }

    // insert description
    if( (($sefConfig->ogEnableDescription && $customData->og_enable_description == SH404SEF_OPTION_VALUE_USE_DEFAULT) || $customData->og_enable_description == SH404SEF_OPTION_VALUE_YES) && !empty( $pageInfo->pageDescription)) {
      $openGraphData .= "\n" . '  <meta property="og:description" content="'.$pageInfo->pageDescription.'" />';
    }

    // insert type
    $content = $customData->og_type == SH404SEF_OPTION_VALUE_USE_DEFAULT ? $sefConfig->ogType : $customData->og_type;
    if(!empty( $content)) {
      $openGraphData .= "\n" . '  <meta property="og:type" content="'.$content.'" />';
    }

    // insert url. If any, we insert the canonical url rather than current, to consolidate
    $content = empty($pageInfo->pageCanonicalUrl) ? $pageInfo->shCurrentPageURL: $pageInfo->pageCanonicalUrl;
    $openGraphData .= "\n" . '  <meta property="og:url" content="'.$content.'" />';

    // insert image
    $content = empty($customData->og_image) ? $sefConfig->ogImage: $customData->og_image;
    if(!empty( $content)) {
      $content = JURI::root( false, '') . JString::ltrim( $content, '/');
      $openGraphData .= "\n" . '  <meta property="og:image" content="'.$content.'" />';
    }

    // insert site name
    if (($sefConfig->ogEnableSiteName && $customData->og_enable_site_name == SH404SEF_OPTION_VALUE_USE_DEFAULT) || $customData->og_enable_site_name == SH404SEF_OPTION_VALUE_YES) {
      $content = empty($customData->og_site_name) ? $sefConfig->ogSiteName : $customData->og_site_name;
      $content = empty($content) ? JFactory::getApplication()->getCfg('sitename') : $content;
      if(!empty($content)) {
        $content = htmlspecialchars( shCleanUpDesc($content), ENT_COMPAT, 'UTF-8');
        $openGraphData .= "\n" . '  <meta property="og:site_name" content="'.$content.'" />';
      }
    }

    // insert location
    if (($sefConfig->ogEnableLocation && $customData->og_enable_location == SH404SEF_OPTION_VALUE_USE_DEFAULT) || $customData->og_enable_location == SH404SEF_OPTION_VALUE_YES) {
      $content = empty($customData->og_latitude) ? $sefConfig->ogLatitude : $customData->og_latitude;
      if(!empty($content)) {
        $content = htmlspecialchars( shCleanUpDesc($content), ENT_COMPAT, 'UTF-8');
        $openGraphData .= "\n" . '  <meta property="og:latitude" content="'.$content.'" />';
      }
      $content = empty($customData->og_longitude) ? $sefConfig->ogLongitude : $customData->og_longitude;
      if(!empty($content)) {
        $content = htmlspecialchars( shCleanUpDesc($content), ENT_COMPAT, 'UTF-8');
        $openGraphData .= "\n" . '  <meta property="og:longitude" content="'.$content.'" />';
      }
      $content = empty($customData->og_street_address) ? $sefConfig->ogStreetAddress : $customData->og_street_address;
      if(!empty($content)) {
        $content = htmlspecialchars( shCleanUpDesc($content), ENT_COMPAT, 'UTF-8');
        $openGraphData .= "\n" . '  <meta property="og:street-address" content="'.$content.'" />';
      }
      $content = empty($customData->og_locality) ? $sefConfig->ogLocality : $customData->og_locality;
      if(!empty($content)) {
        $content = htmlspecialchars( shCleanUpDesc($content), ENT_COMPAT, 'UTF-8');
        $openGraphData .= "\n" . '  <meta property="og:locality" content="'.$content.'" />';
      }
      $content = empty($customData->og_postal_code) ? $sefConfig->ogPostalCode : $customData->og_postal_code;
      if(!empty($content)) {
        $content = htmlspecialchars( shCleanUpDesc($content), ENT_COMPAT, 'UTF-8');
        $openGraphData .= "\n" . '  <meta property="og:postal-code" content="'.$content.'" />';
      }
      $content = empty($customData->og_region) ? $sefConfig->ogRegion : $customData->og_region;
      if(!empty($content)) {
        $content = htmlspecialchars( shCleanUpDesc($content), ENT_COMPAT, 'UTF-8');
        $openGraphData .= "\n" . '  <meta property="og:region" content="'.$content.'" />';
      }
      $content = empty($customData->og_country_name) ? $sefConfig->ogCountryName : $customData->og_country_name;
      if(!empty($content)) {
        $content = htmlspecialchars( shCleanUpDesc($content), ENT_COMPAT, 'UTF-8');
        $openGraphData .= "\n" . '  <meta property="og:country-name" content="'.$content.'" />';
      }

    }

    // insert contact
    if (($sefConfig->ogEnableContact && $customData->og_enable_contact == SH404SEF_OPTION_VALUE_USE_DEFAULT) || $customData->og_enable_contact == SH404SEF_OPTION_VALUE_YES) {
      $content = empty($customData->og_email) ? $sefConfig->ogEmail : $customData->og_email;
      if(!empty($content)) {
        $content = htmlspecialchars( shCleanUpDesc($content), ENT_COMPAT, 'UTF-8');
        $openGraphData .= "\n" . '  <meta property="og:email" content="'.$content.'" />';
      }
      $content = empty($customData->og_phone_number) ? $sefConfig->ogPhoneNumber : $customData->og_phone_number;
      if(!empty($content)) {
        $content = htmlspecialchars( shCleanUpDesc($content), ENT_COMPAT, 'UTF-8');
        $openGraphData .= "\n" . '  <meta property="og:phone_number" content="'.$content.'" />';
      }
      $content = empty($customData->og_fax_number) ? $sefConfig->ogFaxNumber : $customData->og_fax_number;
      if(!empty($content)) {
        $content = htmlspecialchars( shCleanUpDesc($content), ENT_COMPAT, 'UTF-8');
        $openGraphData .= "\n" . '  <meta property="og:fax_number" content="'.$content.'" />';
      }
    }

    if(!empty( $openGraphData)) {
      $ogNameSpace = 'xmlns:og="http://ogp.me/ns#"';
    }

    // insert fb admin id
    if ((!empty($sefConfig->fbAdminIds) && $customData->og_enable_fb_admin_ids == SH404SEF_OPTION_VALUE_USE_DEFAULT) || $customData->og_enable_fb_admin_ids == SH404SEF_OPTION_VALUE_YES) {
      $content = empty($customData->fb_admin_ids) ? $sefConfig->fbAdminIds : $customData->fb_admin_ids;
      if($customData->og_enable_fb_admin_ids != SH404SEF_OPTION_VALUE_NO && !empty($content)) {
        $openGraphData .= "\n" . '  <meta property="fb:admins" content="'.$content.'" />';
        $fbNameSpace = 'xmlns:fb="https://www.facebook.com/2008/fbml"';
      }
    }
    // actually insert the tags
    if(!empty( $openGraphData)) {
      $buffer = shInsertCustomTagInBuffer( $buffer, '<head>', 'after', $openGraphData, 'first');
    }

    if(!empty( $fbNameSpace) || !empty( $ogNameSpace)) {
      // insert as well namespaces
      $buffer = str_replace( '<html ', '<html ' . $ogNameSpace . ' ' . $fbNameSpace . ' ', $buffer);
    }

  }

  function shDoHeadersChanges() {

    global $shCanonicalTag;

    $sefConfig = & Sh404sefFactory::getConfig();
    $shPageInfo = & Sh404sefFactory::getPageInfo();  // get page details gathered by system plugin

    if (!isset($sefConfig) || empty($sefConfig->shMetaManagementActivated) || empty( $shPageInfo->shCurrentPageNonSef)) {
      return;
    }
     
    // include plugin to build canonical if needed
    shIncludeMetaPlugin();

    // issue headers for canonical
    if(!empty( $shCanonicalTag)) {
      jimport( 'joomla.utilities.string');
      $link = JURI::root( false, '') . JString::ltrim( $shCanonicalTag, '/');
      JResponse::setHeader( 'Link', '<' . $link . '>; rel="canonical"');
    }
  }


  // begin main output --------------------------------------------------------

  // check we are outputting document for real
  $document = &JFactory::getDocument();
  if ($document->getType() == 'html') {
    $shPage = JResponse::getBody();

    // do TITLE and DESCRIPTION and KEYWORDS and ROBOTS tags replacement
    shDoTitleTags( $shPage);

    // insert analytics snippet
    shDoAnalytics( $shPage);
    shDoSocialAnalytics( $shPage);
    shDoSocialButtons( $shPage);

    // insert short urls stuff
    shDoShURL( $shPage);

    // Open Graph data
    shInsertOpenGraphData($shPage);

    if (defined('SH_SHOW_CACHE_STATS')) {
      $shPage .= Sh404sefHelperCache::getCacheStats();
    }

    JResponse::setBody($shPage);
  } else {
    shDoHeadersChanges();
  }

}
