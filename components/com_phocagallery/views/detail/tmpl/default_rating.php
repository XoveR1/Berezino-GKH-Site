<?php defined('_JEXEC') or die('Restricted access');
$amp = PhocaGalleryUtils::setQuestionmarkOrAmp($this->tmpl['action']);

if ((int)$this->tmpl['displayratingimg'] == 1) {
	// Leave message for already voted images
	$vote = JRequest::getVar('vote', 0, '', 'int');
	if ($vote == 1) {
		$voteMsg = JText::_('COM_PHOCAGALLERY_ALREADY_RATED_IMG_THANKS');
	} else {
		$voteMsg = JText::_('COM_PHOCAGALLERY_ALREADY_RATE_IMG');
	}

	echo '<table style="text-align:left" border="0">'
		.'<tr>'
		.'<td><strong>' . JText::_('COM_PHOCAGALLERY_RATING'). '</strong>: ' . $this->tmpl['votesaverageimg'] .' / '.$this->tmpl['votescountimg'] . ' ' . JText::_($this->tmpl['votestextimg']). '&nbsp;&nbsp;</td>';
		
	if ($this->tmpl['alreadyratedimg']) {
		echo '<td style="text-align:left"><ul class="star-rating">'
			.'<li class="current-rating" style="width:'.$this->tmpl['voteswidthimg'].'px"></li>'
			.'<li><span class="star1"></span></li>';

		for ($i = 2;$i < 6;$i++) {
			echo '<li><span class="stars'.$i.'"></span></li>';
		}
		echo '</ul></td>'
			.'<td style="text-align:left" colspan="4">&nbsp;&nbsp;'.$voteMsg.'</td></tr>';
			
	} else if ($this->tmpl['notregisteredimg']) {

		echo '<td style="text-align:left"><ul class="star-rating">'
			.'<li class="current-rating" style="width:'.$this->tmpl['voteswidthimg'].'px"></li>'
			.'<li><span class="star1"></span></li>';

		for ($i = 2;$i < 6;$i++) {
			echo '<li><span class="stars'.$i.'"></span></li>';
		}
		echo '</ul></td>'
			.'<td style="text-align:left" colspan="4">&nbsp;&nbsp;'.JText::_('COM_PHOCAGALLERY_COMMENT_ONLY_REGISTERED_LOGGED_RATE_IMAGE').'</td></tr>';
			
	} else {
		
		echo '<td style="text-align:left"><ul class="star-rating">'
			.'<li class="current-rating" style="width:'.$this->tmpl['voteswidthimg'].'px"></li>'
			//.'<li><a href="'.$this->tmpl['action'].$amp.'controller=detail&task=rate&rating=1" title="1 '. JText::_('COM_PHOCAGALLERY_STAR_OUT_OF').' 5" class="star1">1</a></li>';
		
			.'<li><a href="'.$this->tmpl['action'].$amp.'controller=detail&task=rate&rating=1" title="'. JText::sprintf('COM_PHOCAGALLERY_STAR_OUT_OF', 1, 5). '" class="star1">1</a></li>'; 
		
		for ($i = 2;$i < 6;$i++) {
			//echo '<li><a href="'.$this->tmpl['action'].$amp.'controller=detail&task=rate&rating='.$i.'" title="'.$i.' '. JText::_('COM_PHOCAGALLERY_STARS_OUT_OF').' 5" class="stars'.$i.'">'.$i.'</a></li>';
			
			echo '<li><a href="'.$this->tmpl['action'].$amp.'controller=detail&task=rate&rating='.$i.'" title="'.JText::sprintf('COM_PHOCAGALLERY_STARS_OUT_OF', $i, 5). '" class="stars'.$i.'">'.$i.'</a></li>';
		}
		echo '</ul></td></tr>';
	}
	echo '</table>';
}
?>
