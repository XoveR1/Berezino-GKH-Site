<?php
// No direct access.
defined('_JEXEC') or die;

// Note. It is important to remove spaces between elements.
?>
<?php if ($module->showtitle): ?>
    <div class="module <?= $params->get('class_sfx') ?>">
        <h3><?= $module->title ?></h3>
    <?php endif; ?>
    <menu>
        <?php
        $tag = '';
        if ($params->get('tag_id') != NULL) {
            $tag = $params->get('tag_id') . '';
            echo ' id="' . $tag . '"';
        }
        ?>
        <?php
        foreach ($list as $i => &$item) :
            $class = 'item-' . $item->id;
            if ($item->id == $active_id) {
                $class .= ' current';
            }

            if (in_array($item->id, $path)) {
                $class .= ' active';
            } elseif ($item->type == 'alias') {
                $aliasToId = $item->params->get('aliasoptions');
                if (count($path) > 0 && $aliasToId == $path[count($path) - 1]) {
                    $class .= ' active';
                } elseif (in_array($aliasToId, $path)) {
                    $class .= ' alias-parent-active';
                }
            }

            if ($item->deeper) {
                $class .= ' deeper';
            }

            if ($item->parent) {
                $class .= ' parent';
            }

            if (!empty($class)) {
                $class = ' class="' . trim($class) . '"';
            }

            echo '<li' . $class . '>';

            // Render the menu item.
            switch ($item->type) :
                case 'separator':
                case 'url':
                case 'component':
                    require JModuleHelper::getLayoutPath('mod_menu', 'default_' . $item->type);
                    break;

                default:
                    require JModuleHelper::getLayoutPath('mod_menu', 'default_url');
                    break;
            endswitch;

            // The next item is deeper.
            if ($item->deeper) {
                echo '<ul>';
            }
            // The next item is shallower.
            elseif ($item->shallower) {
                echo '</li>';
                echo str_repeat('</ul></li>', $item->level_diff);
            }
            // The next item is on the same level.
            else {
                echo '</li>';
            }
        endforeach;
        ?>
    </menu>
        <?php if ($module->showtitle): ?>
    </div>
    <?php endif; ?>
