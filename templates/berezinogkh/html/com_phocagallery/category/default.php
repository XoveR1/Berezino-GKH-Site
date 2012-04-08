<?php
defined('_JEXEC') or die('Restricted access');
?>
<article>
    <?php echo '<h2>' . $this->escape($this->category->title) . '</h2>'; ?>

    <div class="gallery">
        <ul>
            <?php echo $this->loadTemplate('images'); ?>
        </ul>
    </div>
</article>

