<?php defined('_JEXEC') or die('Restricted access');

echo '<div id="phocagallery-category-creating">'

?><fieldset>
	<legend><?php echo JText::_('COM_PHOCAGALLERY_CREATE'); ?></legend>
	<form action="<?php echo $this->tmpl['action'];?>" name="phocagallerycreatesubcatform" id="phocagallery-create-subcat-form" method="post" >	<table>		<tr>		<td><strong><?php echo JText::_('COM_PHOCAGALLERY_SUBCATEGORY');?>:</strong></td>		<td><input type="text" id="subcategoryname" name="subcategoryname" maxlength="255" class="comment-input" value="" /></td>	</tr>		<tr>		<td><strong><?php echo JText::_( 'COM_PHOCAGALLERY_DESCRIPTION' ); ?>:</strong></td>		<td><textarea id="phocagallery-create-subcat-description" name="phocagallerycreatesubcatdescription" onkeyup="countCharsCreateSubCat();" cols="30" rows="10" class="comment-input"></textarea></td>	</tr>					<tr>		<td>&nbsp;</td>		<td><?php echo JText::_('COM_PHOCAGALLERY_CHARACTERS_WRITTEN');?> <input name="phocagallerycreatesubcatcountin" value="0" readonly="readonly" class="comment-input2" /> <?php echo JText::_('COM_PHOCAGALLERY_AND_LEFT_FOR_DESCRIPTION');?> <input name="phocagallerycreatesubcatcountleft" value="<?php echo $this->tmpl['maxcreatecatchar'];?>" readonly="readonly" class="comment-input2" />		</td>	</tr>					<tr>		<td>&nbsp;</td>		<td align="right"><input type="submit" onclick="return(checkCreateSubCatForm());" id="phocagallerycreatesubcatsubmit" value="<?php echo JText::_('COM_PHOCAGALLERY_CREATE_SUBCATEGORY'); ?>"/></td>	</tr></table>

	<?php echo JHTML::_( 'form.token' ); ?><input type="hidden" name="task" value="createsubcategory"/><input type="hidden" name="controller" value="category" /><input type="hidden" name="view" value="category"/><input type="hidden" name="tab" value="<?php echo $this->tmpl['currenttab']['createsubcategory'];?>" /><input type="hidden" name="Itemid" value="<?php echo JRequest::getVar('Itemid', 0, '', 'int') ?>"/><input type="hidden" name="catid" value="<?php echo $this->category->slug ?>"/><input type="hidden" name="parentcategoryid" value="<?php echo $this->category->slug ?>"/></form>

</fieldset><?php
echo '</div>';
?>	
