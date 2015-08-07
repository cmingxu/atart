(function(){
    var buffer,
        win = $(window),
        footerSNS = $('#footer-sns'),
        checkViewChange = function(){
            clearTimeout(buffer);
            buffer = setTimeout(function(){
                var st = win.scrollTop(),
                    wh = win.height(),
                    ih = footerSNS.height(),
                    iy = footerSNS.offset().top;

                if ( st+wh > iy ) {
                    if ( !footerSNS.hasClass('show') ) {
                        footerSNS.addClass('show');
                    }
                }
                else if ( footerSNS.hasClass('show') && st+wh < iy - 200 ) {
                    footerSNS.removeClass('show');
                }
            }, 100);
        };
    $(window,'body').scroll( checkViewChange );
    win.on('touchmove', checkViewChange);
})();
