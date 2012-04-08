<?php
/**
 * @package		Joomla.Site
 * @subpackage	com_content
 * @copyright	Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */
// no direct access
defined('_JEXEC') or die;

JHtml::addIncludePath(JPATH_COMPONENT . '/helpers');
?>
<?php if ($this->params->get('show_page_heading', 1)) : ?>
    <h2>
        <?php echo $this->escape($this->params->get('page_heading')); ?>
    </h2>
<?php endif; ?>
<div class="<?php echo $this->pageclass_sfx; ?>">
    <?php $leadingcount = 0; ?>
    <?php if (!empty($this->lead_items)) : ?>
        <?php foreach ($this->lead_items as &$item) : ?>
            <?php
            $this->item = &$item;
            echo $this->loadTemplate('item');
            ?>
            <?php
            $leadingcount++;
            ?>
        <?php endforeach; ?>
    <?php endif; ?>
    <?php
    $introcount = (count($this->intro_items));
    $counter = 0;
    ?>
    <?php if (!empty($this->intro_items)) : ?>

        <?php foreach ($this->intro_items as $key => &$item) : ?>
            <?php
            $key = ($key - $leadingcount) + 1;
            $rowcount = ( ((int) $key - 1) % (int) $this->columns) + 1;
            $row = $counter / $this->columns;

            if ($rowcount == 1) :
                ?>
            <?php endif; ?>
            <?php
            $this->item = &$item;
            echo $this->loadTemplate('item');
            ?>
            <?php $counter++; ?>
            <?php if (($rowcount == $this->columns) or ($counter == $introcount)): ?>
            <?php endif; ?>
        <?php endforeach; ?>
    <?php endif; ?>
</div>