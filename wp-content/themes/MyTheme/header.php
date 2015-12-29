<!DOCTYPE html>
<html lang="en">
<head>
  <title><?php bloginfo('name'); ?></title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  	<?php wp_head(); ?>
 </head>
 <body>
<div class="head">
<nav role="navigation" class="navbar navbar-default">
	<div class="container-fluid">
		  <div class="navbar-header"><!-- Назва компанії і кнопка розгортання меню для мобільних -->
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#nav_menu"><!-- Кнопка, що згортає і розгортає прив'язаний до неї блок -->
			<span class="sr-only">Toggle navigation</span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="">CitySite</a><!-- Назва компанії -->
		  </div>
		 <!-- Елементи меню -->
		 <?php 
		 	   /** Displays a navigation menu */
		 		$args = array(
		 			'theme_location' => 'main_menu',
		 			'menu' => 'MainMenu',
		 			'container' => 'div',
		 			'container_class' => 'collapse navbar-collapse ',
		 			'container_id' => 'nav_menu',
		 			'menu_class' => 'nav navbar-nav',
		 			'menu_id' => '',
		 			'echo' => true,
		 			'fallback_cb' => 'wp_page_menu',
		 			'before' => '',
		 			'after' => '',
		 			'link_before' => '',
		 			'link_after' => '',
		 			'items_wrap' => '<ul id = "%1$s" class = "%2$s">%3$s</ul>',
		 			'depth' => 0,
		 			'walker' => ''
		 		);
		 	
		 		wp_nav_menu( $args );
		 ?>
		 
	</div>
</nav>
</div>