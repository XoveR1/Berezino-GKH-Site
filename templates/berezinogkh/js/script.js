

jQuery(document).ready(function(){
    jQuery('aside menu ul').hide();
    jQuery('aside menu li.active').find('ul').show();
    jQuery('aside menu .parent a').mouseover(function(e){
        e.preventDefault();
        jQuery(this).siblings('ul').slideDown();
        jQuery(this).parent('li').siblings('li').each(function(){
            jQuery(this).find('ul').slideUp()
        });
    });

    //    $('aside menu').accordion({
    //        header: '.title'
    //    });
    
    jQuery('.module menu li').last().addClass('last');
    jQuery('.module ul li').last().addClass('last');
});