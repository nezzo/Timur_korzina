<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="format-detection" content="telephone=no" />
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-3.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/theme/bigshop/js/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/theme/bigshop/js/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<?php global $config; if(($config->get('bigshop_custom_column_status')== 1) || ($config->get('bigshop_video_box_status')== 1) || ($config->get('bigshop_facebook_block_status')== 1) || ($config->get('bigshop_twitter_block_status')== 1)){ ?>
<script src="catalog/view/theme/bigshop/js/jquery.easing-1.3.min.js" type="text/javascript" ></script>
<?php } ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/bigshop/stylesheet/stylesheet.min.css" />
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/bigshop/stylesheet/responsive.min.css" />
<?php if ($direction == 'rtl') { ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/bigshop/js/bootstrap/css/bootstrap-rtl.min.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/bigshop/stylesheet/stylesheet-rtl.min.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/bigshop/stylesheet/responsive-rtl.min.css" />
<?php } ?>
<?php global $config; if($config->get('bigshop_skin')== 2) { ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/bigshop/stylesheet/stylesheet-skin2.css" />
<?php } else if($config->get('bigshop_skin')== 3) { ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/bigshop/stylesheet/stylesheet-skin3.css" />
<?php } ?>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/simple_modul/simple_modul.css" />
<script type="text/javascript" src="catalog/view/theme/bigshop/js/common.min.js"></script>
<script type="text/javascript" src="catalog/view/theme/bigshop/js/custom.min.js"></script>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php if($config->get('bigshop_search_auto_complete')== 1) { ?>
<?php if ($route != 'affiliate/tracking') { ?>
<script src="catalog/view/theme/bigshop/js/jquery.autocomplete.min.js" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function() {	
	$("#filter_name").autocomplete("getdata.php?lan=<?php echo $_SESSION['language']; ?>", {
		width: 445,
		resultsClass: "ac_results col-lg-7",
		matchContains: true
	});
});
</script>
<?php } ?>
<?php } ?>
<?php global $config; if($config->get('bigshop_title_font')!='' || $config->get('bigshop_body_font')!='' || $config->get('bigshop_secondary_titles_font')!='' || $config->get('bigshop_footer_titles_font')!='' || $config->get('bigshop_main_menu_font') != '' ) {		
		$regfonts = array('', 'Arial', 'Verdana', 'Helvetica', 'Lucida Grande', 'Trebuchet MS', 'Times New Roman', 'Tahoma', 'Georgia' );
		if (in_array($config->get('bigshop_title_font'), $regfonts)==false) { ?>
<link href='//fonts.googleapis.com/css?family=<?php echo $config->get('bigshop_title_font') ?>' rel='stylesheet' type='text/css'>
<?php }
        if (in_array($config->get('bigshop_body_font'), $regfonts)==false) { ?>
<link href='//fonts.googleapis.com/css?family=<?php echo $config->get('bigshop_body_font') ?>' rel='stylesheet' type='text/css'>
<?php }
        if (in_array($config->get('bigshop_main_menu_font'), $regfonts)==false) { ?>
<link href='//fonts.googleapis.com/css?family=<?php echo $config->get('bigshop_main_menu_font') ?>' rel='stylesheet' type='text/css'>
<?php  }
        if (in_array($config->get('bigshop_secondary_titles_font'), $regfonts)==false) { ?>
<link href='//fonts.googleapis.com/css?family=<?php echo $config->get('bigshop_secondary_titles_font') ?>' rel='stylesheet' type='text/css'>
<?php }
        if (in_array($config->get('bigshop_footer_titles_font'), $regfonts)==false) { ?>
<link href='//fonts.googleapis.com/css?family=<?php echo $config->get('bigshop_footer_titles_font') ?>' rel='stylesheet' type='text/css'>
<?php } 
	} 
?>
<style type="text/css">
body { <?php if($config->get('bigshop_background_color')!='') {
?> background-color: <?php echo $config->get('bigshop_background_color');
?>;
 <?php
}
if (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') {
 $path_image = $config->get('config_ssl') . 'image/';
}
else { $path_image = $config->get('config_url') . 'image/';
}
if($config->get('bigshop_custom_image')!='') {
?> background-image: url("<?php echo $path_image . $config->get('bigshop_custom_image') ?>");
?>;
background-position:<?php echo $config->get('bigshop_custom_image_position');
?>;
background-repeat:<?php echo $config->get('bigshop_custom_image_repeat');
?>;
background-attachment:<?php echo $config->get('bigshop_custom_image_attachment');
?>;
<?php
}
else if($config->get('bigshop_pattern_overlay')!='none') {
?> background-image: url("catalog/view/theme/bigshop/image/patterns/<?php echo $config->get('bigshop_pattern_overlay'); ?>.png");
<?php
}
else { ?> background-image: none;
 <?php
}
?>
}
<?php if($config->get('bigshop_general_links_color')!='') {
?> .pagination > .active > a, .pagination > .active > span, .pagination > .active > a:hover, .pagination > .active > span:hover, .pagination > .active > a:focus, .pagination > .active > span:focus {
background-color: <?php echo $config->get('bigshop_general_links_color');
?>;
border-color: <?php echo $config->get('bigshop_general_links_color');
?>;
}
<?php
}
if($config->get('bigshop_body_text_color')!='') {
?> body {
color: <?php echo $config->get('bigshop_body_text_color');
?>;
}
<?php
}
if($config->get('bigshop_general_links_color')!='') {
?> a, a b, .articleHeader span a, .pagination > li > a {
color: <?php echo $config->get('bigshop_general_links_color');
?>;
}
 <?php
}
if($config->get('bigshop_general_links_color')!='') {
?> .owl-carousel.slideshowhome .owl-controls .owl-buttons .owl-prev:hover, .owl-carousel.slideshowhome .owl-controls .owl-buttons .owl-next:hover, .nivo-directionNav .nivo-nextNav:hover, .nivo-directionNav .nivo-prevNav:hover {
background-color: <?php echo $config->get('bigshop_general_links_color');
?>;
}
 <?php
}
if($config->get('bigshop_general_links_hover_color')!='') {
?> a:hover, a b:hover, .category .tabs li a:hover, .sitemap li a:hover, .pagination > li > a:hover, .breadcrumb a:hover, .login-content .right a:hover, .box-category a:hover, .list-item a:hover, #blogArticle .articleHeader h1 a:hover, #blogCatArticles .articleHeader h3 a:hover, .tags-update .tags a:hover, .articleHeader span a:hover {
color: <?php echo $config->get('bigshop_general_links_hover_color');
?>;
}
<?php
}
if($config->get('bigshop_heading_color')!='') {
?> #container h1 {
color: <?php echo $config->get('bigshop_heading_color');
?>;
}
<?php
}
if($config->get('bigshop_secondary_heading_color')!='') {
?> #container h3, .product-tab .htabs a, .product-tab .tabs li a {
color: <?php echo $config->get('bigshop_secondary_heading_color');
?>;
}
<?php
}
if($config->get('bigshop_secondary_heading_border_color')!='') {
?> #container h3, .product-tab .htabs a, .product-tab .tabs, .category .tabs li.active a {
border-color: <?php echo $config->get('bigshop_secondary_heading_border_color');
?>;
}
<?php
}
if($config->get('bigshop_secondary_heading_border_hl_color')!='') {
?> #container h3 span, .product-tab .tabs li.active a {
border-color: <?php echo $config->get('bigshop_secondary_heading_border_hl_color');
?>;
}
 <?php
}
if(($config->get('bigshop_layout_border_radius')!='') && ($config->get('bigshop_layout_border_radius') ==2)) {
?> .wrapper-box #header .header-row, .wrapper-box, .wrapper-box #footer .fpart-second, .custom-feature-box .feature-box, .navbar, #header .button-search, #header #search input, .form-control, .dropdown-menu, .btn, #header .links > ul > li.wrap_custom_block > div, #menu .nav > li:hover > a, #menu .nav > li > .dropdown-menu, #menu .nav > li > .dropdown-menu, .submenu, .product-thumb .button-group .btn-primary, .product-thumb .button-group .add-to-links button, .owl-carousel.slideshowhome .owl-controls .owl-buttons .owl-next, .owl-carousel.slideshowhome .owl-controls .owl-buttons .owl-prev, .nivo-directionNav a, .nivo-controlNav a, #back-top a, .product-info .cart #button-cart, .qty a, .nav-tabs > li > a, #footer .social a img, #footer .contact > ul > li > .fa, #footer .payments_types img, .thumbnail, .product-info .price .real, .owl-theme .owl-controls .owl-buttons div {
border-radius:0px;
}
<?php
}
if($config->get('bigshop_layout_top_margin')!='') {
?> .wrapper-box {
margin:<?php echo $config->get('bigshop_layout_top_margin');
?>px auto;
}
#back-top a {
bottom:<?php echo $config->get('bigshop_layout_top_margin');
?>px;
}
<?php
}
if($config->get('bigshop_header_margin')!='') {
?> #header .header-row {
padding: <?php echo $config->get('bigshop_header_margin');
?>px 0px;
}
<?php
}
if($config->get('bigshop_logo_margin')!='') {
?> #header #logo {
padding-top: <?php echo $config->get('bigshop_logo_margin');
?>px;
}
 <?php
}
if($config->get('bigshop_top_bar_link_color')!='') {
?> #header .links > ul > li > a, #language span, #currency span, #header #top-links > ul > li > a, .drop-icon {
color:<?php echo $config->get('bigshop_top_bar_link_color');
?>;
}
<?php
}
if($config->get('bigshop_top_bar_link_hover_color')!='') {
?> #header .links > ul > li:hover > a, #header #top-links > ul > li:hover > a, #language:hover .btn-link span, #currency:hover span {
color:<?php echo $config->get('bigshop_top_bar_link_hover_color');
?>;
}
<?php
}
if($config->get('bigshop_top_bar_tele_email_color')!='') {
?> #header .links_contact > ul > li, #header .links_contact > ul > li > a {
color:<?php echo $config->get('bigshop_top_bar_tele_email_color');
?>;
}
<?php
}
if($config->get('bigshop_top_bar_link_color')!='') {
?> #header .links > ul > li.wrap_custom_block a b {
border-top-color:<?php echo $config->get('bigshop_top_bar_link_color');
?>;
}
<?php
}
if($config->get('bigshop_top_bar_sub_link_color')!='') {
?> #top .dropdown-menu li a, #currency ul li .currency-select {
color:<?php echo $config->get('bigshop_top_bar_sub_link_color');
?>;
}
<?php
}
if($config->get('bigshop_top_bar_sub_link_hover_color')!='') {
?> #top .dropdown-menu li a:hover, #currency ul li .currency-select:hover {
color:<?php echo $config->get('bigshop_top_bar_sub_link_hover_color');
?>;
}
<?php
}
if($config->get('bigshop_header_bg_color')!='') {
?> #header .header-row, .left-top {
background-color:<?php echo $config->get('bigshop_header_bg_color');
?>;
}
<?php
}
if($config->get('bigshop_mini_cart_icon_color')!='') {
?> #header #cart .heading h4 {
background-color:<?php echo $config->get('bigshop_mini_cart_icon_color');
?>;
}
<?php
}
if($config->get('bigshop_mini_cart_icon_color')!='') {
?> #header #cart .heading h4:after, #header #cart .heading h4:before {
border-color:<?php echo $config->get('bigshop_mini_cart_icon_color');
?>;
}
<?php
}
if($config->get('bigshop_mini_cart_link_color')!='') {
?> #header #cart .heading {
color:<?php echo $config->get('bigshop_mini_cart_link_color');
?>;
}
<?php
}
if($config->get('bigshop_mini_cart_active_link_color')!='') {
?> #header #cart.open .heading {
color:<?php echo $config->get('bigshop_mini_cart_active_link_color');
?>;
}
 <?php
}
if($config->get('bigshop_search_bar_background_color')!='') {
?> #header #search input {
background-color:<?php echo $config->get('bigshop_search_bar_background_color');
?>;
}
<?php
}
if($config->get('bigshop_search_bar_border_color')!='') {
?> #header #search input {
border-color:<?php echo $config->get('bigshop_search_bar_border_color');
?>;
}
<?php
}
if($config->get('bigshop_search_bar_text_color')!='') {
?> #header #search input {
color:<?php echo $config->get('bigshop_search_bar_text_color');
?>;
}
<?php
}
if($config->get('bigshop_search_bar_border_hover_color')!='') {
?> #header #search input:focus, #header #search input:hover {
border-color:<?php echo $config->get('bigshop_search_bar_border_hover_color');
?>;
}
<?php
}
if($config->get('bigshop_search_bar_icon_color')!='') {
?> #header .button-search {
color:<?php echo $config->get('bigshop_search_bar_icon_color');
?>;
}
<?php
}
if($config->get('bigshop_search_bar_icon_bg_color')!='') {
?> #header .button-search {
color:<?php echo $config->get('bigshop_search_bar_icon_bg_color');
?>;
}

