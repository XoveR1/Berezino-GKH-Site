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
defined( '_JEXEC' ) or die( 'Restricted access' );

class PhocaGalleryRenderProcess
{	
	public $stopThumbnailsCreating = null; // display the posibility (link) to disable the thumbnails creating
	public $headerAdded			= null;// HTML Header was added by Stop Thumbnails creating, don't add it into a site again;


	function getProcessPage ( $filename, $thumbInfo, $refresh_url, $errorMsg = '' ) {
		
		$countImg 		= (int)JRequest::getVar( 'countimg', 0, 'get', 'INT' );
		$currentImg 	= (int)JRequest::getVar( 'currentimg',0, 'get','INT' );
		
		if ($currentImg == 0) {
			$currentImg = 1;
		}
		$nextImg = $currentImg + 1;
		
		if (!isset($this->headerAdded) || (isset($this->headerAdded) && $this->headerAdded == 0)) {
			
			echo '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">' . "\n";
			echo '<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-en" lang="en-en" dir="ltr" >'. "\n";
			echo '<head>'. "\n";
			echo '<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />'. "\n\n";
			echo '<title>'.JText::_( 'COM_PHOCAGALLERY_THUMBNAIL_GENERATING').'</title>'. "\n";
			echo '<link rel="stylesheet" href="'.JURI::base(true).'/components/com_phocagallery/assets/phocagallery.css" type="text/css" />';
			echo '</head>'. "\n";
			echo '<body>'. "\n";
			
		}
		echo '<center><div style="width:70%;border:5px solid #FFE699; margin-top:30px;font-family: sans-serif, Arial;font-weight:normal;color:#666;font-size:14px;padding:10px">';
		echo '<span>'. JText::_( 'COM_PHOCAGALLERY_THUMBNAIL_GENERATING_WAIT' ) . '</span>';
		
		if ( $errorMsg == '' ) {
			echo '<p>' .JText::_( 'COM_PHOCAGALLERY_THUMBNAIL_GENERATING' ) 
			.' <span style="color:#0066cc;">'. $filename . '</span>' 
			.' ... <b style="color:#009900">'.JText::_( 'COM_PHOCAGALLERY_OK' ).'</b><br />'
			.'(<span style="color:#0066cc;">' . $thumbInfo . '</span>)</p>';
		} else {
			echo '<p>' .JText::_( 'COM_PHOCAGALLERY_THUMBNAIL_GENERATING' ) 
			.' <span style="color:#0066cc;padding:0;margin:0"> '. $filename . '</span>' 
			.' ... <b style="color:#fc0000">'.JText::_( 'COM_PHOCAGALLERY_ERROR' ).'</b><br />'
			.'(<span style="color:#0066cc;">' . $thumbInfo . '</span>)</p>';
			
		}
	
		if ($countImg == 0) {
			// BEGIN ---------------------------------------------------------------------------
			echo '<div>'. JHTML::_('image', '/components/com_phocagallery/assets/images/icon-loading.gif', JText::_('COM_PHOCAGALLERY_LOADING') ) .'</div><div>&nbsp;</div><div>'. JText::_('COM_PHOCAGALLERY_REBUILDING_PROCESS_WAIT') . '</div>';
			// END -----------------------------------------------------------------------------
		} else {
			// Creating thumbnails info
			$per = 0; // display percents
			if ($countImg > 0) {
				$per = round(($currentImg / $countImg)*100, 0);
			}
			$perCSS = ($per * 400/100) - 400;
			$bgCSS = 'background: #e6e6e6 url(\''.JURI::base(true).'/components/com_phocagallery/assets/images/process2.png\') '.$perCSS.'px 0 repeat-y;';
			
			// BEGIN -----------------------------------------------------------------------
			//echo '<p>' . JText::_('COM_PHOCAGALLERY_GENERATING'). ': <span style="color:#0066cc">'. $currentImg .'</span> '.JText::_('COM_PHOCAGALLERY_FROM'). ' <span style="color:#0066cc">'. $countImg .'</span> '.JText::_('COM_PHOCAGALLERY_THUMBNAIL_S').'</p>';
			
			echo '<p>' . JText::sprintf('COM_PHOCAGALLERY_GENERATING_FROM_THUMBNAIL_S', '<span style="color:#0066cc">'. $currentImg .'</span> ', ' <span style="color:#0066cc">'. $countImg .'</span> ').'</p>';
			
			//echo '<p>'.$per.' &#37;</p>';
			//echo '<div style="width:400px;height:20px;font-size:20px;border-top:2px solid #666;border-left:2px solid #666;border-bottom:2px solid #ccc;border-right:2px solid #ccc;'.$bgCSS.'"><span style="font-size:10px;font-weight:bold">'.$per.' &#37;</div>';
			
			echo '<div style="width:400px;height:20px;font-size:20px;border: 1px solid #ccc; vertical-align: middle;display: inline-block; -moz-border-radius: 2px; -webkit-border-radius: 2px; border-radius: 2px;'.$bgCSS.'"><div style="font-size:12px;font-weight:bold;color: #777;margin-top:2px;">'.$per.' &#37;</div></div>';
			// END -------------------------------------------------------------------------
		}

		if ( $errorMsg != '' ) {
		
			$errorMessage = '';
			switch ($errorMsg) {
				case 'ErrorNotSupportedImage':
				$errorMessage = JText::_('COM_PHOCAGALLERY_ERROR_NOTSUPPORTEDIMAGE');
				break;
				
				case 'ErrorNoJPGFunction':
				$errorMessage = JText::_('COM_PHOCAGALLERY_ERROR_NOJPGFUNCTION');
				break;
				
				case 'ErrorNoPNGFunction':
				$errorMessage = JText::_('COM_PHOCAGALLERY_ERROR_NOPNGFUNCTION');
				break;
				
				case 'ErrorNoGIFFunction':
				$errorMessage = JText::_('COM_PHOCAGALLERY_ERROR_NOGIFFUNCTION');
				break;
				
				case 'ErrorNoWBMPFunction':
				$errorMessage = JText::_('COM_PHOCAGALLERY_ERROR_NOWBMPFUNCTION');
				break;
				
				case 'ErrorWriteFile':
				$errorMessage = JText::_('COM_PHOCAGALLERY_ERROR_WRITEFILE');
				break;
				
				case 'ErrorFileOriginalNotExists':
				$errorMessage = JText::_('COM_PHOCAGALLERY_ERROR_FILEORIGINALNOTEXISTS');
				break;

				case 'ErrorCreatingFolder':
				$errorMessage = JText::_('COM_PHOCAGALLERY_ERROR_CREATINGFOLDER');
				break;
				
				case 'ErrorNoImageCreateTruecolor':
				$errorMessage = JText::_('COM_PHOCAGALLERY_ERROR_NOIMAGECREATETRUECOLOR');
				break;
				
				case 'Error1':
				case 'Error2':
				case 'Error3':
				case 'Error4':
				case 'Error5':
				Default:
					$errorMessage = JText::_('COM_PHOCAGALLERY_ERROR_WHILECREATINGTHUMB') . ' ('.$errorMsg.')';
				break;	
			}
			
			$view 		= JRequest::setVar( 'view' );

			//we are in whole window - not in modal box
			if ($view != 'phocagalleryi' && $view != 'phocagalleryd') {
			
				echo '<div style="text-align:left;margin: 10px 5px">';
				echo '<table border="0" cellpadding="7"><tr><td>'.JText::_('COM_PHOCAGALLERY_ERROR_MESSAGE').':</td><td><span style="color:#fc0000">'.$errorMessage.'</span></td></tr>';
				
				echo '<tr><td colspan="1" rowspan="4" valign="top" >'.JText::_('COM_PHOCAGALLERY_WHAT_TO_DO_NOW').' :</td>';
				
				echo '<td>- ' .JText::_( 'COM_PHOCAGALLERY_SOLUTION_BEGIN' ).' <br /><ul><li>'.JText::_( 'COM_PHOCAGALLERY_SOLUTION_IMAGE' ).'</li><li>'.JText::_( 'COM_PHOCAGALLERY_SOLUTION_GD' ).'</li><li>'.JText::_( 'COM_PHOCAGALLERY_SOLUTION_PERMISSION' ).'</li></ul>'.JText::_( 'COM_PHOCAGALLERY_SOLUTION_END' ).'<br /> <a href="'.$refresh_url.'&countimg='.$countImg.'&currentimg='.$currentImg .'">' .JText::_( 'COM_PHOCAGALLERY_BACK_PHOCA_GALLERY' ).'</a><hr /></td></tr>';
				
				echo '<tr><td>- ' .JText::_( 'COM_PHOCAGALLERY_DISABLE_CREATING_THUMBS_SOLUTION' ).' <br /> <a href="index.php?option=com_phocagallery&task=phocagalleryimg.disablethumbs">' .JText::_( 'COM_PHOCAGALLERY_BACK_DISABLE_THUMBS_GENERATING' ).'</a> <br />'.JText::_( 'COM_PHOCAGALLERY_ENABLE_THUMBS_GENERATING_OPTIONS' ).'<hr /></td></tr>';
				
				echo '<tr><td>- ' .JText::_( 'COM_PHOCAGALLERY_MEDIA_MANAGER_SOLUTION' ).' <br /> <a href="index.php?option=com_media">' .JText::_( 'COM_PHOCAGALLERY_MEDIA_MANAGER_LINK' ).'</a><hr /></td></tr>';
				
				echo '<tr><td>- <a href="http://www.phoca.cz/documentation/" target="_blank">' .JText::_( 'COM_PHOCAGALLERY_GO_TO_PHOCA_GALLERY_USER_MANUAL' ).'</a></td></tr>';
				
				echo '</table>';
				echo '</div>';

			}
			else //we are in modal box
			{
				echo '<div style="text-align:left">';
				echo '<table border="0" cellpadding="3"
			cellspacing="3"><tr><td>'.JText::_('COM_PHOCAGALLERY_ERROR_MESSAGE').':</td><td><span style="color:#fc0000">'.$errorMessage.'</span></td></tr>';
				
				echo '<tr><td colspan="1" rowspan="3" valign="top">'.JText::_('COM_PHOCAGALLERY_WHAT_TO_DO_NOW').' :</td>';
				
				echo '<td>- ' .JText::_( 'COM_PHOCAGALLERY_SOLUTION_BEGIN' ).' <br /><ul><li>'.JText::_( 'PG COM_PHOCAGALLERY_SOLUTION_IMAGE' ).'</li><li>'.JText::_( 'COM_PHOCAGALLERY_SOLUTION_GD' ).'</li><li>'.JText::_( 'COM_PHOCAGALLERY_SOLUTION_PERMISSION' ).'</li></ul>'.JText::_( 'COM_PHOCAGALLERY_SOLUTION_END' ).'<br /> <a href="'.$refresh_url.'&countimg='.$countImg.'&currentimg='.$currentImg .'">' .JText::_( 'COM_PHOCAGALLERY_BACK_PHOCA_GALLERY' ).'</a><hr /></td></tr>';
				
				echo '<td>- ' .JText::_( 'COM_PHOCAGALLERY_NO_SOLUTION' ).' <br /> <a href="#" onclick="SqueezeBox.close();">' .JText::_( 'COM_PHOCAGALLERY_BACK_PHOCA_GALLERY' ).'</a></td></tr>';
				
				echo '</table>';
				echo '</div>';
			}
			
			echo '</div></center></body></html>';
			exit;
		}
		
		if ($countImg ==  $currentImg || $currentImg > $countImg) {
			
			/*$imageSid	= false;
			$imageSid 	= preg_match("/imagesid/i", $refresh_url);
			if (!$imageSid) {
				$refresh_url = $refresh_url . '&imagesid='.md5(time());
			}*/
			
			echo '<meta http-equiv="refresh" content="1;url='.$refresh_url.'" />';
		} else {
			echo '<meta http-equiv="refresh" content="0;url='.$refresh_url.'&countimg='.$countImg.'&currentimg='.$nextImg.'" />';
		}
		
		echo '</div></center></body></html>';
		exit;
	}
	
	
	function displayStopThumbnailsCreating() {
		
		// 1 ... link was displayed
		// 0 ... display the link "Stop ThumbnailsCreation
		$view 		= JRequest::setVar( 'view' );

		//we are in whole window - not in modal box
		if ($view != 'phocagalleryi' && $view != 'phocagalleryd') {
		
			if (!isset($this->stopThumbnailsCreating) || (isset($this->stopThumbnailsCreating) && $this->stopThumbnailsCreating == 0)) {
				// Add stop thumbnails creation in case e.g. of Fatal Error which returns 'ImageCreateFromJPEG'
				// test utf-8 ä, ö, ü, č, ř, ž, ß
				$stopText = '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">' . "\n";
				$stopText .= '<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-en" lang="en-en" dir="ltr" >'. "\n";
				$stopText .= '<head>'. "\n";
				$stopText .= '<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />'. "\n\n";
				$stopText .= '<title>'.JText::_( 'COM_PHOCAGALLERY_THUMBNAIL_GENERATING').'</title>'. "\n";
				$stopText .= '</head>'. "\n";
				$stopText .= '<body>'. "\n";
				
				
				$stopText .= '<div style="text-align:right;padding:10px"><a style="font-family: sans-serif, Arial;font-weight:bold;color:#fc0000;font-size:14px;" href="index.php?option=com_phocagallery&task=phocagalleryimg.disablethumbs">' .JText::_( 'COM_PHOCAGALLERY_STOP_THUMBNAIL_GENERATION' ).'</a></div>';
				$this->stopThumbnailsCreating = 1;// it was added to the site, don't add the same code (because there are 3 thumnails - small, medium, large)
				$this->headerAdded = 1;
				return $stopText;
				
			} else {
				return '';
			}
		} else {
			$this->stopThumbnailsCreating = 1;
		}
	}			
}
?>