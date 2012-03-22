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

// Create shortcuts to some parameters.
$params = $this->item->params;
?>
<article class="item-page<?php echo $this->pageclass_sfx ?>">
    <?php if ($params->get('show_title')) : ?>
        <h2>
            <?php echo $this->escape($this->item->title); ?>
        </h2>
    <?php endif; ?>

    <?php
    if (!$params->get('show_intro')) :
        echo $this->item->event->afterDisplayTitle;
    endif;
    ?>

    <?php echo $this->item->event->beforeDisplayContent; ?>

    <?php if (isset($this->item->toc)) : ?>
        <?php echo $this->item->toc; ?>
    <?php endif; ?>

    <?php echo $this->item->text; ?>

    <?php echo $this->item->event->afterDisplayContent; ?>
</article>