/*===== MAIN MENU =====*/
<?php
}
if(($config->get('bigshop_main_menu_align')!='') && ($config->get('bigshop_main_menu_align') ==2)) {
?> #menu .navbar-nav {
text-align: center;
}
#menu .nav > li {
display: inline-block;
float: none;
}
<?php
}
if(($config->get('bigshop_menu_bg_color')!='') && ($config->get('bigshop_menu_bg_color_status') ==1)) {
?> #menu {
background-color: <?php echo $config->get('bigshop_menu_bg_color');
?>;
}
<?php
}
if($config->get('bigshop_menu_link_color')!='') {
?> #menu .nav > li > a, #menu .navbar-header > span, #menu .nav > li > span.submore:after {
color: <?php echo $config->get('bigshop_menu_link_color');
?>;
}
 <?php
}
if($config->get('bigshop_menu_link_hover_color')!='') {
?> #menu .nav > li:hover > a {
color: <?php echo $config->get('bigshop_menu_link_hover_color');
?>;
}
<?php
}
if($config->get('bigshop_menu_link_hover_bg_color')!='') {
?> #menu .nav > li:hover > a {
background-color: <?php echo $config->get('bigshop_menu_link_hover_bg_color');
?>;
}
 <?php
}
if(($config->get('bigshop_menu_link_separator_size')!='') && ($config->get('bigshop_menu_link_separator_style')!='') && ($config->get('bigshop_menu_link_separator_color')!='') && ($config->get('bigshop_menu_link_separator_status') ==1)) {
?> #menu .nav > li + li {
border-left:<?php echo $config->get('bigshop_menu_link_separator_size')?>px <?php echo $config->get('bigshop_menu_link_separator_style')?> <?php echo $config->get('bigshop_menu_link_separator_color')?>
}
 <?php
}
if(($config->get('bigshop_menu_link_border_top_size')!='') && ($config->get('bigshop_menu_link_border_top_style')!='') && ($config->get('bigshop_menu_link_border_top_color')!='') && ($config->get('bigshop_menu_link_border_top_status') ==1)) {
?> #menu {
border-top:<?php echo $config->get('bigshop_menu_link_border_top_size')?>px <?php echo $config->get('bigshop_menu_link_border_top_style')?> <?php echo $config->get('bigshop_menu_link_border_top_color')?>
}
<?php
}
if(($config->get('bigshop_menu_link_border_top_status') == 2)) {
?> #menu {
border-top:none;
}
<?php
}
if(($config->get('bigshop_menu_link_border_bottom_size')!='') && ($config->get('bigshop_menu_link_border_bottom_style')!='') && ($config->get('bigshop_menu_link_border_bottom_color')!='') && ($config->get('bigshop_menu_link_border_bottom_status') == 1)) {
?> #menu {
border-bottom:<?php echo $config->get('bigshop_menu_link_border_bottom_size')?>px <?php echo $config->get('bigshop_menu_link_border_bottom_style')?> <?php echo $config->get('bigshop_menu_link_border_bottom_color')?>
}
<?php
}
if(($config->get('bigshop_menu_link_border_bottom_status') == 2)) {
?> #menu {
border-bottom:none;
}
<?php
}
if($config->get('bigshop_sub_menu_background_color')!='') {
?> #menu .nav > li.categories_hor > div, #menu .nav > li.categories > div, #menu .nav > li.categories_hor > div .submenu, #menu .nav > li.categories > div > .column > div, #menu .nav > li > .dropdown-menu, #menu .submenu {
background-color:<?php echo $config->get('bigshop_sub_menu_background_color');
?>;
}
<?php
}
if($config->get('bigshop_sub_menu_heading_text_color')!='') {
?> #menu .nav > li.categories_hor > div > .column > a {
color:<?php echo $config->get('bigshop_sub_menu_heading_text_color');
?>;
}
<?php
}
if(($config->get('bigshop_sub_menu_heading_text_separator_color')!='') && ($config->get('bigshop_sub_menu_heading_text_separator_style')!='')) {
?> #menu .nav > li.categories_hor > div > .column > a {
border-bottom:1px <?php echo $config->get('bigshop_sub_menu_heading_text_separator_style')?> <?php echo $config->get('bigshop_sub_menu_heading_text_separator_color')?>
}
<?php
}
if($config->get('bigshop_sub_menu_link_color')!='') {
?> #menu .nav > li.categories > div > .column > a, #menu .nav > li div > ul > li > a, #menu .nav > li.menu_brands > div > div a, #menu .custom_block, #menu .custom_block a, #menu .nav > li > div > ul li span.submore:after, #menu .nav > li.categories > div > .column span.submore:after, #menu .nav > li.categories_hor > div > .column span.submore:after {
color: <?php echo $config->get('bigshop_sub_menu_link_color');
?>;
}
<?php
}
if($config->get('bigshop_sub_menu_link_hover_color')!='') {
?> #menu .nav > li.categories > div > .column:hover > a, #menu .nav > li div > ul > li:hover > a, #menu .nav > li.categories_hor > div > .column:hover > a, #menu .nav > li.menu_brands > div > div a:hover, #menu .custom_block a:hover {
color: <?php echo $config->get('bigshop_sub_menu_link_hover_color');
?>;
}
<?php
}
if(($config->get('bigshop_sub_menu_link_separator_color')!='') && ($config->get('bigshop_sub_menu_link_separator_style')!='')) {
?> #menu .nav > li.categories > div > .column + .column, #menu .nav > li > div > ul li + li, #menu .nav > li.categories > div > .column:hover > div ul li + li, #menu .nav > li.categories_hor > div .submenu ul li + li a {
border-top:1px <?php echo $config->get('bigshop_sub_menu_link_separator_style')?> <?php echo $config->get('bigshop_sub_menu_link_separator_color')?>
}
 <?php
}
if($config->get('bigshop_home_page_link_background_color')!='') {
?> #menu .nav > li > a.home_link {
background-color: <?php echo $config->get('bigshop_home_page_link_background_color');
?>;
}
<?php
}
if($config->get('bigshop_home_page_link_background_color_hover')!='') {
?> #menu .nav > li > a.home_link:hover {
background-color: <?php echo $config->get('bigshop_home_page_link_background_color_hover');
?>;
}
<?php
}
if($config->get('bigshop_home_page_link_link_color')!='') {
?> #menu .nav > li > a.home_link {
color: <?php echo $config->get('bigshop_home_page_link_link_color');
?>;
}
<?php
}
if($config->get('bigshop_home_page_link_link_color_hover')!='') {
?> #menu .nav > li > a.home_link:hover {
color: <?php echo $config->get('bigshop_home_page_link_link_color_hover');
?>;
}
 <?php
}
if($config->get('bigshop_categories_section_background_color')!='') {
?> #menu .nav > li.categories_defu > a, #menu .nav > li.categories > a, #menu .nav > li.categories_hor > a {
background-color: <?php echo $config->get('bigshop_categories_section_background_color');
?>;
}
<?php
}
if($config->get('bigshop_categories_section_background_color_hover')!='') {
?> #menu .nav > li.categories:hover > a {
background-color: <?php echo $config->get('bigshop_categories_section_background_color_hover');
?>;
}
<?php
}
if($config->get('bigshop_categories_section_link_color')!='') {
?> #menu .nav > li.categories > a {
color: <?php echo $config->get('bigshop_categories_section_link_color');
?>;
}
<?php
}
if($config->get('bigshop_categories_section_link_color_hover')!='') {
?> #menu .nav > li.categories:hover > a {
color: <?php echo $config->get('bigshop_categories_section_link_color_hover');
?>;
}
 <?php
}
if($config->get('bigshop_brands_section_background_color')!='') {
?> #menu .nav > li.menu_brands > a {
background-color: <?php echo $config->get('bigshop_brands_section_background_color');
?>;
}
<?php
}
if($config->get('bigshop_brands_section_background_color_hover')!='') {
?> #menu .nav > li.menu_brands:hover > a {
background-color: <?php echo $config->get('bigshop_brands_section_background_color_hover');
?>;
}
<?php
}
if($config->get('bigshop_brands_section_link_color')!='') {
?> #menu .nav > li.menu_brands > a {
color: <?php echo $config->get('bigshop_brands_section_link_color');
?>;
}
<?php
}
if($config->get('bigshop_brands_section_link_color_hover')!='') {
?> #menu .nav > li.menu_brands:hover > a {
color: <?php echo $config->get('bigshop_brands_section_link_color_hover');
?>;
}
 <?php
}
if($config->get('bigshop_custom_link_section_background_color')!='') {
?> #menu .nav > li.custom-link > a {
background-color: <?php echo $config->get('bigshop_custom_link_section_background_color');
?>;
}
<?php
}
if($config->get('bigshop_custom_link_section_background_color_hover')!='') {
?> #menu .nav > li.custom-link:hover > a {
background-color: <?php echo $config->get('bigshop_custom_link_section_background_color_hover');
?>;
}
<?php
}
if($config->get('bigshop_custom_link_section_link_color')!='') {
?> #menu .nav > li.custom-link > a {
color: <?php echo $config->get('bigshop_custom_link_section_link_color');
?>;
}
<?php
}
if($config->get('bigshop_custom_link_section_link_color_hover')!='') {
?> #menu .nav > li.custom-link:hover > a {
color: <?php echo $config->get('bigshop_custom_link_section_link_color_hover');
?>;
}
 <?php
}
if($config->get('bigshop_custom_block_section_background_color')!='') {
?> #menu .nav > li.wrap_custom_block > a {
background-color: <?php echo $config->get('bigshop_custom_block_section_background_color');
?>;
}
<?php
}
if($config->get('bigshop_custom_block_section_background_color_hover')!='') {
?> #menu .nav > li.wrap_custom_block:hover > a {
background-color: <?php echo $config->get('bigshop_custom_block_section_background_color_hover');
?>;
}
<?php
}
if($config->get('bigshop_custom_block_section_link_color')!='') {
?> #menu .nav > li.wrap_custom_block > a {
color: <?php echo $config->get('bigshop_custom_block_section_link_color');
?>;
}
<?php
}
if($config->get('bigshop_custom_block_section_link_color_hover')!='') {
?> #menu .nav > li.wrap_custom_block:hover > a {
color: <?php echo $config->get('bigshop_custom_block_section_link_color_hover');
?>;
}
<?php
}
if($config->get('bigshop_information_section_background_color')!='') {
?> #menu .nav > li.information-link > a {
background-color: <?php echo $config->get('bigshop_information_section_background_color');
?>;
}
<?php
}
if($config->get('bigshop_information_section_background_color_hover')!='') {
?> #menu .nav > li.information-link:hover > a {
background-color: <?php echo $config->get('bigshop_information_section_background_color_hover');
?>;
}
<?php
}
if($config->get('bigshop_information_section_link_color')!='') {
?> #menu .nav > li.information-link > a {
color: <?php echo $config->get('bigshop_information_section_link_color');
?>;
}
<?php
}
if($config->get('bigshop_information_section_link_color_hover')!='') {
?> #menu .nav > li.information-link:hover > a {
color: <?php echo $config->get('bigshop_information_section_link_color_hover');
?>;
}
 <?php
}
if($config->get('bigshop_contact_section_background_color')!='') {
?> #menu .nav > li.contact-link > a {
background-color: <?php echo $config->get('bigshop_contact_section_background_color');
?>;
}
<?php
}
if($config->get('bigshop_contact_section_background_color_hover')!='') {
?> #menu .nav > li.contact-link:hover > a {
background-color: <?php echo $config->get('bigshop_contact_section_background_color_hover');
?>;
}
<?php
}
if($config->get('bigshop_contact_section_link_color')!='') {
?> #menu .nav > li.contact-link > a {
color: <?php echo $config->get('bigshop_contact_section_link_color');
?>;
}
<?php
}
if($config->get('bigshop_contact_section_link_color_hover')!='') {
?> #menu .nav > li.contact-link:hover > a {
color: <?php echo $config->get('bigshop_contact_section_link_color_hover');
?>;
}
<?php
}
if($config->get('bigshop_custom_block_bg_color')!='') {
?> .custom_side_block_icon {
background-color: <?php echo $config->get('bigshop_custom_block_bg_color');
?>;
}
<?php
}
if($config->get('bigshop_video_block_bg_color')!='') {
?> #video_box_icon {
background-color: <?php echo $config->get('bigshop_video_block_bg_color');
?>;
}
/*===== FOOTER =====*/
<?php
}
if($config->get('bigshop_footer_bg_color')!='') {
?> #footer .fpart-first {
background-color: <?php echo $config->get('bigshop_footer_bg_color');
?>;
}
<?php
}
if($config->get('bigshop_footer_titles_color')!='') {
?> #footer h5 {
color: <?php echo $config->get('bigshop_footer_titles_color');
?>;
}
<?php
}
if($config->get('bigshop_footer_text_color')!='') {
?> #footer .fpart-first {
color: <?php echo $config->get('bigshop_footer_text_color');
?>;
}
<?php
}
if($config->get('bigshop_footer_link_color')!='') {
?> #footer .fpart-first a {
color: <?php echo $config->get('bigshop_footer_link_color');
?>;
}
<?php
}
if($config->get('bigshop_footer_link_hover_color')!='') {
?> #footer .fpart-first a:hover {
color: <?php echo $config->get('bigshop_footer_link_hover_color');
?>;
}
<?php
}
if($config->get('bigshop_contact_icon_color')!='') {
?> #footer .contact > ul > li > .fa {
color: <?php echo $config->get('bigshop_contact_icon_color');
?>;
}
<?php
}
if($config->get('bigshop_contact_icon_bg_color')!='') {
?> #footer .contact > ul > li > .fa {
background-color: <?php echo $config->get('bigshop_contact_icon_bg_color');
?>;
}
<?php
}
if($config->get('bigshop_footer_second_bg_color')!='') {
?> #footer .fpart-second {
background-color: <?php echo $config->get('bigshop_footer_second_bg_color');
?>;
}
<?php
}
if($config->get('bigshop_footer_second_text_color')!='') {
?> #footer .fpart-second {
color: <?php echo $config->get('bigshop_footer_second_text_color');
?>;
}
 <?php
}
if($config->get('bigshop_footer_second_link_color')!='') {
?> #footer .fpart-second a {
color: <?php echo $config->get('bigshop_footer_second_link_color');
?>;
}
<?php
}
if($config->get('bigshop_footer_second_link_hover_color')!='') {
?> #footer .fpart-second a:hover {
color: <?php echo $config->get('bigshop_footer_second_link_hover_color');
?>;
}
<?php
}
if(($config->get('bigshop_footer_second_separator_color')!='') && ($config->get('bigshop_footer_second_separator_style')!='') && ($config->get('bigshop_footer_second_fst_separator_status') ==1)) {
?>#footer #powered {
border-top:<?php echo $config->get('bigshop_footer_second_separator_size')?>px <?php echo $config->get('bigshop_footer_second_separator_style')?> <?php echo $config->get('bigshop_footer_second_separator_color')?>
}
<?php
}
if(($config->get('bigshop_footer_second_fst_separator_status') ==2)) {
?>#footer #powered {
border-top:none;
}
<?php
}
if(($config->get('bigshop_footer_second_2nd_separator_color')!='') && ($config->get('bigshop_footer_second_2nd_separator_style')!='') && ($config->get('bigshop_footer_second_2nd_separator_status') ==1)) {
?>#footer .custom-text {
border-top:<?php echo $config->get('bigshop_footer_second_2nd_separator_size')?>px <?php echo $config->get('bigshop_footer_second_2nd_separator_style')?> <?php echo $config->get('bigshop_footer_second_2nd_separator_color')?>
}
<?php
}
if(($config->get('bigshop_footer_second_2nd_separator_status') ==2)) {
?>#footer .custom-text {
border-top:none;
}
<?php
}
if($config->get('bigshop_footer_backtotop_bg_color')!='') {
?> #back-top a:hover {
background-color: <?php echo $config->get('bigshop_footer_backtotop_bg_color');
?>;
}
<?php
}
if($config->get('bigshop_product_box_border_hover_color')!='') {
?> .product-grid:hover, .owl-carousel .product-thumb:hover {
border-color: <?php echo $config->get('bigshop_product_box_border_hover_color');
?>;
}
<?php
}
if($config->get('bigshop_product_name_color')!='') {
?> .product-thumb h4 a {
color: <?php echo $config->get('bigshop_product_name_color');
?>;
}
<?php
}
if($config->get('bigshop_product_name_hover_color')!='') {
?> .product-thumb h4 a:hover {
color: <?php echo $config->get('bigshop_product_name_hover_color');
?>;
}
/*===== PRICE =====*/
<?php
}
if($config->get('bigshop_price_color')!='') {
?> .product-thumb .price, .product-info .price {
color: <?php echo $config->get('bigshop_price_color');
?>;
}
<?php
}
if($config->get('bigshop_old_price_color')!='') {
?> .product-thumb .price-old {
color: <?php echo $config->get('bigshop_old_price_color');
?>;
}
<?php
}
if($config->get('bigshop_new_price_color')!='') {
?> .product-thumb .price-new {
color: <?php echo $config->get('bigshop_new_price_color');
?>;
}
<?php
}
if($config->get('bigshop_saving_percentage_bg_color')!='') {
?> .saving {
background-color: <?php echo $config->get('bigshop_saving_percentage_bg_color');
?>;
}
<?php
}
if($config->get('bigshop_saving_percentage_text_color')!='') {
?> .saving {
color: <?php echo $config->get('bigshop_saving_percentage_text_color');
?>;
}
 <?php
}
if($config->get('bigshop_wishlist_compare_bg_color')!='') {
?> .product-thumb .button-group .add-to-links button {
background-color: <?php echo $config->get('bigshop_wishlist_compare_bg_color');
?>;
}
<?php
}
if($config->get('bigshop_wishlist_compare_text_color')!='') {
?> .product-thumb .button-group .add-to-links button {
color: <?php echo $config->get('bigshop_wishlist_compare_text_color');
?>;
}
<?php
}
if($config->get('bigshop_wishlist_compare_hover_bg_color')!='') {
?> .product-thumb .button-group .add-to-links button:hover {
background-color: <?php echo $config->get('bigshop_wishlist_compare_hover_bg_color');
?>;
}
<?php
}
if($config->get('bigshop_wishlist_compare_hover_text_color')!='') {
?> .product-thumb .button-group .add-to-links button:hover {
color: <?php echo $config->get('bigshop_wishlist_compare_hover_text_color');
?>;
}





/*===== BUTTON =====*/
<?php
}
if($config->get('bigshop_button_bg_color')!='') {
?> .btn-primary {
background-color: <?php echo $config->get('bigshop_button_bg_color');
?>;
}
<?php
}
if($config->get('bigshop_button_bg_hover_color')!='') {
?> .btn-primary:hover, .btn-primary:active, .btn-primary.active, .btn-primary:focus, .btn-primary.disabled, .btn-primary[disabled] {
background-color: <?php echo $config->get('bigshop_button_bg_hover_color');
?>;
}
<?php
}
if($config->get('bigshop_button_text_color')!='') {
?> .btn-primary {
color: <?php echo $config->get('bigshop_button_text_color');
?>;
}
<?php
}
if($config->get('bigshop_button_text_hover_color')!='') {
?> .btn-primary:hover, .btn-primary:active, .btn-primary.active, .btn-primary.disabled, .btn-primary[disabled] {
color: <?php echo $config->get('bigshop_button_text_hover_color');
?>;
}

/*===== DEFAULT BUTTON =====*/
<?php
}
if($config->get('bigshop_default_button_bg_color')!='') {
?> .btn-default {
background-color: <?php echo $config->get('bigshop_default_button_bg_color');
?>;
}
<?php
}
if($config->get('bigshop_default_button_bg_hover_color')!='') {
?> .btn-default:hover {
background-color: <?php echo $config->get('bigshop_default_button_bg_hover_color');
?>;
}
<?php
}
if($config->get('bigshop_default_button_text_color')!='') {
?> .btn-default {
color: <?php echo $config->get('bigshop_default_button_text_color');
?>;
}
<?php
}
if($config->get('bigshop_default_button_text_hover_color')!='') {
?> .btn-default:hover {
color: <?php echo $config->get('bigshop_default_button_text_hover_color');
?>;
}

/*===== AddToCart BUTTONS =====*/
<?php
}
if($config->get('bigshop_cart_button_bg_color')!='') {
?> .product-thumb .button-group .btn-primary {
background-color: <?php echo $config->get('bigshop_cart_button_bg_color');
?>;
}
<?php
}
if($config->get('bigshop_cart_button_bg_hover_color')!='') {
?> .product-thumb .button-group .btn-primary:hover {
background-color: <?php echo $config->get('bigshop_cart_button_bg_hover_color');
?>;
}
<?php
}
if($config->get('bigshop_cart_button_text_color')!='') {
?> .product-thumb .button-group .btn-primary {
color: <?php echo $config->get('bigshop_cart_button_text_color');
?>;
}
<?php
}
if($config->get('bigshop_cart_button_text_hover_color')!='') {
?> .product-thumb .button-group .btn-primary:hover {
color: <?php echo $config->get('bigshop_cart_button_text_hover_color');
?>;
}
<?php
}
if($config->get('bigshop_price_bg_color')!='') {
?> .product-info .price .real {
background-color: <?php echo $config->get('bigshop_price_bg_color');
?>;
}
<?php
}
if($config->get('bigshop_price_text_color')!='') {
?> .product-info .price .real {
color: <?php echo $config->get('bigshop_price_text_color');
?>;
}
<?php
}
if($config->get('bigshop_old_price_product_page_color')!='') {
?> .product-info .price-old {
color: <?php echo $config->get('bigshop_old_price_product_page_color');
?>;
}
<?php
}
if($config->get('bigshop_excl_button_bg_color')!='') {
?> .product-info .cart #button-cart {
background-color: <?php echo $config->get('bigshop_excl_button_bg_color');
?>;
}
<?php
}
if($config->get('bigshop_excl_button_bg_hover_color')!='') {
?> .product-info .cart #button-cart:hover {
background-color: <?php echo $config->get('bigshop_excl_button_bg_hover_color');
?>;
}
 <?php
}
if($config->get('bigshop_excl_button_text_color')!='') {
?> .product-info .cart #button-cart {
color: <?php echo $config->get('bigshop_excl_button_text_color');
?>;
}
<?php
}
if($config->get('bigshop_excl_button_text_hover_color')!='') {
?> .product-info .cart #button-cart:hover {
color: <?php echo $config->get('bigshop_excl_button_text_hover_color');
?>;
}
<?php
}
if($config->get('bigshop_feature_box1_border_color')!='') {
?> .custom-feature-box .feature-box.fbox_1 {
border-color: <?php echo $config->get('bigshop_feature_box1_border_color');
?>;
}
<?php
}
if($config->get('bigshop_feature_box1_bg_color')!='') {
?> .custom-feature-box .feature-box.fbox_1 {
background: <?php echo $config->get('bigshop_feature_box1_bg_color');
?>;
}
<?php
}
if($config->get('bigshop_feature_box1_title_color')!='') {
?> .custom-feature-box .feature-box.fbox_1 .title {
color: <?php echo $config->get('bigshop_feature_box1_title_color');
?>;
}
<?php
}
if($config->get('bigshop_feature_box1_subtitle_color')!='') {
?> .custom-feature-box .feature-box.fbox_1 p {
color: <?php echo $config->get('bigshop_feature_box1_subtitle_color');
?>;
}
<?php
}
if($config->get('bigshop_feature_box2_border_color')!='') {
?> .custom-feature-box .feature-box.fbox_2 {
border-color: <?php echo $config->get('bigshop_feature_box2_border_color');
?>;
}
 <?php
}
if($config->get('bigshop_feature_box2_bg_color')!='') {
?> .custom-feature-box .feature-box.fbox_2 {
background: <?php echo $config->get('bigshop_feature_box2_bg_color');
?>;
}
<?php
}
if($config->get('bigshop_feature_box2_title_color')!='') {
?> .custom-feature-box .feature-box.fbox_2 .title {
color: <?php echo $config->get('bigshop_feature_box2_title_color');
?>;
}
<?php
}
if($config->get('bigshop_feature_box2_subtitle_color')!='') {
?> .custom-feature-box .feature-box.fbox_2 p {
color: <?php echo $config->get('bigshop_feature_box2_subtitle_color');
?>;
}
<?php
}
if($config->get('bigshop_feature_box3_border_color')!='') {
?> .custom-feature-box .feature-box.fbox_3 {
border-color: <?php echo $config->get('bigshop_feature_box3_border_color');
?>;
}
<?php
}
if($config->get('bigshop_feature_box3_bg_color')!='') {
?> .custom-feature-box .feature-box.fbox_3 {
background: <?php echo $config->get('bigshop_feature_box3_bg_color');
?>;
}
<?php
}
if($config->get('bigshop_feature_box3_title_color')!='') {
?> .custom-feature-box .feature-box.fbox_3 .title {
color: <?php echo $config->get('bigshop_feature_box3_title_color');
?>;
}
<?php
}
if($config->get('bigshop_feature_box3_subtitle_color')!='') {
?> .custom-feature-box .feature-box.fbox_3 p {
color: <?php echo $config->get('bigshop_feature_box3_subtitle_color');
?>;
}
<?php
}
if($config->get('bigshop_feature_box4_border_color')!='') {
?> .custom-feature-box .feature-box.fbox_4 {
border-color: <?php echo $config->get('bigshop_feature_box4_border_color');
?>;
}
<?php
}
if($config->get('bigshop_feature_box4_bg_color')!='') {
?> .custom-feature-box .feature-box.fbox_4 {
background: <?php echo $config->get('bigshop_feature_box4_bg_color');
?>;
}
<?php
}
if($config->get('bigshop_feature_box4_title_color')!='') {
?> .custom-feature-box .feature-box.fbox_4 .title {
color: <?php echo $config->get('bigshop_feature_box4_title_color');
?>;
}
<?php
}
if($config->get('bigshop_feature_box4_subtitle_color')!='') {
?> .custom-feature-box .feature-box.fbox_4 p {
color: <?php echo $config->get('bigshop_feature_box4_subtitle_color');
?>;
}
<?php
}
if($config->get('bigshop_feature_box_title_font_size')!='') {
?> .custom-feature-box .feature-box .title {
font-size:<?php echo $config->get('bigshop_feature_box_title_font_size');
?>;
}
<?php
}
if($config->get('bigshop_feature_box_title_font_weight')!='') {
?> .custom-feature-box .feature-box .title {
font-weight:<?php echo $config->get('bigshop_feature_box_title_font_weight');
?>;
}
<?php
}
if($config->get('bigshop_feature_box_title_font_transform')!='') {
?> .custom-feature-box .feature-box .title {
text-transform:<?php echo $config->get('bigshop_feature_box_title_font_transform');
?>;
}
 <?php
}
if($config->get('bigshop_feature_box_subtitle_font_size')!='') {
?> .custom-feature-box .feature-box p {
font-size:<?php echo $config->get('bigshop_feature_box_subtitle_font_size');
?>;
}
<?php
}
if($config->get('bigshop_feature_box_subtitle_font_weight')!='') {
?> .custom-feature-box .feature-box p {
font-weight:<?php echo $config->get('bigshop_feature_box_subtitle_font_weight');
?>;
}
<?php
}
if($config->get('bigshop_feature_box_subtitle_font_transform')!='') {
?> .custom-feature-box .feature-box p {
text-transform:<?php echo $config->get('bigshop_feature_box_subtitle_font_transform');
?>;
}
<?php
}
if ($config->get('bigshop_body_font') != '' ) {
 $fontpre = $config->get('bigshop_body_font');
 $font = str_replace("+", " ", $fontpre);
?> body {
font-family:<?php echo $font ?>;
}
<?php
}
 if($config->get('bigshop_title_font')!='') {
 $fontpre = $config->get('bigshop_title_font');
 $font = str_replace("+", " ", $fontpre);
?> #container h1 {
font-family:<?php echo $font ?>;
}
<?php
}
if($config->get('bigshop_title_font_size')!='') {
?> #container h1 {
font-size:<?php echo $config->get('bigshop_title_font_size');
?>;
}
<?php
}
if($config->get('bigshop_title_font_weight')!='') {
?> #container h1 {
font-weight:<?php echo $config->get('bigshop_title_font_weight');
?>;
}
<?php
}
if($config->get('bigshop_title_font_uppercase')!='') {
?> #container h1 {
text-transform:<?php echo $config->get('bigshop_title_font_uppercase');
?>;
}
<?php
}
 if($config->get('bigshop_main_menu_font')!='') {
 $fontpre = $config->get('bigshop_main_menu_font');
 $font = str_replace("+", " ", $fontpre);
?> #menu {
font-family:<?php echo $font ?>;
}
<?php
}
if($config->get('bigshop_main_menu_font_size')!='') {
?> #menu .nav > li > a {
font-size:<?php echo $config->get('bigshop_main_menu_font_size');
?>;
}
<?php
}
if($config->get('bigshop_main_menu_font_weight')!='') {
?> #menu .nav > li > a {
font-weight:<?php echo $config->get('bigshop_main_menu_font_weight');
?>;
}
<?php
}
if($config->get('bigshop_main_menu_font_uppercase')!='') {
?> #menu .nav > li > a {
text-transform:<?php echo $config->get('bigshop_main_menu_font_uppercase');
?>;
}
<?php
}
if($config->get('bigshop_top_bar_font_size')!='') {
?> #header #top-links > ul > li > a, #header .links ul li a, #language span, #currency span, #header .links .wrap_custom_block > a {
font-size:<?php echo $config->get('bigshop_top_bar_font_size');
?>;
}
<?php
}
if($config->get('bigshop_top_bar_font_weight')!='') {
?> #header #top-links > ul > li > a, #header .links ul li a, #language span, #currency span, #header .links .wrap_custom_block > a {
font-weight:<?php echo $config->get('bigshop_top_bar_font_weight');
?>;
}
<?php
}
if($config->get('bigshop_top_bar_font_uppercase')!='') {
?> #header #top-links > ul > li > a, #header .links ul li a, #language span, #currency span, #header .links .wrap_custom_block > a {
text-transform:<?php echo $config->get('bigshop_top_bar_font_uppercase');
?>;
}
<?php
}
 if($config->get('bigshop_secondary_titles_font')!='') {
 $fontpre = $config->get('bigshop_secondary_titles_font');
 $font = str_replace("+", " ", $fontpre);
 ?>#container h3, .product-tab .htabs a, .product-tab .tabs li a {
font-family:<?php echo $font ?>;
}
<?php
}
if($config->get('bigshop_secondary_titles_font_size')!='') {
?> #container h3, .product-tab .htabs a, .product-tab .tabs li a {
font-size:<?php echo $config->get('bigshop_secondary_titles_font_size');
?>;
}
<?php
}
if($config->get('bigshop_secondary_titles_font_weight')!='') {
?> #container h3, .product-tab .htabs a, .product-tab .tabs li a {
font-weight:<?php echo $config->get('bigshop_secondary_titles_font_weight');
?>;
}
<?php
}
if($config->get('bigshop_secondary_titles_font_uppercase')!='') {
?> #container h3, .product-tab .htabs a, .product-tab .tabs li a {
text-transform:<?php echo $config->get('bigshop_secondary_titles_font_uppercase');
?>;
}
<?php
}
 if($config->get('bigshop_footer_titles_font')!='') {
 $fontpre = $config->get('bigshop_footer_titles_font');
 $font = str_replace("+", " ", $fontpre);
?> #footer h5 {
font-family:<?php echo $font ?>;
}
 <?php
}
if($config->get('bigshop_footer_titles_font_size')!='') {
?> #footer h5 {
font-size:<?php echo $config->get('bigshop_footer_titles_font_size');
?>;
}
<?php
}
if($config->get('bigshop_footer_titles_font_weight')!='') {
?> #footer h5 {
font-weight:<?php echo $config->get('bigshop_footer_titles_font_weight');
?>;
}
<?php
}
if($config->get('bigshop_footer_titles_font_uppercase')!='') {
?> #footer h5 {
text-transform:<?php echo $config->get('bigshop_footer_titles_font_uppercase');
?>;
}
<?php
}
 if ($config->get('bigshop_custom_css') != '') {
 echo htmlspecialchars_decode($config->get('bigshop_custom_css'));
}
?> @media screen and (max-width:800px) {
<?php if(($config->get('bigshop_main_menu_align')!='') && ($direction == 'ltr') && ($config->get('bigshop_main_menu_align') ==2)) {
?> #menu .navbar-nav {
text-align: left;
}
#menu .nav > li {
display:block;
}
<?php
}
if(($config->get('bigshop_main_menu_align')!='') && ($direction == 'rtl') && ($config->get('bigshop_main_menu_align') ==2)) {
?> #menu .navbar-nav {
text-align: right;
}
#menu .nav > li {
display:block;
}
<?php
}
if($config->get('bigshop_menu_link_color')!='') {
?> #menu > span {
color: <?php echo $config->get('bigshop_menu_link_color');
?>;
}
<?php
}
if($config->get('bigshop_menu_link_color')!='') {
?> #menu > span:before {
border-bottom-color: <?php echo $config->get('bigshop_menu_link_color');
?>;
}
<?php
}
if($config->get('bigshop_menu_link_color')!='') {
?> #menu > span:after {
border-top-color: <?php echo $config->get('bigshop_menu_link_color');
?>;
}
<?php
}
if(($config->get('bigshop_menu_link_border_bottom_size')!='') && ($config->get('bigshop_menu_link_border_bottom_style')!='') && ($config->get('bigshop_menu_link_border_bottom_color')!='') && ($config->get('bigshop_menu_link_border_bottom_status') ==1)) {
?> #menu .nav {
border-top:<?php echo $config->get('bigshop_menu_link_border_bottom_size')?>px <?php echo $config->get('bigshop_menu_link_border_bottom_style')?> <?php echo $config->get('bigshop_menu_link_border_bottom_color')?>
}
<?php
}
?>
}
</style>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
</head>
<body class="<?php echo $class; ?>">
<?php if($config->get('bigshop_layout_style')== 1) { ?>
<section class="wrapper-box">
<?php } else { ?>
<section class="wrapper-wide">
<?php } ?>
<div id="header" >
  <header class="header-row">
    <div class="container">
      <div class="table-container">
        <nav class="htop col-md-9 pull-right flip inner" id="top"> <span class="drop-icon visible-sm visible-xs"><i class="fa fa-align-justify"></i></span>
          <div id="top-links" class="nav pull-right flip">
            <ul>
              <?php if ($logged) { ?>
              <li id="my_account" class="dropdown"><a href="<?php echo $account; ?>"><?php echo $text_account; ?> <i class="fa fa-caret-down"></i></a>
                <ul class="dropdown-menu dropdown-menu-right">
                  <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
                  <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
                  <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
                  <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
                </ul>
              </li>
              <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
              <?php } else { ?>
              <li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
              <li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
              <?php } ?>
            </ul>
          </div>
          <div class="pull-right flip left-top">
            <?php $lang = (int)$config->get('config_language_id');?>
            <div class="links">
              <ul>
                <?php if($config->get('bigshop_custom_link1_top')== 1) {
  	$bigshop_custom_link1_top_title = $config->get('bigshop_custom_link1_top_title');  

 	if((isset($bigshop_custom_link1_top_title[$lang]) && $bigshop_custom_link1_top_title[$lang] != '')) { ?>
                <li><a href="<?php echo $config->get('bigshop_custom_link1_top_url'); ?>" target="<?php echo $config->get('bigshop_target_link1_top'); ?>"> <?php echo $bigshop_custom_link1_top_title[$lang]; ?></a></li>
                <?php } ?>
                <?php } ?>
                <?php if($config->get('bigshop_custom_link2_top')== 1) {
  	$bigshop_custom_link2_top_title = $config->get('bigshop_custom_link2_top_title');  

 	if((isset($bigshop_custom_link2_top_title[$lang]) && $bigshop_custom_link2_top_title[$lang] != '')) { ?>
                <li><a href="<?php echo $config->get('bigshop_custom_link2_top_url'); ?>" target="<?php echo $config->get('bigshop_target_link2_top'); ?>"> <?php echo $bigshop_custom_link2_top_title[$lang]; ?></a></li>
                <?php } ?>
                <?php } ?>
                <?php if($config->get('bigshop_custom_link3_top')== 1) {
  	$bigshop_custom_link3_top_title = $config->get('bigshop_custom_link3_top_title');  

 	if((isset($bigshop_custom_link3_top_title[$lang]) && $bigshop_custom_link3_top_title[$lang] != '')) { ?>
                <li><a href="<?php echo $config->get('bigshop_custom_link3_top_url'); ?>" target="<?php echo $config->get('bigshop_target_link3_top'); ?>"> <?php echo $bigshop_custom_link3_top_title[$lang]; ?></a></li>
                <?php } ?>
                <?php } ?>
                <?php if($config->get('bigshop_custom_block_top_status')== 1) {
    $bigshop_custom_block_top_title = $config->get('bigshop_custom_block_top_title');
    $bigshop_custom_block_top_content = $config->get('bigshop_custom_block_top_content');    
    
    if(isset($bigshop_custom_block_top_title[$lang]) && $bigshop_custom_block_top_title[$lang]!= '') { ?>
                <li class="wrap_custom_block hidden-sm hidden-xs"><a><?php echo $bigshop_custom_block_top_title[$lang]; ?><b></b></a>
                  <div class="custom_block">
                    <ul>
                      <li><?php echo html_entity_decode($bigshop_custom_block_top_content[$lang], ENT_QUOTES, 'UTF-8'); ?></li>
                    </ul>
                  </div>
                </li>
                <?php } ?>
                <?php } ?>
                <?php if($config->get('bigshop_custom_block2_top_status')== 1) {
    $bigshop_custom_block2_top_title = $config->get('bigshop_custom_block2_top_title');
    $bigshop_custom_block2_top_content = $config->get('bigshop_custom_block2_top_content');    
    
    if(isset($bigshop_custom_block2_top_title[$lang]) && $bigshop_custom_block2_top_title[$lang]!= '') { ?>
                <li class="wrap_custom_block hidden-sm hidden-xs"><a><?php echo $bigshop_custom_block2_top_title[$lang]; ?><b></b></a>
                  <div class="custom_block">
                    <ul>
                      <li><?php echo html_entity_decode($bigshop_custom_block2_top_content[$lang], ENT_QUOTES, 'UTF-8'); ?></li>
                    </ul>
                  </div>
                </li>
                <?php } ?>
                <?php } ?>
                <?php if($config->get('bigshop_wishlist_top_link')== 1) { ?>
                <li><a href="<?php echo $wishlist; ?>" id="wishlist-total"><?php echo $text_wishlist; ?></a></li>
                <?php } ?>
                <?php if($config->get('bigshop_checkout_top_link')== 1) { ?>
                <li><a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></li>
                <?php } ?>
              </ul>
            </div>
            <?php echo $language; ?> <?php echo $currency; ?> </div>
        </nav>
        <div class="col-table-cel col-md-3 col-sm-4 col-xs-12 inner">
          <?php if ($logo) { ?>
          <div id="logo"><a href="<?php echo $home; ?>"><img class="img-responsive" src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></div>
          <?php } ?>
        </div>
        <div class="col-md-4 col-md-push-5 col-sm-8 col-xs-12 inner">
          <div class="links_contact pull-right flip">
            <ul>
              <?php if($config->get('bigshop_top_bar_contact_status')== 1) {
  	$bigshop_top_bar_contact = $config->get('bigshop_top_bar_contact');
      
 	if((isset($bigshop_top_bar_contact[$lang]) && $bigshop_top_bar_contact[$lang] != '')) { ?>
              <li class="mobile"><i class="fa fa-phone"></i><?php echo $bigshop_top_bar_contact[$lang]; ?></li>
              <?php } ?>
              <?php } ?>
              <?php if($config->get('bigshop_top_bar_email_status')== 1) {
  	$bigshop_top_bar_email = $config->get('bigshop_top_bar_email');
      
 	if((isset($bigshop_top_bar_email[$lang]) && $bigshop_top_bar_email[$lang] != '')) { ?>
              <li class="email"><a href="mailto:<?php echo $bigshop_top_bar_email[$lang]; ?>"><i class="fa fa-envelope"></i><?php echo $bigshop_top_bar_email[$lang]; ?></a></li>
              <?php } ?>
              <?php } ?>
            </ul>
          </div>
        </div>
        <div class="clearfix visible-sm-block visible-xs-block"></div>
        <div class="col-md-5 col-md-pull-4 col-sm-8 col-xs-12 inner2"><?php echo $search; ?></div>
        <div class="col-md-9 pull-right col-sm-4 col-xs-12 inner"> <?php echo $cart; ?> </div>
      </div>
    </div>
  </header>
  <?php if($config->get('bigshop_main_menu_style')== 1) { ?>
  <div class="container">
    <?php } ?>
    <nav id="menu" class="navbar <?php if($config->get('bigshop_main_menu_style')== 2) { ?>full<?php } ?>">
      <div class="navbar-header"> <span class="visible-xs visible-sm">
        <?php if($bigshop_mobile_menu_title = $config->get('bigshop_mobile_menu_title')); { ?>
        <?php echo $bigshop_mobile_menu_title[$lang]; ?>
        <?php } ?>
        <i class="fa fa-align-justify pull-right flip"></i></span>
        <!--<button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">Go</button>-->
      </div>
      <?php if($config->get('bigshop_main_menu_style')== 2) { ?>
      <div class="container">
        <?php } ?>
        <div class="collapse navbar-collapse navbar-ex1-collapse">
          <ul class="nav navbar-nav">
            <?php if($config->get('bigshop_home_page_link')== 1) { ?>
            <li><a class="home_link" title="<?php echo $text_home; ?>" href="<?php echo $home; ?>">
              <?php if($config->get('bigshop_home_page_link_icon')== 1) { ?>
              <?php echo $text_home; ?>
              <?php } else { ?>
              <i class="fa fa-home"></i>
              <?php } ?>
              </a></li>
            <?php } ?>
            <?php if ($categories) {?>
            <?php if($config->get('bigshop_top_menu')== 1) {?>
            <?php foreach ($categories as $category) { ?>
            <li class="categories_defu dropdown"><a class="dropdown-toggle" href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
              <?php if ($category['children']) { ?>
              <div class="dropdown-menu">
                <?php for ($i = 0; $i < count($category['children']);) { ?>
                <ul>
                  <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
                  <?php for (; $i < $j; $i++) { ?>
                  <?php if (isset($category['children'][$i])) { ?>
                  <li>
                    <?php if(count($category['children'][$i]['children_level2'])>0){ ?>
                    <a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?>
                    <?php  if ($direction == 'ltr') { ?>
                    <span class='fa fa-caret-right'></span>
                    <?php } else { ?>
                    <span class='fa fa-caret-left'></span>
                    <?php } ?>
                    </a>
                    <?php } else{ ?>
                    <a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a>
                    <?php }?>
                    <?php if ($category['children'][$i]['children_level2']) { ?>
                    <div class="submenu">
                      <ul>
                        <?php for ($wi = 0; $wi < count($category['children'][$i]['children_level2']); $wi++) { ?>
                        <li> <a href="<?php echo $category['children'][$i]['children_level2'][$wi]['href']; ?>"  ><?php echo $category['children'][$i]['children_level2'][$wi]['name']; ?> </a> </li>
                        <?php } ?>
                      </ul>
                    </div>
                    <?php } ?>
                  </li>
                  <?php } ?>
                  <?php } ?>
                </ul>
                <?php } ?>
              </div>
              <?php } ?>
            </li>
            <?php } ?>
            <?php } ?>
            <?php if($config->get('bigshop_top_menu')== 2) {?>
            <li class="categories dropdown">
              <?php if($bigshop_menu_categories_title = $config->get('bigshop_menu_categories_title'));  
 	if((isset($bigshop_menu_categories_title[$lang]) && $bigshop_menu_categories_title[$lang] != '')) { ?>
              <a><?php echo $bigshop_menu_categories_title[$lang]; ?></a>
              <?php } ?>
              <div class="dropdown-menu">
                <?php foreach ($categories as $category) { ?>
                <div class="column">
                  <?php
				if(count($category['children'])>0){
				?>
                  <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?>
                  <?php if ($direction == 'ltr') { ?>
                  <span class='fa fa-caret-right'></span>
                  <?php } else { ?>
                  <span class='fa fa-caret-left'></span>
                  <?php } ?>
                  </a>
                  <?php } else{ ?>
                  <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
                  <?php
				}
				?>
                  <?php if ($category['children']) { ?>
                  <div>
                    <?php for ($i = 0; $i < count($category['children']);) { ?>
                    <ul>
                      <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
                      <?php for (; $i < $j; $i++) { ?>
                      <?php if (isset($category['children'][$i])) { ?>
                      <li>
                        <?php
				if(count($category['children'][$i]['children_level2'])>0){
				?>
                        <a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?>
                        <?php if ($direction == 'ltr') { ?>
                        <span class='fa fa-caret-right'></span>
                        <?php } else { ?>
                        <span class='fa fa-caret-left'></span>
                        <?php } ?>
                        </a>
                        <?php } else{ ?>
                        <a href="<?php echo $category['children'][$i]['href']; ?>" ><?php echo $category['children'][$i]['name']; ?></a>
                        <?php
				}
				?>
                        <?php if ($category['children'][$i]['children_level2']) { ?>
                        <div class="submenu">
                          <ul>
                            <?php for ($wi = 0; $wi < count($category['children'][$i]['children_level2']); $wi++) { ?>
                            <li> <a href="<?php echo $category['children'][$i]['children_level2'][$wi]['href']; ?>"  ><?php echo $category['children'][$i]['children_level2'][$wi]['name']; ?> </a> </li>
                            <?php } ?>
                          </ul>
                        </div>
                        <?php } ?>
                      </li>
                      <?php } ?>
                      <?php } ?>
                    </ul>
                    <?php } ?>
                  </div>
                  <?php } ?>
                </div>
                <?php } ?>
              </div>
            </li>
            <?php } ?>
            <?php if($config->get('bigshop_top_menu')== 3) {?>
            <li class="categories_hor dropdown">
              <?php if($bigshop_menu_categories_title = $config->get('bigshop_menu_categories_title'));  
 	if((isset($bigshop_menu_categories_title[$lang]) && $bigshop_menu_categories_title[$lang] != '')) { ?>
              <a><?php echo $bigshop_menu_categories_title[$lang]; ?></a>
              <?php } ?>
              <div class="dropdown-menu">
                <?php foreach ($categories as $category) { ?>
                <div class="column col-lg-2 col-md-3"> <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
                  <?php if ($category['children']) { ?>
                  <div>
                    <?php for ($i = 0; $i < count($category['children']);) { ?>
                    <ul>
                      <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
                      <?php for (; $i < $j; $i++) { ?>
                      <?php if (isset($category['children'][$i])) { ?>
                      <li>
                        <?php
				if(count($category['children'][$i]['children_level2'])>0){
				?>
                        <a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?>
                        <?php if ($direction == 'ltr') { ?>
                        <span class='fa fa-caret-right'></span>
                        <?php } else { ?>
                        <span class='fa fa-caret-left'></span>
                        <?php } ?>
                        </a>
                        <?php } else{ ?>
                        <a href="<?php echo $category['children'][$i]['href']; ?>" ><?php echo $category['children'][$i]['name']; ?></a>
                        <?php
				}
				?>
                        <?php if ($category['children'][$i]['children_level2']) { ?>
                        <div class="submenu">
                          <ul>
                            <?php for ($wi = 0; $wi < count($category['children'][$i]['children_level2']); $wi++) { ?>
                            <li> <a href="<?php echo $category['children'][$i]['children_level2'][$wi]['href']; ?>"  ><?php echo $category['children'][$i]['children_level2'][$wi]['name']; ?> </a> </li>
                            <?php } ?>
                          </ul>
                        </div>
                        <?php } ?>
                      </li>
                      <?php } ?>
                      <?php } ?>
                    </ul>
                    <?php } ?>
                  </div>
                  <?php } ?>
                </div>
                <?php } ?>
              </div>
            </li>
            <?php } ?>
            <?php if($config->get('bigshop_top_menu')== 4) {?>
            <?php foreach ($categories as $category) { ?>
            <li class="categories_hor dropdown"> <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
              <?php if ($category['children']) { ?>
              <div class="dropdown-menu">
                <?php for ($i = 0; $i < count($category['children']);) { ?>
                <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
                <?php for (; $i < $j; $i++) { ?>
                <?php if (isset($category['children'][$i])) { ?>
                <div class="column col-lg-2 col-md-3"> <a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a>
                  <?php if ($category['children'][$i]['children_level2']) { ?>
                  <div>
                    <ul>
                      <?php for ($wi = 0; $wi < count($category['children'][$i]['children_level2']); $wi++) { ?>
                      <li> <a href="<?php echo $category['children'][$i]['children_level2'][$wi]['href']; ?>"  ><?php echo $category['children'][$i]['children_level2'][$wi]['name']; ?> </a> </li>
                      <?php } ?>
                    </ul>
                  </div>
                  <?php } ?>
                </div>
                <?php } ?>
                <?php } ?>
                <?php } ?>
              </div>
              <?php } ?>
            </li>
            <?php } ?>
            <?php } ?>
            <?php } ?>
            <?php if($config->get('bigshop_menu_brands')== 1) { ?>
            <li class="menu_brands <?php if($config->get('bigshop_brands_display_style')== 1) { ?>name<?php } ?> dropdown">
              <?php if($bigshop_menu_brands_title = $config->get('bigshop_menu_brands_title'));  
 	if((isset($bigshop_menu_brands_title[$lang]) && $bigshop_menu_brands_title[$lang] != '')) { ?>
              <a href="<?php echo $manufacturer; ?>"><?php echo $bigshop_menu_brands_title[$lang]; ?></a>
              <?php } ?>
              <?php if($config->get('bigshop_brands_display_style')== 1) { ?>
              <div class="dropdown-menu">
                <?php if ($manufacturers) { ?>
                <ul>
                  <?php $counter = 0; foreach ($manufacturers as $manufacturer) { ?>
                  <li><a href="<?php echo $manufacturer['href']; ?>"><?php echo $manufacturer['name']; ?></a></li>
                  <?php $counter++; } ?>
                </ul>
                <?php } ?>
              </div>
              <?php } ?>
              <?php if($config->get('bigshop_brands_display_style')== 2) { ?>
              <div class="dropdown-menu">
                <?php if ($manufacturers) { ?>
                <?php $counter = 0; foreach ($manufacturers as $manufacturer) { ?>
                <div class="col-lg-1 col-md-2 col-sm-3 col-xs-6"> <a href="<?php echo $manufacturer['href']; ?>"><img src="<?php echo $manufacturer['image']; ?>" title="<?php echo $manufacturer['name']; ?>" alt="<?php echo $manufacturer['name']; ?>" /></a> </div>
                <?php $counter++; } ?>
                <?php } ?>
              </div>
              <?php } ?>
              <?php if($config->get('bigshop_brands_display_style')== 3) { ?>
              <div class="dropdown-menu">
                <?php if ($manufacturers) { ?>
                <?php $counter = 0; foreach ($manufacturers as $manufacturer) { ?>
                <div class="col-lg-1 col-md-2 col-sm-3 col-xs-6"> <a href="<?php echo $manufacturer['href']; ?>"><img src="<?php echo $manufacturer['image']; ?>" title="<?php echo $manufacturer['name']; ?>" alt="<?php echo $manufacturer['name']; ?>" /></a> <a href="<?php echo $manufacturer['href']; ?>"><?php echo $manufacturer['name']; ?></a> </div>
                <?php $counter++; } ?>
                <?php } ?>
              </div>
            </li>
            <?php } ?>
            <?php } ?>
            <?php if($config->get('bigshop_custom_link1')== 1) {
  	$bigshop_custom_link1_title = $config->get('bigshop_custom_link1_title');  

 	if((isset($bigshop_custom_link1_title[$lang]) && $bigshop_custom_link1_title[$lang] != '')) { ?>
            <li class="custom-link"><a href="<?php echo $config->get('bigshop_custom_link1_url'); ?>" target="<?php echo $config->get('bigshop_target_link1'); ?>"> <?php echo $bigshop_custom_link1_title[$lang]; ?></a> </li>
            <?php } ?>
            <?php } ?>
            <?php if($config->get('bigshop_custom_link2')== 1) {
  	$bigshop_custom_link2_title = $config->get('bigshop_custom_link2_title');  

 	if((isset($bigshop_custom_link2_title[$lang]) && $bigshop_custom_link2_title[$lang] != '')) { ?>
            <li class="custom-link"><a href="<?php echo $config->get('bigshop_custom_link2_url'); ?>" target="<?php echo $config->get('bigshop_target_link2'); ?>"> <?php echo $bigshop_custom_link2_title[$lang]; ?></a> </li>
            <?php } ?>
            <?php } ?>
            <?php if($config->get('bigshop_custom_link3')== 1) {
  	$bigshop_custom_link3_title = $config->get('bigshop_custom_link3_title');  

 	if((isset($bigshop_custom_link3_title[$lang]) && $bigshop_custom_link3_title[$lang] != '')) { ?>
            <li class="custom-link"><a href="<?php echo $config->get('bigshop_custom_link3_url'); ?>" target="<?php echo $config->get('bigshop_target_link3'); ?>"> <?php echo $bigshop_custom_link3_title[$lang]; ?></a> </li>
            <?php } ?>
            <?php } ?>
            <?php if($config->get('bigshop_custom_link4')== 1) {
  	$bigshop_custom_link4_title = $config->get('bigshop_custom_link4_title');  

 	if((isset($bigshop_custom_link4_title[$lang]) && $bigshop_custom_link4_title[$lang] != '')) { ?>
            <li class="custom-link"><a href="<?php echo $config->get('bigshop_custom_link4_url'); ?>" target="<?php echo $config->get('bigshop_target_link4'); ?>"> <?php echo $bigshop_custom_link4_title[$lang]; ?></a> </li>
            <?php } ?>
            <?php } ?>
            <?php if($config->get('bigshop_custom_link5')== 1) {
  	$bigshop_custom_link5_title = $config->get('bigshop_custom_link5_title');  
 	if((isset($bigshop_custom_link5_title[$lang]) && $bigshop_custom_link5_title[$lang] != '')) { ?>
            <li class="custom-link"><a href="<?php echo $config->get('bigshop_custom_link5_url'); ?>" target="<?php echo $config->get('bigshop_target_link5'); ?>"> <?php echo $bigshop_custom_link5_title[$lang]; ?></a> </li>
            <?php } ?>
            <?php } ?>
            <?php if($config->get('bigshop_custom_block_status')== 1) {
    $bigshop_custom_block_title = $config->get('bigshop_custom_block_title');
    $bigshop_custom_block_content = $config->get('bigshop_custom_block_content');    
    
    if(isset($bigshop_custom_block_title[$lang]) && $bigshop_custom_block_title[$lang]!= '') { ?>
            <li class="dropdown wrap_custom_block hidden-sm hidden-xs"><a><?php echo $bigshop_custom_block_title[$lang]; ?></a>
              <div class="dropdown-menu custom_block">
                <ul>
                  <li><?php echo html_entity_decode($bigshop_custom_block_content[$lang], ENT_QUOTES, 'UTF-8'); ?></li>
                </ul>
              </div>
            </li>
            <?php } ?>
            <?php } ?>
            <?php if($config->get('bigshop_custom_block2_status')== 1) {
    $bigshop_custom_block2_title = $config->get('bigshop_custom_block2_title');
    $bigshop_custom_block2_content = $config->get('bigshop_custom_block2_content');    
    
    if(isset($bigshop_custom_block2_title[$lang]) && $bigshop_custom_block2_title[$lang]!= '') { ?>
            <li class="dropdown wrap_custom_block hidden-sm hidden-xs"><a><?php echo $bigshop_custom_block2_title[$lang]; ?></a>
              <div class="dropdown-menu custom_block">
                <ul>
                  <li><?php echo html_entity_decode($bigshop_custom_block2_content[$lang], ENT_QUOTES, 'UTF-8'); ?></li>
                </ul>
              </div>
            </li>
            <?php } ?>
            <?php } ?>
            <?php if($config->get('bigshop_custom_block3_status')== 1) {
    $bigshop_custom_block3_title = $config->get('bigshop_custom_block3_title');
    $bigshop_custom_block3_content = $config->get('bigshop_custom_block3_content');    
    
    if(isset($bigshop_custom_block3_title[$lang]) && $bigshop_custom_block3_title[$lang]!= '') { ?>
            <li class="dropdown wrap_custom_block hidden-sm hidden-xs"><a><?php echo $bigshop_custom_block3_title[$lang]; ?></a>
              <div class="dropdown-menu custom_block">
                <ul>
                  <li><?php echo html_entity_decode($bigshop_custom_block3_content[$lang], ENT_QUOTES, 'UTF-8'); ?></li>
                </ul>
              </div>
            </li>
            <?php } ?>
            <?php } ?>
            <?php if($config->get('bigshop_information_page')== 1) { 
   if ($informations) { ?>
            <li class="dropdown information-link"><a><?php echo $text_information; ?></a>
              <div class="dropdown-menu">
                <ul>
                  <?php foreach ($informations as $information) { ?>
                  <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
                  <?php } ?>
                </ul>
              </div>
            </li>
            <?php } ?>
            <?php } ?>
            <?php if($config->get('bigshop_contact_us')== 1) { ?>
            <li class="contact-link"><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
            <?php } ?>
          </ul>
        </div>
        <?php if($config->get('bigshop_main_menu_style')== 2) { ?>
      </div>
      <?php } ?>
    </nav>
    <?php if($config->get('bigshop_main_menu_style')== 1) { ?>
  </div>
  <?php } ?>
