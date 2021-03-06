<link rel="stylesheet" href="assets/css/views/common/second-navi.css">


<?php
	// 类目
	$cate2List = Array('火力榜', '频道', '众筹', '商城');
    $cate2LinkList = Array('home.php', 'channel.php', 'raise.php', 'mall.php');
?>

<!-- # 面包屑 -->
<div class="second-navi pure-g" id="second-navi">
    <div class="second-navi-inner pure-u-1 pure-u-md-2-3">
        <div class="pure-menu pure-menu-horizontal custom-can-transform">
            <ul class="pure-menu-list">
            <?php foreach ($cate2List as $c2Index => $cate2): ?>
                <li class="pure-menu-item <?= $currentCate2Index == $c2Index ? 'current' : ''  ?>">
                    <a href="<?= $cate2LinkList[$c2Index] ?>"><?= $cate2 ?></a>
                </li>
            <?php endforeach ?>
            </ul>
        </div>
    </div>
</div>
<!-- / 面包屑 -->
