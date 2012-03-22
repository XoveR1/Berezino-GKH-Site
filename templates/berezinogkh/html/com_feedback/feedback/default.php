<?php
$fields = $this->form->getFieldset();
?>
<h2>Обратная связь</h2>
<form id="feedback-form" class="vertical-form feedback" action="<?php echo JRoute::_('index.php?option=com_feedback&task=feedback.post'); ?>" method="post"> 
    <dl>
        <?php foreach ($fields as $field): ?>
            <?php if ($field->hidden): ?>
                <?php echo $field->input; ?>
            <?php else: ?>
                <dt><?= $field->label; ?></dt>
                <dd><?= $field->input; ?></dd>
            <?php endif; ?>
        <?php endforeach; ?>
    </dl>
    <div class="clear"></div>
    <button type="submit"  class="button button-green">
        <span><?php echo JText::_('JSUBMIT'); ?></span>
    </button>
    <input type="hidden" name="option" value="com_feedback" />
    <input type="hidden" name="task" value="feedback.post" />
    <?php echo JHtml::_('form.token'); ?>
</form>