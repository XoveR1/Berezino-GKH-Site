<?php
/*
 * @package		Joomla.Framework
 * @copyright	Copyright (C) 2005 - 2010 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 *
 * @component Phoca Component
 * @copyright Copyright (C) Jan Pavelka www.phoca.cz
 * @license http://www.gnu.org/copyleft/gpl.html GNU General Public License version 2 or later;
 */
defined('_JEXEC') or die();
jimport( 'joomla.application.component.view');
phocagalleryimport( 'phocagallery.image.image');
phocagalleryimport( 'phocagallery.image.imagefront');
phocagalleryimport( 'phocagallery.file.filethumbnail');
phocagalleryimport( 'phocagallery.rate.rateimage');
phocagalleryimport( 'phocagallery.picasa.picasa');
phocagalleryimport( 'phocagallery.facebook.fbsystem');
phocagalleryimport( 'phocagallery.youtube.youtube');

class PhocaGalleryViewDetail extends JView
{

	public $tmpl;
	protected $params;
	
	function display($tpl = null) {
		
		$app					= JFactory::getApplication();
		$document				= &JFactory::getDocument();		
		$this->params			= $app->getParams();
		$user					= &JFactory::getUser();
		$var['slideshow']		= JRequest::getVar('phocaslideshow', 0, '', 'int');
		$var['download'] 		= JRequest::getVar('phocadownload', 0, '', 'int');
		$uri 					= &JFactory::getURI();
		$this->tmpl['action']	= $uri->toString();
		
		$neededAccessLevels		= PhocaGalleryAccess::getNeededAccessLevels();
		$access					= PhocaGalleryAccess::isAccess($user->authorisedLevels(), $neededAccessLevels);

		
		// Information from the plugin - window is displayed after plugin action
		$get				= array();
		$get['detail']		= JRequest::getVar( 'detail', '', 'get', 'string');
		$get['buttons']		= JRequest::getVar( 'buttons', '', 'get', 'string' );
		$get['ratingimg']	= JRequest::getVar( 'ratingimg', '', 'get', 'string' );
		
		$this->tmpl['picasa_correct_width_l']		= (int)$this->params->get( 'large_image_width', 640 );	
		$this->tmpl['picasa_correct_height_l']	= (int)$this->params->get( 'large_image_height', 480 );
		$this->tmpl['enablecustomcss']				= $this->params->get( 'enable_custom_css', 0);
		$this->tmpl['customcss']					= $this->params->get( 'custom_css', '');
		
		// CSS
		JHTML::stylesheet('components/com_phocagallery/assets/phocagallery.css' );
		if ($this->tmpl['enablecustomcss'] == 1) {
			JHTML::stylesheet('components/com_phocagallery/assets/phocagallerycustom.css' );
			PhocaGalleryRenderFront::displayCustomCSS($this->tmpl['customcss']);
		}
		
		// Plugin information
		$this->tmpl['detailwindow']	= $this->params->get( 'detail_window', 0 );
		if (isset($get['detail']) && $get['detail'] != '') {
			$this->tmpl['detailwindow'] 		= $get['detail'];
		}
		
		// Plugin information
		$this->tmpl['detailbuttons']	= $this->params->get( 'detail_buttons', 1 );
		if (isset($get['buttons']) && $get['buttons'] != '') {
			$this->tmpl['detailbuttons'] = $get['buttons'];
		}
		
		// Close and Reload links (for different window types)
		$close = PhocaGalleryRenderFront::renderCloseReloadDetail($this->tmpl['detailwindow']);
		$this->tmpl['detailwindowclose']	= $close['detailwindowclose'];
		$this->tmpl['detailwindowreload']	= $close['detailwindowreload'];
	
		
		$this->tmpl['displaydescriptiondetail']		= $this->params->get( 'display_description_detail', 0 );
		$this->tmpl['displaytitleindescription']		= $this->params->get( 'display_title_description', 0 );
		$this->tmpl['descriptiondetailheight']		= $this->params->get( 'description_detail_height', 16 );
		$this->tmpl['fontsizedesc'] 					= $this->params->get( 'font_size_desc', 11 );
		$this->tmpl['fontcolordesc'] 					= $this->params->get( 'font_color_desc', '#333333' );
		$this->tmpl['detailwindowbackgroundcolor']	= $this->params->get( 'detail_window_background_color', '#ffffff' );
		$this->tmpl['descriptionlightboxfontcolor']	= $this->params->get( 'description_lightbox_font_color', '#ffffff' );
		$this->tmpl['descriptionlightboxbgcolor']		= $this->params->get( 'description_lightbox_bg_color', '#000000' );
		$this->tmpl['descriptionlightboxfontsize']	= $this->params->get( 'description_lightbox_font_size', 12 );
		$this->tmpl['displayratingimg']				= $this->params->get( 'display_rating_img', 0 );
		$this->tmpl['displayicondownload'] 			= $this->params->get( 'display_icon_download', 0 );
		$this->tmpl['externalcommentsystem'] 			= $this->params->get( 'external_comment_system', 0 );
		$this->tmpl['largewidth'] 					= $this->params->get( 'large_image_width', 640 );
		$this->tmpl['largeheight'] 					= $this->params->get( 'large_image_height', 480 );
		$this->tmpl['boxlargewidth'] 					= $this->params->get( 'front_modal_box_width', 680 );
		$this->tmpl['boxlargeheight'] 				= $this->params->get( 'front_modal_box_height', 560 );
		$this->tmpl['slideshow_delay'] 				= $this->params->get( 'slideshow_delay', 3000 );
		$this->tmpl['slideshow_pause'] 				= $this->params->get( 'slideshow_pause', 2500 );
		$this->tmpl['slideshowrandom'] 				= $this->params->get( 'slideshow_random', 0 );
		$this->tmpl['slideshow_description'] 			= $this->params->get( 'slideshow_description', 'peekaboo' );
		$this->tmpl['gallerymetakey'] 				= $this->params->get( 'gallery_metakey', '' );
		$this->tmpl['gallerymetadesc'] 				= $this->params->get( 'gallery_metadesc', '' );
		$this->tmpl['altvalue']		 				= $this->params->get( 'alt_value', 1 );
		$this->tmpl['enablecustomcss']				= $this->params->get( 'enable_custom_css', 0);
		$this->tmpl['customcss']					= $this->params->get( 'custom_css', '');
		$this->tmpl['display_tags_links'] 			= $this->params->get( 'display_tags_links', 0 );
		$this->tmpl['ytb_display'] 					= $this->params->get( 'ytb_display', 0 );
	
		// CSS
		JHTML::stylesheet('components/com_phocagallery/assets/phocagallery.css' );
		if ($this->tmpl['enablecustomcss'] == 1) {
			JHTML::stylesheet('components/com_phocagallery/assets/phocagallerycustom.css' );
			if ($this->tmpl['customcss'] != ''){
				$document->addCustomTag( "\n <style type=\"text/css\"> \n" 
				.$this->escape(strip_tags($this->tmpl['customcss']))
				."\n </style> \n");
			
			}
		}
		
		// No Scrollbar in Detail View
		if ($this->tmpl['detailwindow'] == 7) {
	
		} else {
			$document->addCustomTag( "<style type=\"text/css\"> \n" 
				." html,body, .contentpane{overflow:hidden;background:".$this->tmpl['detailwindowbackgroundcolor'].";} \n" 
				." center, table {background:".$this->tmpl['detailwindowbackgroundcolor'].";} \n" 
				." #sbox-window {background-color:#fff;padding:5px} \n"
				// gantry-fix-begin
				."body {min-width:100%} \n"
				.".rt-container {width:100%} \n"
				// gantry-fix-end
				." </style> \n");
		}
		
		// Download from the detail view which is not in the popupbox
		if ($var['download'] == 2 ){
			$this->tmpl['displayicondownload'] = 2;
		}

		// Plugin Information
		if (isset($get['ratingimg']) && $get['ratingimg'] != '') {
			$this->tmpl['displayratingimg'] = $get['ratingimg'];
		}
	

		
		// Model
		$model	= &$this->getModel();
		$item	= $model->getData();
		


		// Access check - don't display the image if you have no access to this image (if user add own url)
		// USER RIGHT - ACCESS - - - - - - - - - - 
		$rightDisplay	= 0;
		if (!empty($item)) {
			$rightDisplay = PhocaGalleryAccess::getUserRight('accessuserid', $item->cataccessuserid, $item->cataccess, $user->authorisedLevels(), $user->get('id', 0), 0);
		}
	
		if ((int)$rightDisplay == 0) {
			
			echo $close['html'];
			//Some problem with cache - Joomla! return this message if there is no reason for do it.
			//$this->tmpl['pl']		= 'index.php?option=com_users&view=login&return='.base64_encode($uri->toString());
			//$app->redirect(JRoute::_($this->tmpl['pl'], false), JText::_('COM_PHOCAGALLERY_NOT_AUTHORISED_ACTION'));
			exit;
			
		}
	
		// - - - - - - - - - - - - - - - - - - - - 

		phocagalleryimport('phocagallery.image.image');
		phocagalleryimport('phocagallery.render.renderdetailbutton'); // Javascript Slideshow buttons
		$detailButton 			= new PhocaGalleryRenderDetailButton();
		$item->reloadbutton		= $detailButton->getReload($item->catslug, $item->slug);
		$item->closebutton		= $detailButton->getClose($item->catslug, $item->slug);
		$item->closetext		= $detailButton->getCloseText($item->catslug, $item->slug);
		$item->nextbutton		= $detailButton->getNext((int)$item->catid, (int)$item->id, (int)$item->ordering);
		$item->prevbutton		= $detailButton->getPrevious((int)$item->catid, (int)$item->id, (int)$item->ordering);
		$slideshowData			= $detailButton->getJsSlideshow((int)$item->catid, (int)$item->id, (int)$var['slideshow'], $item->catslug, $item->slug);
		$item->slideshowbutton	= $slideshowData['icons'];
		$item->slideshowfiles	= $slideshowData['files'];
		$item->slideshow		= $var['slideshow'];
		$item->download			= $var['download'];
		
		// ALT VALUE
		$altValue	= PhocaGalleryRenderFront::getAltValue($this->tmpl['altvalue'], $item->title, $item->description, $item->metadesc);
		$item->altvalue			= $altValue;
			
		// Get file thumbnail or No Image
		$item->filenameno		= $item->filename;
		$item->filename			= PhocaGalleryFile::getTitleFromFile($item->filename, 1);
		$item->filesize			= PhocaGalleryFile::getFileSize($item->filenameno);
		$realImageSize	= '';
		$extImage = PhocaGalleryImage::isExtImage($item->extid);
		if ($extImage) {
			$item->extl			=	$item->extl;
			$item->exto			=	$item->exto;
			$realImageSize 		= PhocaGalleryImage::getRealImageSize($item->extl, '', 1);
			$item->imagesize 	= PhocaGalleryImage::getImageSize($item->exto, 1, 1);
			if ($item->extw != '') {
				$extw 		= explode(',',$item->extw);
				$item->extw	= $extw[0];
			}
			$correctImageRes 		= PhocaGalleryPicasa::correctSizeWithRate($item->extw, $item->exth, $this->tmpl['picasa_correct_width_l'], $this->tmpl['picasa_correct_height_l']);
			$item->linkimage		= JHTML::_( 'image', $item->extl, $item->altvalue, array('width' => $correctImageRes['width'], 'height' => $correctImageRes['height'], 'class' => 'pg-detail-image'));
			$item->realimagewidth 	= $correctImageRes['width'];
			$item->realimageheight	= $correctImageRes['height'];
			
		} else {
			$item->linkthumbnailpath	= PhocaGalleryImageFront::displayCategoryImageOrNoImage($item->filenameno, 'large');
			$item->linkimage			= JHTML::_( 'image', $item->linkthumbnailpath, $item->altvalue, array( 'class' => 'pg-detail-image'));
			$realImageSize 				= PhocaGalleryImage::getRealImageSize ($item->filenameno);
			$item->imagesize			= PhocaGalleryImage::getImageSize($item->filenameno, 1);
			if (isset($realImageSize['w']) && isset($realImageSize['h'])) {
				$item->realimagewidth		= $realImageSize['w'];
				$item->realimageheight		= $realImageSize['h'];
			} else {
				$item->realimagewidth	 	= $this->tmpl['largewidth'];
				$item->realimageheight		= $this->tmpl['largeheight'];
			}
		}
		
		// Add Statistics
		$model->hit(JRequest::getVar( 'id', '', '', 'int' ));
		
		// R A T I N G
		// Only registered (VOTES + COMMENTS)
		$this->tmpl['notregisteredimg'] 	= true;
		$this->tmpl['usernameimg']		= '';
		if ($access > 0) {
			$this->tmpl['notregisteredimg'] 	= false;
			$this->tmpl['usernameimg']		= $user->name;
		}	
			
		// VOTES Statistics Img
		if ((int)$this->tmpl['displayratingimg'] == 1) {
			$this->tmpl['votescountimg']		= 0;
			$this->tmpl['votesaverageimg'] 	= 0;
			$this->tmpl['voteswidthimg']		= 0;
			$votesStatistics	= PhocaGalleryRateImage::getVotesStatistics((int)$item->id);
			if (!empty($votesStatistics->count)) {
				$this->tmpl['votescountimg'] = $votesStatistics->count;
			}
			if (!empty($votesStatistics->average)) {
				$this->tmpl['votesaverageimg'] = $votesStatistics->average;
				if ($this->tmpl['votesaverageimg'] > 0) {
					$this->tmpl['votesaverageimg'] 	= round(((float)$this->tmpl['votesaverageimg'] / 0.5)) * 0.5;
					$this->tmpl['voteswidthimg']		= 22 * $this->tmpl['votesaverageimg'];
				} else {
					$this->tmpl['votesaverageimg'] = (int)0;// not float displaying
				}
			}
			if ((int)$this->tmpl['votescountimg'] > 1) {
				$this->tmpl['votestextimg'] = 'COM_PHOCAGALLERY_VOTES';
			} else {
				$this->tmpl['votestextimg'] = 'COM_PHOCAGALLERY_VOTE';
			}
		
			// Already rated?
			$this->tmpl['alreadyratedimg']	= PhocaGalleryRateImage::checkUserVote( (int)$item->id, (int)$user->id );
		}
		
		// Tags
		$this->tmpl['displaying_tags_output'] = '';
		if ($this->tmpl['display_tags_links'] == 1 || $this->tmpl['display_tags_links'] == 3) {
			if ($this->tmpl['detailwindow'] == 7) {
				$this->tmpl['displaying_tags_output'] = PhocaGalleryTag::displayTags($item->id);
			} else {
				$this->tmpl['displaying_tags_output'] = PhocaGalleryTag::displayTags($item->id, 1);
			}
		}
		
		
		
		
		
		// Back button
		$this->tmpl['backbutton'] = '';
		if ($this->tmpl['detailwindow'] == 7) {
			phocagalleryimport('phocagallery.image.image');
			$formatIcon = &PhocaGalleryImage::getFormatIcon();
			$this->tmpl['backbutton'] = '<div><a href="'.JRoute::_('index.php?option=com_phocagallery&view=category&id='. $item->catslug.'&Itemid='. JRequest::getVar('Itemid', 0, '', 'int')).'"'
				.' title="'.JText::_( 'COM_PHOCAGALLERY_BACK_TO_CATEGORY' ).'">'
				. JHTML::_('image', 'components/com_phocagallery/assets/images/icon-up-images.' . $formatIcon, JText::_( 'COM_PHOCAGALLERY_BACK_TO_CATEGORY' )).'</a></div>';
				
		}
		
		
		
		// ASIGN
		$this->assignRef( 'tmpl', $this->tmpl );
		$this->assignRef( 'item', $item );
		$this->_prepareDocument($item);
	
		if (isset($item->videocode) && $item->videocode != '') {
			$item->videocode = PhocaGalleryYoutube::displayVideo($item->videocode);
			
			if ($this->tmpl['detailwindow'] != 7 && $this->tmpl['ytb_display'] == 1) {
				$document->addCustomTag( "<style type=\"text/css\"> \n" 
					." html, body, .contentpane, div#all, div#main, div#system-message-container {padding: 0px !important;margin: 0px !important;} \n"
					." div#sbox-window {background-color:#fff;padding: 0px;margin: 0px;} \n"
					." </style> \n");
			}
			
			parent::display('video');
		} else {
			parent::display('slideshowjs');
			if ($item->slideshow == 1) {
				parent::display('slideshow');
			} else if ($item->download > 0) {
				
				if ($this->tmpl['displayicondownload'] == 2) {
					$backLink = 'index.php?option=com_phocagallery&view=category&id='. $item->catslug.'&Itemid='. JRequest::getVar('Itemid', 0, '', 'int');
					phocagalleryimport('phocagallery.file.filedownload');
					if (isset($item->exto) && $item->exto != '') {
						PhocaGalleryFileDownload::download($item, $backLink, 1);
					} else {
						PhocaGalleryFileDownload::download($item, $backLink);
					}
					exit;
				} else {
					parent::display('download');
				}
			} else {
				parent::display($tpl);
			}
		}
	}
	
