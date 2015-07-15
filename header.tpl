<!-- BEGIN: HEADER -->
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name='yandex-verification' content='53065c74fd73ff31' />
    <!-- IF {HEADER_META_DESCRIPTION} --><meta name="description" content="{HEADER_META_DESCRIPTION}"><!-- ENDIF -->
    <!-- IF {HEADER_META_KEYWORDS} --><meta name="keywords" content="{HEADER_META_KEYWORDS}"><!-- ENDIF -->
    {HEADER_BASEHREF}
    <link rel="canonical" href="{HEADER_CANONICAL_URL}">
    <title>{HEADER_TITLE}</title>
    <link rel="shortcut icon" href="favicon.ico">
    <link rel="apple-touch-icon" href="apple-touch-icon.png">
    {HEADER_HEAD}
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
     
<script>
		
		//PrettyPhoto
		jQuery(document).ready(function() {
			$("a[rel^='prettyPhoto']").prettyPhoto();
		});
		
		//BlackAndWhite
		$(window).load(function(){
			$('.client_img').BlackAndWhite({
				hoverEffect : true, // default true
				// set the path to BnWWorker.js for a superfast implementation
				webworkerPath : false,
				// for the images with a fluid width and height 
				responsive:true,
				// to invert the hover effect
				invertHoverEffect: false,
				// this option works only on the modern browsers ( on IE lower than 9 it remains always 1)
				intensity:1,
				speed: { //this property could also be just speed: value for both fadeIn and fadeOut
					fadeIn: 300, // 200ms for fadeIn animations
					fadeOut: 300 // 800ms for fadeOut animations
				},
				onImageReady:function(img) {
					// this callback gets executed anytime an image is converted
				}
			});
		});
		
	</script>

  </head>
  <body>
   
<img id="preloader" src="themes/kush/images/preloader.gif" alt="Загрузка" />

<div class="preloader_hide">

	
	<div id="page">
	
		
		<header>
			
			
			<div class="menu_block">
			
			
				<div class="container clearfix">
				<div class="pull-left switch-lang">
				<!--	{PHP|ilanguage('ru/Русский;en/English','selected_language_class')} -->
					</div>
					
					<div id="search-form" class="pull-right">
						<form id="search" action="{PHP|cot_url('plug','e=search')}" method="post" class="form-search" >
							<input type="text" name="Search" value="{PHP.L.Search}..." onFocus="if (this.value == '{PHP.L.Search}...') this.value = '{PHP.L.Search}...';" onBlur="if (this.value == '{PHP.L.Search}...') this.value = '{PHP.L.Search}...';" />
						</form>
					</div>
					
					
					<div class="pull-right">
						<nav class="navmenu center">
							<ul>
								<li class="first active scroll_btn"><a href="{PHP.cfg.mainurl}" >{PHP.L.Home}</a></li>
								<li class="scroll_btn"><a href="#about" >{PHP.L.About}</a></li>
								<li class="scroll_btn"><a href="#projects" >{PHP.L.Portfolio}</a></li>
								<li class="scroll_btn"><a href="#team" >{PHP.L.Skills}</a></li>
								<li class="scroll_btn"><a href="#news" >{PHP.L.Jobs} / {PHP.L.Testimonials} </a></li>
                                <li class="scroll_btn"><a href="{PHP|cot_url('page', 'c=news')}">{PHP.L.Blog}</a></li>
								<li class="scroll_btn last"><a href="#contacts" >{PHP.L.Contact}</a></li>
								<!--<li class="sub-menu">
									<a href="{PHP|cot_url('page', 'c=news')}">{PHP.L.Blog}</a>
									<ul>
										<li><a href="blog.html" >Blog</a></li>
										<li><a href="blog-post.html" >Blog Post</a></li>
										<li><a href="portfolio-post.html" >Portfolio Single Work</a></li>
									</ul>
								</li>-->
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</header>
<!-- END: HEADER -->
