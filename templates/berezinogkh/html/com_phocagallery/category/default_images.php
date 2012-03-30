<?php

defined('_JEXEC') or die('Restricted access');
// - - - - - - - - - - 
// Images
// - - - - - - - - - -

if (!empty($this->items)) {
    foreach ($this->items as $key => $value) {

        if ($this->checkRights == 1) {
            // USER RIGHT - Access of categories (if file is included in some not accessed category) - - - - -
            // ACCESS is handled in SQL query, ACCESS USER ID is handled here (specific users)
            $rightDisplay = 0;
            if (isset($value->catid) && isset($value->cataccessuserid) && isset($value->cataccess)) {
                $rightDisplay = PhocaGalleryAccess::getUserRight('accessuserid', $value->cataccessuserid, $value->cataccess, $this->tmpl['user']->authorisedLevels(), $this->tmpl['user']->get('id', 0), 0);
            }
            // - - - - - - - - - - - - - - - - - - - - - -
        } else {
            $rightDisplay = 1;
        }

        // Display back button to categories list
        if ($value->item_type == 'categorieslist') {
            $rightDisplay = 1;
        }

        if ($rightDisplay == 1) {

            // BOX Start
            echo "\n\n";
            echo '<li style="height:' . $this->tmpl['imageheight']['size'] . 'px;width:' . $this->tmpl['imagewidth']['size'] . 'px;margin:auto;">' . "\n";

            // A Start
            echo '<a class="' . $value->button->methodname . '"';

            if ($value->type == 2) {
                if ($value->overlib == 0) {
                    echo ' title="' . $value->odesctitletag . '"';
                }
            }
            echo ' href="' . $value->link . '"';

            // Correct size for external Image (Picasa) - subcategory
            $extImage = false;
            if (isset($value->extid)) {
                $extImage = PhocaGalleryImage::isExtImage($value->extid);
            }
            if ($extImage && isset($value->extw) && isset($value->exth)) {
                $correctImageRes = PhocaGalleryPicasa::correctSizeWithRate($value->extw, $value->exth, $this->tmpl['picasa_correct_width_m'], $this->tmpl['picasa_correct_height_m']);
            }

            // Image Box (image, category, folder)
            if ($value->type == 2) {

                // Render OnClick, Rel
                echo PhocaGalleryRenderFront::renderAAttribute($this->tmpl['detailwindow'], $value->button->options, $value->linkorig, $this->tmpl['highslideonclick'], '', $value->linknr, $value->catalias);

                // SWITCH OR OVERLIB 
                if ($this->tmpl['switchimage'] == 1) {
                    echo PhocaGalleryRenderFront::renderASwitch($this->tmpl['switchwidth'], $this->tmpl['switchheight'], $this->tmpl['switchfixedsize'], $value->extwswitch, $value->exthswitch, $value->extl, $value->linkthumbnailpath);
                } else {
                    echo $value->overlib_value;
                }
                echo ' >'; // A End
                // IMG Start
                if ($extImage) {
                    echo JHTML::_('image', $value->extm, $value->altvalue, array('width' => $correctImageRes['width'], 'height' => $correctImageRes['height'], 'class' => 'pg-image'));
                } else {
                    echo JHTML::_('image.site', $value->linkthumbnailpath, '', '', '', $value->oimgalt, $value->ooverlibclass);
                }

                if ($value->type == 2 && $value->enable_cooliris == 1) {
                    if ($extImage) {
                        echo '<span class="mbf-item">#phocagallerypiclens ' . $value->catid . '-phocagallerypiclenscode-' . $value->extid . '</span>';
                    } else {
                        echo '<span class="mbf-item">#phocagallerypiclens ' . $value->catid . '-phocagallerypiclenscode-' . $value->filename . '</span>';
                    }
                }
                // IMG End
            } else if ($value->type == 1) {
                // Other than image
                // A End
                echo ' >';
                // IMG Start
                if ($extImage && isset($value->extm) && isset($correctImageRes['width']) && isset($correctImageRes['width'])) {

                    echo JHTML::_('image', $value->extm, '', array('width' => $correctImageRes['width'], 'height' => $correctImageRes['height'], 'class' => PhocaGalleryRenderFront::renderImageClass($value->extm)));
                } else {
                    echo JHTML::_('image.site', $value->linkthumbnailpath, '', '', '', '', array('class' => PhocaGalleryRenderFront::renderImageClass($value->linkthumbnailpath)));
                }
                // IMG END
            } else {
                // Other than image
                // A End
                echo ' >';
                // IMG Start
                if ($extImage && isset($value->extm) && isset($correctImageRes['width']) && isset($correctImageRes['width'])) {
                    echo JHTML::_('image', $value->extm, '', array('width' => $correctImageRes['width'], 'height' => $correctImageRes['height']));
                } else {
                    echo JHTML::_('image.site', $value->linkthumbnailpath, '', '', '', '');
                }
                // IMG END
            } // if type 2 else type 0, 1 (image, category, folder)
            // A CLOSE
            echo '</a>';

            echo "\n" . '</li>' . "\n";
            // BOX End
        }
    }
} else {
    // Will be not displayed
    //echo JText::_('COM_PHOCAGALLERY_THERE_IS_NO_IMAGE');
}