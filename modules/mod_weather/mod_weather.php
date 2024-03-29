<?php
/**
 *
 * $Id: mod_weather.php 1.0.0 2012-03-10 09:50:52 Slava Poddubsky $
 * @package	    Weather Module 
 * @subpackage	Weather Module
 * @version     1.0.0
 * @description Module for show weather for Belarus cities from site http://www.meteonova.by/
 * @copyright	  Copyright © 2012 - All rights reserved.
 * @license		  GNU General Public License v2.0
 * @author		  Slava Poddubsky
 * @author mail	vicheslav.p@tut.by
 * @website		  http://berezinogkh.by
 *
 * CODE GENERATED BY: ALEXEY GORDEYEV IK CODE GENERATOR
 * HTTP://WWW.AGJOOMLA.COM/
 *
 *
 */

// no direct access
defined( '_JEXEC' ) or die( 'Restricted access' );
 
// include the helper file
require_once(dirname(__FILE__).DS.'helper.php');

$document = JFactory::getDocument();
$document->addStylesheet(JURI::base(true) . '/modules/mod_weather/assets/css/style.css');	
 
$weather = new ModWeatherHelper;
$weather->setParams($params);
$weatherData = $weather->getWeather();

//print_r($module);
//print_r($params);
 
// include the template for display
require(JModuleHelper::getLayoutPath('mod_weather'));

?>