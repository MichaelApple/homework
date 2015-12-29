<?php
/*
* Скрипти і стилі, що загружатимуться
*/

function loading_style_script(){			/* *прописуємо свою ф-цію loading_style_script*/
	wp_enqueue_script('jquery');
	wp_enqueue_script('bootstrap', get_template_directory_uri().'/js/bootstrap.js');
	wp_enqueue_style('style', get_template_directory_uri().'/style.css');
};

/*
* Загружаємо стилі і скрипти
*/
add_action('wp_enqueue_scripts', 'loading_style_script'); /* *зареєстровуємо свою ф-цію loading_style_script*/

register_nav_menu( 'main_menu', "MainMenu" );
?>