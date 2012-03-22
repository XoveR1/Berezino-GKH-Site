<?php
/**
 * @version		$Id: default_batch.php 21020 2011-03-27 06:52:01Z infograf768 $
 * @package		Joomla.Administrator
 * @subpackage	com_content
 * @copyright	Copyright (C) 2005 - 2011 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

// no direct access
defined('_JEXEC') or die;

$published = $this->state->get('filter.state');
?>
<fieldset class="batch">
	<legend><?php echo JText::_('COM_PHOCAGALLERY_BATCH_OPTIONS_IMAGES');?></legend>
	<?php echo JHtml::_('batch.access');?>

	<?php echo PhocaGalleryBatch::item($published); ?>

	<button type="submit" onclick="Joomla.submitbutton('phocagalleryimg.batch');">
		<?php echo JText::_('JGLOBAL_BATCH_PROCESS'); ?>
	</button>
	<button type="button" onclick="document.id('batch-category-id').value='';document.id('batch-access').value=''">
		<?php echo JText::_('JSEARCH_FILTER_CLEAR'); ?>
	</button>
</fieldset>
