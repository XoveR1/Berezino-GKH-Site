<?php
/**
 * @package		Joomla.Site
 * @subpackage	com_search
 * @copyright	Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */
// no direct access
defined('_JEXEC') or die;
?>

<div class="news-block">
    <?php foreach ($this->results as $result) : ?>
        <article>
            <h3>
                <?php echo $this->pagination->limitstart + $result->count . '. '; ?>
                <?php if ($result->href) : ?>
                    <a href="<?php echo JRoute::_($result->href); ?>"<?php if ($result->browsernav == 1) : ?> target="_blank"<?php endif; ?>>
                        <?php echo $this->escape($result->title); ?>
                    </a>
                <?php else: ?>
                    <?php echo $this->escape($result->title); ?>
                <?php endif; ?>
            </h3>
            <p><?php echo $result->text; ?></p>
        </article>
    <?php endforeach; ?>
</div>
<?php echo $this->pagination->getPagesLinks(); ?>
