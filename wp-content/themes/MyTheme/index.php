<?php get_header();?>
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>
    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="wp-content/themes/MyTheme/img/autumn1.jpg" alt="Autumn" class="img-responsive">
      </div>
      <div class="item">
        <img src="wp-content/themes/MyTheme/img/winter1.jpg" alt="Winter">
      </div>
      <div class="item">
        <img src="wp-content/themes/MyTheme/img/spring1.jpg" alt="Spring">
      </div>
      <div class="item">
        <img src="wp-content/themes/MyTheme/img/summer1.jpg" alt="Summer">
      </div>
    </div>
    <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<div class="container">
  
  <div class="row">
    <div class="col-sm-4">
      <?php if(have_posts()):while(have_posts()):the_post();
	  the_title('<h3>', '</h3>');
      the_content();
	  the_permalink();
	  endwhile;
	  endif;
	  ?>
    </div>
    <div class="col-sm-4">
      <h3>Column 2</h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit...</p>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris...</p>
    </div>
    <div class="col-sm-4">
      <h3>Column 3</h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit...</p>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris...</p>
    </div>
  </div>
</div>

<?php get_footer(); ?>