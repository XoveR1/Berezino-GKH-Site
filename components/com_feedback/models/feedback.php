<?php

// No direct access to this file
defined('_JEXEC') or die('Restricted access');

// import Joomla modelform library
jimport('joomla.application.component.modelform');

/**
 * Feedback Model
 *
 */
class FeedbackModelFeedback extends JModelForm {

    /**
     * @var	object	The feedback data.
     */
    protected $data;

    /**
     * Method to get the feedback form.
     *
     * The base form is loaded from XML and then an event is fired
     * for users plugins to extend the form with extra fields.
     *
     * @param	array	$data		An optional array of data for the form to interogate.
     * @param	boolean	$loadData	True if the form is to load its own data (default case), false if not.
     * @return	JForm	A JForm object on success, false on failure
     * @since	1.6
     */
    public function getForm($data = array(), $loadData = true) {
        // Get the form.
        $form = $this->loadForm('com_feedback.feedback', 'feedback', array('control' => 'jform', 'load_data' => $loadData));
        if (empty($form)) {
            return false;
        }
        return $form;
    }

    /**
     * Method to get the data that should be injected in the form.
     *
     * @return	mixed	The data for the form.
     * @since	1.6
     */
    protected function loadFormData() {
        return $this->getData();
    }

    /**
     * Method to get the feedback form data.
     *
     * The base form data is loaded and then an event is fired
     * for users plugins to extend the data.
     *
     * @return	mixed	Data object on success, false on failure.
     */
    public function getData() {

        if ($this->data === null) {
            // Override the base user data with any data in the session.
            $temp = (array) JFactory::getApplication()->getUserState('com_feedback.default.feedback.data', array());
            foreach ($temp as $k => $v) {
                $this->data->$k = $v;
            }
        }
        return $this->data;
    }

    /**
     * Sents email to administarator and user
     * @param object $data
     */
    public function sendEmail($data) {
        $sysConfig = JFactory::getConfig();
        $comConfig = JComponentHelper::getParams('com_messages');
        $mailer = JFactory::getMailer();
        $data = (object)$data;

        $adminEmail = $sysConfig->getValue('mailfrom');
        $siteName = $sysConfig->getValue('sitename');
        $adminTemplate = $comConfig->getValue('admin_mail_template');
        $userTemplate = $comConfig->getValue('user_mail_template');
        $baseUrl = '<a href="' . JURI::base() . '">' . $siteName . '</a>';
        $subject = "Сообщение с сайта " . $siteName;
        
        // Send mail to admin
        $body = $this->renderLetter($adminTemplate, $data, $baseUrl);
        $mailer->addRecipient($adminEmail)
                ->setSubject($subject)
                ->setBody($body)
                ->setSender($siteName);
        $mailer->IsHTML(true);
        $mailer->Send();
        
        // Send mail to user
        $mailer = JFactory::getMailer();
        $body = $this->renderLetter($userTemplate, $data, $baseUrl);
        $mailer->addRecipient($data->email)
                ->setSubject($subject)
                ->setBody($body)
                ->setSender($siteName);
        $mailer->IsHTML(true);
        $mailer->Send();
    }
    
    protected function renderLetter($template, $data, $baseUrl){
        $body = nl2br($template);
        $body = str_replace("%name%", $data->name, $body);
        $body = str_replace("%phone%", $data->phone, $body);
        $body = str_replace("%factory%", $data->factory, $body);
        $body = str_replace("%e-mail%", $data->email, $body);
        $body = str_replace("%message%", $data->message, $body);
        $body = str_replace("%baseUrl%", $baseUrl, $body);
        return $body;
    }

}
