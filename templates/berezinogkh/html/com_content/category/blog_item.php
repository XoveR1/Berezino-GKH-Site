<?php
/**
 * @package		Joomla.Site
 * @subpackage	com_content
 * @copyright	Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */
// no direct access
defined('_JEXEC') or die;

// Create a shortcut for params.
$params = &$this->item->params;
$images = json_decode($this->item->images);
$canEdit = $this->item->params->get('access-edit');
JHtml::addIncludePath(JPATH_COMPONENT . '/helpers/html');
JHtml::_('behavior.tooltip');
JHtml::core();
?>
<article>
<?php if ($params->get('show_title')) : ?>
        <h2>
        <?php if ($params->get('link_titles') && $params->get('access-view')) : ?>
                <a href="<?php echo JRoute::_(ContentHelperRoute::getArticleRoute($this->item->slug, $this->item->catid)); ?>">
                <?php echo $this->escape($this->item->title); ?></a>
                <?php else : ?>
                    <?php echo $this->escape($this->item->title); ?>
            <?php endif; ?>
        </h2>
        <?php endif; ?>

    <?php if ($params->get('show_create_date')) : ?>
        <time><?php echo JHtml::_('date', $this->item->created, JText::_('DATE_FORMAT_LC2')); ?></time>
    <?php endif; ?>

    <?php if (!$params->get('show_intro')) : ?>
        <?php echo $this->item->event->afterDisplayTitle; ?>
    <?php endif; ?>

    <?php echo $this->item->event->beforeDisplayContent; ?>

    <?php echo $this->item->introtext; ?>

    <?php
    if ($params->get('show_readmore') && $this->item->readmore) :
        if ($params->get('access-view')) :
            $link = JRoute::_(ContentHelperRoute::getArticleRoute($this->item->slug, $this->item->catid));
        else :
            $menu = JFactory::getApplication()->getMenu();
            $active = $menu->getActive();
            $itemId = $active->id;
            $link1 = JRoute::_('index.php?option=com_users&view=login&Itemid=' . $itemId);
            $returnURL = JRoute::_(ContentHelperRoute::getArticleRoute($this->item->slug, $this->item->catid));
            $link = new JURI($link1);
            $link->setVar('return', base64_encode($returnURL));
        endif;
        ?>
        <p class="readmore">
            <a href="<?php echo $link; ?>">Читать далее...</a>
        </p>
    <?php endif; ?>

<?php echo $this->item->event->afterDisplayContent; ?>
</article>
