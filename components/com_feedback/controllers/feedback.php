<?php

// No direct access to this file
defined('_JEXEC') or die('Restricted access');

// import Joomla controller library
jimport('joomla.application.component.controllerform');

/**
 * Feedback Controller
 *
 */
class FeedbackControllerFeedback extends JControllerForm {

    /**
     * Overrided defult method of Controller class
     *
     * @param bool $cachable - automatic cache
     */
    public function display($cachable = false) {
        JRequest::setVar('view', 'feedback');
        parent::display($cachable);
    }

    /**
     * Method to post form data on administrator email.
     *
     * @return	void
     */
    public function post() {
        // Check for request forgeries.
        JRequest::checkToken() or jexit(JText::_('JINVALID_TOKEN'));

        // Initialise variables.
        $app = JFactory::getApplication();
        $model = $this->getModel();

        // Get the user data.
        $data = JRequest::getVar('jform', array(), 'post', 'array');

        // Validate the posted data.
        $form = $model->getForm();
        if (!$form) {
            JError::raiseError(500, $model->getError());
            return false;
        }

        // Validate the posted data.
        $res_data = $model->validate($form, $data);

        // Check for errors.
        if ($res_data === false) {
            // Get the validation messages.
            $errors = $model->getErrors();

            // Push up to three validation messages out to the user.
            for ($i = 0, $n = count($errors); $i < $n; $i++) {
                if (JError::isError($errors[$i])) {
                    $app->enqueueMessage($errors[$i]->getMessage(), 'warning');
                } else {
                    $app->enqueueMessage($errors[$i], 'warning');
                }
            }
            // Save the data in the session.
            $app->setUserState('com_feedback.default.feedback.data', $data);
            $this->setRedirect(JRoute::_('index.php?option=com_feedback&view=feedback', false));
            return false;
        }

        // Attempt to save the data.
        $model->sendEmail($data);
        $this->setRedirect(JRoute::_('index.php?option=com_feedback&view=feedback', false), JText::_('Сообщение было успешно отправлено администратору сайта.'));
        $app->setUserState('com_feedback.default.feedback.data', null);
    }

}

?>