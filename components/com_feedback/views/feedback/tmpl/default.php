<?php 
/**
 * Defalt template for feedback view
 *
 * @version	$Id: default.php 20197 2011-02-15 10:00:00Z vicheslav $
 * @package	Entropia Investment Fund System.Site
 * @subpackage	com_feedback
 * @copyright	Copyright (C) 2011 Open Source Matters, Inc. All rights reserved.
 * @license	GNU General Public License version 2 or later; see LICENSE.txt
 */
$fields = $this->form->getFieldset();
?>

<div class="profile-edit">
    <form id="feedback-form" action="<?php echo JRoute::_('index.php?option=com_feedback&task=feedback.post'); ?>" method="post" class="form-validate">
            <fieldset class="border-fieldset">
                    <legend><?= JText::_('FEEDBACK'); ?></legend>
                    <dl>
                    <?php foreach ($fields as $field):?>
                            <?php if ($field->hidden):?>
                                    <?php echo $field->input;?>
                            <?php else:?>
                                    <dt><?= $field->label; ?></dt>
                                    <dd><?= $field->input; ?></dd>
                            <?php endif;?>
                    <?php endforeach;?>
                    </dl>
            </fieldset>
            <div>
                    <button type="submit" class="validate"><span><?php echo JText::_('JSUBMIT'); ?></span></button>
                    <input type="hidden" name="option" value="com_feedback" />
                    <input type="hidden" name="task" value="feedback.post" />
                    <?php echo JHtml::_('form.token'); ?>
            </div>
    </form>
</div>