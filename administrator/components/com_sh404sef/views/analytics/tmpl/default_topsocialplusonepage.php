<?php
/**
 * SEF module for Joomla!
 *
 * @author      $Author: shumisha $
 * @copyright   Yannick Gaultier - 2007-2011
 * @package     sh404SEF-16
 * @license     http://www.gnu.org/copyleft/gpl.html GNU/GPL
 * @version     $Id: default_topsocialplusonepage.php 2157 2011-11-18 17:51:49Z silianacom-svn $
 */

// Security check to ensure this file is being included by a parent file.
if (!defined('_JEXEC')) die('Direct Access to this location is not allowed.');

?>
<div class="width-100">
<fieldset>

  <?php if (!empty($this->analytics->analyticsData->topSocialPlusOnePage)) : ?>
  
   <legend><?php echo JText::_('COM_SH404SEF_ANALYTICS_SOCIAL_PLUS_ONE_PAGE_ENGAGEMENT'); ?></legend>
        
 	<table class="adminlist" >
    <thead>
      <tr>
        <th class="title" >
          <?php echo '#'; ?>
        </th>
        
        <?php  $t = JText::_('COM_SH404SEF_ANALYTICS_TOP5_URL') . '::' . JText::_('COM_SH404SEF_ANALYTICS_TT_URL_DESC'); ?>
        <th class="title hasAnalyticsTip" title="<?php echo $t;?>" >
        <?php echo JText::_( 'COM_SH404SEF_ANALYTICS_TOP5_URL' ); ?>
        </th>
        
        <?php  $t = JText::_('COM_SH404SEF_ANALYTICS_TOTAL_PLUSONE_PAGE_ENGAGEMENT') . '::' . JText::_('COM_SH404SEF_ANALYTICS_TOTAL_PLUSONE_PAGE_ENGAGEMENT_DESC'); ?>
        <th class="title hasAnalyticsTip" title="<?php echo $t;?>" >
        <?php echo JText::_( 'COM_SH404SEF_ANALYTICS_TOTAL_PLUSONE_PAGE_ENGAGEMENT' ); ?>
        </th>
        
        <?php?>
        <th class="title" >
        <?php echo '%'; ?>
        </th>
        
        <?php  $t = JText::_('COM_SH404SEF_ANALYTICS_TOP5_AVG_TIME_ON_PAGE') . '::' . JText::_('COM_SH404SEF_ANALYTICS_TT_AVG_TIME_ON_PAGE_DESC'); ?>
        <th class="title hasAnalyticsTip" title="<?php echo $t;?>" >
        <?php echo JText::_( 'COM_SH404SEF_ANALYTICS_TOP5_AVG_TIME_ON_PAGE' ); ?>
        </th>
      </tr>
    </thead>
 	      
 	      
 	 <tbody>
        <?php
          $k = 0;
          $i = 1;
          foreach($this->analytics->analyticsData->topSocialPlusOnePage as $entry) :
        ?>    
            
        <tr class="<?php echo "row$k"; ?>">
        
          <td align="center" width="3%">
            <?php echo $i; ?>
          </td>
          
          <td width="62%">
            <?php 
            $path = str_replace( JURI::root(),'',  $entry->dimension['eventLabel']);
              echo $this->escape( $path);
            ?>
          </td>
          
          <td align="center" width="15%">
            <?php echo $this->escape( $entry->totalEvents); ?>
          </td>
          
          <td align="center" width="10%">
            <?php 
              echo $this->escape( sprintf( '%0.1f', $entry->eventsPerCent*100));
            ?>
          </td>
          
          <td align="center" width="10%">
            <?php 
              echo $this->escape( sprintf( '%0.1f', $entry->avgTimeOnPage));
            ?>
          </td>

        </tr>
        <?php
        $k = 1 - $k;
        $i++;
      endforeach;
 	      
 	    ?>     
 	      
 	  </tbody>
  </table>    
 	
 	<?php else : ?>
 	  <legend><?php echo JText::_('COM_SH404SEF_ANALYTICS_SOCIAL_NO_PLUS_ONE_PAGE_ENGAGEMENT'); ?></legend>
 	<?php endif; ?>
 	      
</fieldset>
</div>	

	