	protected function _prepareDocument($item) {
		
		$app		= JFactory::getApplication();
		$menus		= $app->getMenu();
		$pathway 	= $app->getPathway();
		//$this->params		= &$app->getParams();
		$title 		= null;
		
		$this->tmpl['gallerymetakey'] 		= $this->params->get( 'gallery_metakey', '' );
		$this->tmpl['gallerymetadesc'] 		= $this->params->get( 'gallery_metadesc', '' );
		
		$menu = $menus->getActive();

		if ($menu) {
			$this->params->def('page_heading', $this->params->get('page_title', $menu->title));
		} else {
			$this->params->def('page_heading', JText::_('JGLOBAL_ARTICLES'));
		}

		$title = $this->params->get('page_title', '');
		if (empty($title)) {
			$title = htmlspecialchars_decode($app->getCfg('sitename'));
		} else if ($app->getCfg('sitename_pagetitles', 0)) {
			$title = JText::sprintf('JPAGETITLE', htmlspecialchars_decode($app->getCfg('sitename')), $title);
		}
		if (isset($item->title) && $item->title != '') {
			$title = $title .' - ' .  $item->title;
		}
		$this->document->setTitle($title);
		
		if ($item->metadesc != '') {
			$this->document->setDescription($item->metadesc);
		} else if ($this->tmpl['gallerymetadesc'] != '') {
			$this->document->setDescription($this->tmpl['gallerymetadesc']);
		} else if ($this->params->get('menu-meta_description', '')) {
			$this->document->setDescription($this->params->get('menu-meta_description', ''));
		} 

		if ($item->metakey != '') {
			$this->document->setMetadata('keywords', $item->metakey);
		} else if ($this->tmpl['gallerymetakey'] != '') {
			$this->document->setMetadata('keywords', $this->tmpl['gallerymetakey']);
		} else if ($this->params->get('menu-meta_keywords', '')) {
			$this->document->setMetadata('keywords', $this->params->get('menu-meta_keywords', ''));
		}

		if ($app->getCfg('MetaTitle') == '1' && $this->params->get('menupage_title', '')) {
			$this->document->setMetaData('title', $this->params->get('page_title', ''));
		}

		/*if ($app->getCfg('MetaAuthor') == '1') {
			$this->document->setMetaData('author', $this->item->author);
		}

		/*$mdata = $this->item->metadata->toArray();
		foreach ($mdata as $k => $v) {
			if ($v) {
				$this->document->setMetadata($k, $v);
			}
		}*/
		
		// Breadcrumbs TODO (Add the whole tree)
		/*if (isset($this->category[0]->parentid)) {
			if ($this->category[0]->parentid == 1) {
			} else if ($this->category[0]->parentid > 0) {
				$pathway->addItem($this->category[0]->parenttitle, JRoute::_(PhocaDocumentationHelperRoute::getCategoryRoute($this->category[0]->parentid, $this->category[0]->parentalias)));
			}
		}

		if (!empty($this->category[0]->title)) {
			$pathway->addItem($this->category[0]->title);
		}*/
	}
}
