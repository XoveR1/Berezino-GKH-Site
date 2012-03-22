<?php

// No direct access to this file
defined('_JEXEC') or die('Restricted access');

// import Joomla controller library
jimport('joomla.application.component.controller');

/**
 * Feedback Controller
 *
 */
class FeedbackController extends JController {

    /**
     * Overwriting JController display method
     *
     * @param bool $cachable - automaticaly cache or no
     */
    function display($cachable = false) {
        // set default view if not set
        JRequest::setVar('task', JRequest::getCmd('task', 'feedback.display'));

        // call parent behavior
        parent::display($cachable);
    }

}
