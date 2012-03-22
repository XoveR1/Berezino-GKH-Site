<?php

// No direct access to this file
defined('_JEXEC') or die('Restricted access');

// import Joomla view library
jimport('joomla.application.component.view');

/**
 * Feedback view class
 *
 */
class FeedbackViewFeedback extends JView {
    protected $data;
    protected $form;
    protected $params;
    protected $state;

    /**
     * Overwriting JView display method
     *
     * @param string $tpl - name of tpl for load
     */
    function display($tpl = null) {
        $this->data = $this->get('Data');
        $this->form = $this->get('Form');
        $this->state = $this->get('State');
        $this->params = $this->state->get('params');
        $config = JComponentHelper::getParams('com_messages');
        $this->view->desc_text = $config->getValue('desc_text');
        // Check for errors.
        if (count($errors = $this->get('Errors'))) {
            JError::raiseError(500, implode('<br />', $errors));
            return false;
        }
        // Display the view
        parent::display($tpl);
    }

}
