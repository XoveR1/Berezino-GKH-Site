<?php defined('_JEXEC') or die('Restricted access');
echo '<div id="phocagallery" class="pg-detail-view'.$this->params->get( 'pageclass_sfx' ).'">';
if ($this->tmpl['backbutton'] != '') {
	echo $this->tmpl['backbutton'];
}

switch ($this->tmpl['detailwindow']) {
	case 4:
	case 7:
	case 9:
	case 10:
		$closeImage 	= $this->item->linkimage;
		$closeButton 	= '';
	break;
	default:
		$closeButton 	= '<td align="center">' . str_replace("%onclickclose%", $this->tmpl['detailwindowclose'], $this->item->closebutton). '</td>';
		$closeImage 	= '<a href="#" onclick="'.$this->tmpl['detailwindowclose'].'" style="margin:auto;padding:0">'.$this->item->linkimage.'</a>';
	break;

}

echo '<center style="padding-top:10px">'
	.'<table border="0" width="100%" cellpadding="0" cellspacing="0">'
	.'<tr>'
	.'<td colspan="6" align="center" valign="middle" height="'.$this->tmpl['largeheight'].'"'
	.' style="height:'.$this->tmpl['largeheight'].'px;vertical-align: middle;" >'
	.'<div id="phocaGalleryImageBox" style="width:'.$this->item->realimagewidth.'px;margin: auto;padding: 0;">'
	.$closeImage;
			
$titleDesc = '';
if ($this->tmpl['displaytitleindescription'] == 1) {
	$titleDesc .= $this->item->title;
	if ($this->item->description != '' && $titleDesc != '') {
		$titleDesc .= ' - ';
	}
}
			
// Lightbox Description
if ($this->tmpl['displaydescriptiondetail'] == 2 && (!empty($this->item->description) || !empty($titleDesc))){

	echo '<div id="description-msg" style="background:'.$this->tmpl['descriptionlightboxbgcolor'].'">'
    .'<div id="description-text" style="background:'.$this->tmpl['descriptionlightboxbgcolor']
	.';color:'.$this->tmpl['descriptionlightboxfontcolor']
	.';font-size:'.$this->tmpl['descriptionlightboxfontsize'].'px">'
	//. $titleDesc . $this->item->description.'</div></div>';
	.(JHTML::_('content.prepare', $titleDesc . $this->item->description)).'</div></div>';
}

echo '</div>'
	 .'</td>'
	 .'</tr>';
	
echo '<tr><td colspan="6"><div style="padding:0;margin:0;height:3px;font-size:0px;">&nbsp;</div></td></tr>';
// Standard Description
if ($this->tmpl['displaydescriptiondetail'] == 1) {
	echo '<tr>'
	.'<td colspan="6" align="left" valign="top" height="'.$this->tmpl['descriptiondetailheight'].'">'
	.'<div style="font-size:'.$this->tmpl['fontsizedesc'].'px;'
	.'height:'.$this->tmpl['descriptiondetailheight'].'px;padding:0 20px 0 20px;'
	.'color:'. $this->tmpl['fontcolordesc'].';margin:0;padding:0">'
	//. $titleDesc . $this->item->description . '</div>'
	.(JHTML::_('content.prepare', $titleDesc . $this->item->description)). '</div>'
	.'</td>'
	.'</tr>';
}

if ($this->tmpl['detailbuttons'] == 1){
	echo '<tr>'
	.'<td align="left" width="30%" style="padding-left:48px">'.$this->item->prevbutton.'</td>'
	.'<td align="center">'.$this->item->slideshowbutton.'</td>'
	.'<td align="center">'.str_replace("%onclickreload%", $this->tmpl['detailwindowreload'], $this->item->reloadbutton).'</td>'
	. $closeButton
	.'<td align="right" width="30%" style="padding-right:48px">'.$this->item->nextbutton.'</td>'
	.'</tr>';
}

echo '</table></center>';
echo $this->loadTemplate('rating');
// Tags
if ($this->tmpl['displaying_tags_output'] != '') {
	echo '<div class="pg-detail-tags">'.$this->tmpl['displaying_tags_output'].'</div>';
}
if ($this->tmpl['detailwindow'] == 7) {
	
	if (PhocaGalleryExtension::getExtensionInfo('com_jcomments') == 1 && $this->tmpl['externalcommentsystem'] == 1) {
		include_once(JPATH_BASE.DS.'components'.DS.'com_jcomments'.DS.'jcomments.php');
		echo JComments::showComments(  $this->item->id, 'com_phocagallery_images', JText::_('PHOCAGALLERY_IMAGE') .' '. $this->item->title);
	}
	echo PhocaGalleryRenderFront::renderInfo();
}
echo '</div>';
echo '<div id="phocaGallerySlideshowC" style="display:none"></div>';
?>