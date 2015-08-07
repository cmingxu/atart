<link rel="stylesheet" href="assets/css/views/common/header.css">
<!--[if lte IE 8]>
    <link rel="stylesheet" href="assets/css/grids-responsive-old-ie-min.css">
<![endif]-->
<!--[if gt IE 8]><!-->
    <link rel="stylesheet" href="assets/css/grids-responsive-min.css">
<!--<![endif]-->


<?php
	// 类目
	$cateList = Array('首页', '发现', '现场', '我');
    $cateLinkList = Array('home.php', 'discover.php', 'onsite.php', 'me.php');
	// 类目
	$cate2List = Array(Array(), Array('火力榜', '频道', '众筹', '商城'), Array(), Array() );
    $cate2LinkList = Array(Array(), Array('discover.php', 'channel.php', 'raise.php', 'mall.php'), Array(), Array() );
?>

<!-- # 页头 -->
<div class="header">
    <div class="header-inner pure-g" id="header">
        <div class="logo-n-search pure-u-1 pure-u-md-3-5">
            <a class="logo" href="home.php">
                <img src="assets/img/logo.png" alt="Logo" />
            </a>
            <div class="search-form">
                <form>
                    <input class="search-input" type="text"></input>
                    <input class="search-btn" type="submit" value=""></input>
                </form>
            </div>
            <a href="#" class="menu-toggle" id="header-menu-toggle"><s class="bar"></s><s class="bar"></s><s class="bar"></s></a>
        </div>
        <div class="navi pure-u-1 pure-u-md-2-5">
            <div class="pure-menu pure-menu-horizontal custom-can-transform">
                <ul class="pure-menu-list">
				<?php foreach ($cateList as $c1Index => $cate1List): ?>
                    <li class="pure-menu-item <?= $currentCate1Index == $c1Index ? 'current' : ''  ?>">
                        <a href="<?= $cateLinkList[$c1Index] ?>"><?= $cateList[$c1Index] ?></a>

                        <?php if (count($cate2List[$c1Index]) > 0): ?>
                            <!-- # 二级目录 -->
                            <div class="second-cate">
                                <ul>
                                <?php foreach ($cate2List[$c1Index] as $c2Index => $cate2): ?>
                                    <li class="<?= $currentCate2Index == $c2Index ? 'current' : ''  ?>">
                                        <a href="<?= $cate2LinkList[$c1Index][$c2Index] ?>"><?= $cate2 ?></a>
                                    </li>
                                <?php endforeach ?>
                                </ul>
                            </div>
                            <!-- / 二级目录 -->
                        <?php endif; ?>
                    </li>
				<?php endforeach ?>
                </ul>
            </div>
        </div>
    </div>
</div>

<!-- ／ 页头 -->


<script>
    (function (window, document) {
    var header = document.getElementById('header'),
        WINDOW_CHANGE_EVENT = ('onorientationchange' in window) ? 'orientationchange':'resize';

    function toggleHorizontal() {
        [].forEach.call(
            document.getElementById('header').querySelectorAll('.custom-can-transform'),
            function(el){
                el.classList.toggle('pure-menu-horizontal');
            }
        );
    };

    function toggleMenu() {
        // set timeout so that the panel has a chance to roll up
        // before the menu switches states
        if (header.classList.contains('open')) {
            setTimeout(toggleHorizontal, 500);
        }
        else {
            toggleHorizontal();
        }
        header.classList.toggle('open');
        document.getElementById('header-menu-toggle').classList.toggle('x');
    };

    function closeMenu() {
        if (header.classList.contains('open')) {
            toggleMenu();
        }
    }

    document.getElementById('header-menu-toggle').addEventListener('click', function (e) {
        toggleMenu();
    });

    window.addEventListener(WINDOW_CHANGE_EVENT, closeMenu);
    })(this, this.document);

</script>
