
$('[data-dpl="carousel"]').each(function(){

    var $this = $(this);
    var prevBtn = $this.find('.role-prev');
    var nextBtn = $this.find('.role-next');
    var pageNavi = $this.find('.role-pagination');
    var list = $this.find('.role-list');

    list.find('.role-banner').each(function(){
        var imgSrc = $(this).attr('img-src');
        this.style.backgroundImage = 'url(' + imgSrc + ')';
        (new Image()).src = imgSrc;
    });

    if ( list.children().length < 2 ) {
        prevBtn.hide(0)
        nextBtn.hide(0)
        pageNavi.hide(0);
    }
    else {
        list.carouFredSel({
            auto: $this.attr('data-auto') == 'false'?{
                    pauseOnHover: 'resume',
                    pauseDuration: Number( $this.attr('data-pause-duration') )
                }:false,
            prev: prevBtn,
            next: nextBtn,
            pagination: pageNavi,
            responsive: $this.attr('data-responsive') == 'true'
        });


		function setHeight(){
            var newHeight;
            $('[data-dpl="carousel"]').each(function(){
                $(this).find('.role-list a').each(function(){
                    if ( !newHeight ) { newHeight = $(this).width() * 1008 / 1920; }
                    $(this).height( newHeight );
                });
                $(this).find('.caroufredsel_wrapper').height( newHeight );
            });
		}
		setHeight();
		$(window).resize(setHeight);
    }
});