</div>
<div id="container">
<?php if($config->get('bigshop_feature_box_per_row')== 'pr1') { ?>
<?php $class_fbox = 'col-xs-12'; ?>
<?php } elseif($config->get('bigshop_feature_box_per_row')== 'pr2') { ?>
<?php $class_fbox = 'col-sm-6 col-xs-12'; ?>
<?php } elseif($config->get('bigshop_feature_box_per_row')== 'pr3') { ?>
<?php $class_fbox = 'col-sm-4 col-xs-12'; ?>
<?php } elseif($config->get('bigshop_feature_box_per_row')== 'pr4') { ?>
<?php $class_fbox = 'col-md-3 col-sm-6 col-xs-12'; ?>
<?php } ?>
<?php if(($config->get('bigshop_feature_box_homepage_only')== 1) && (isset($ishome)) || ($config->get('bigshop_feature_box_homepage_only')== 2)) { ?>
<?php if($config->get('bigshop_feature_box_show_header_footer')== 1) {
$bigshop_feature_box_per_row = $config->get('bigshop_feature_box_per_row');
$bigshop_feature_box1_title = $config->get('bigshop_feature_box1_title');
$bigshop_feature_box1_subtitle = $config->get('bigshop_feature_box1_subtitle');
$bigshop_feature_box2_title = $config->get('bigshop_feature_box2_title');
$bigshop_feature_box2_subtitle = $config->get('bigshop_feature_box2_subtitle');
$bigshop_feature_box3_title = $config->get('bigshop_feature_box3_title');
$bigshop_feature_box3_subtitle = $config->get('bigshop_feature_box3_subtitle');
$bigshop_feature_box4_title = $config->get('bigshop_feature_box4_title');
$bigshop_feature_box4_subtitle = $config->get('bigshop_feature_box4_subtitle');

if((isset($bigshop_feature_box1_title[$lang]) && $bigshop_feature_box1_title[$lang] != '') || (isset($bigshop_feature_box1_subtitle[$lang]) && $bigshop_feature_box1_subtitle[$lang] != '') || (isset($bigshop_feature_box2_title[$lang]) && $bigshop_feature_box2_title[$lang] != '') || (isset($bigshop_feature_box2_subtitle[$lang]) && $bigshop_feature_box2_subtitle[$lang] != '') || (isset($bigshop_feature_box3_title[$lang]) && $bigshop_feature_box3_title[$lang] != '') || (isset($bigshop_feature_box3_subtitle[$lang]) && $bigshop_feature_box3_subtitle[$lang] != '') || (isset($bigshop_feature_box4_title[$lang]) && $bigshop_feature_box4_title[$lang] != '') || (isset($bigshop_feature_box4_subtitle[$lang]) && $bigshop_feature_box4_subtitle[$lang] != '')) { ?>
<div class="container">
  <div class="custom-feature-box row">
    <?php if($config->get('bigshop_feature_box1_status')== 1) { if((isset($bigshop_feature_box1_title[$lang]) && $bigshop_feature_box1_title[$lang] != '') || (isset($bigshop_feature_box1_subtitle[$lang]) && $bigshop_feature_box1_subtitle[$lang] != '')) { ?>
    <div class="<?php echo $class_fbox; ?>">
      <div class="feature-box fbox_1">
        <div class="title"><?php echo $bigshop_feature_box1_title[$lang]; ?></div>
        <p><?php echo $bigshop_feature_box1_subtitle[$lang]; ?></p>
      </div>
    </div>
    <?php } ?>
    <?php } ?>
    <?php if($config->get('bigshop_feature_box2_status')== 1) { if((isset($bigshop_feature_box2_title[$lang]) && $bigshop_feature_box2_title[$lang] != '') || (isset($bigshop_feature_box2_subtitle[$lang]) && $bigshop_feature_box2_subtitle[$lang] != '')) { ?>
    <div class="<?php echo $class_fbox; ?>">
      <div class="feature-box fbox_2">
        <div class="title"><?php echo $bigshop_feature_box2_title[$lang]; ?></div>
        <p><?php echo $bigshop_feature_box2_subtitle[$lang]; ?></p>
      </div>
    </div>
    <?php } ?>
    <?php } ?>
    <?php if($config->get('bigshop_feature_box3_status')== 1) { if((isset($bigshop_feature_box3_title[$lang]) && $bigshop_feature_box3_title[$lang] != '') || (isset($bigshop_feature_box3_subtitle[$lang]) && $bigshop_feature_box3_subtitle[$lang] != '')) { ?>
    <div class="<?php echo $class_fbox; ?>">
      <div class="feature-box fbox_3">
        <div class="title"><?php echo $bigshop_feature_box3_title[$lang]; ?></div>
        <p><?php echo $bigshop_feature_box3_subtitle[$lang]; ?></p>
      </div>
    </div>
    <?php } ?>
    <?php } ?>
    <?php if($config->get('bigshop_feature_box4_status')== 1) { if((isset($bigshop_feature_box4_title[$lang]) && $bigshop_feature_box4_title[$lang] != '') || (isset($bigshop_feature_box4_subtitle[$lang]) && $bigshop_feature_box4_subtitle[$lang] != '')) { ?>
    <div class="<?php echo $class_fbox; ?>">
      <div class="feature-box fbox_4">
        <div class="title"><?php echo $bigshop_feature_box4_title[$lang]; ?></div>
        <p><?php echo $bigshop_feature_box4_subtitle[$lang]; ?></p>
      </div>
    </div>
    <?php } ?>
    <?php } ?>
  </div>
</div>
<?php } ?>
<?php } ?>
<?php } ?>