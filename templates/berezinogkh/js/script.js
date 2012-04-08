jQuery(document).ready(function(){
    jQuery('menu li:last-child').addClass('last');
    jQuery('aside menu ul').hide();
    jQuery('aside menu li.active').find('ul').show();
    jQuery('aside menu .parent a').mouseover(function(e){
        e.preventDefault();
        jQuery(this).siblings('ul').slideDown(500);
        jQuery(this).parent('li').siblings('li').each(function(){
            jQuery(this).find('ul').slideUp(500)
        });
    });

});