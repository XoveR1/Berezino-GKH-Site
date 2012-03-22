$(document).ready(function(){
    $('aside menu ul').hide();
    $('aside menu li.active').find('ul').show();
    $('aside menu .title').mouseover(function(e){
        e.preventDefault();
        $(this).siblings('ul').slideDown();
        $(this).parent('li').siblings('li').each(function(){
            $(this).find('ul').slideUp()
        });
    });

    //    $('aside menu').accordion({
    //        header: '.title'
    //    });
    
    $('.module menu li').last().addClass('last');
    $('.module ul li').last().addClass('last');
});