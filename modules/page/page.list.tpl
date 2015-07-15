<!-- BEGIN: MAIN -->

     <section class="breadcrumbs_block clearfix parallax">
			<div class="container center">
				<h2>{LIST_CATTITLE} <!-- IF {LIST_CATDESC} -->{LIST_CATDESC}<!-- ENDIF --></h2>
				<!-- IF {LIST_CATSHORTPATH} --><p>{LIST_CATPATH}</p><!-- ENDIF -->
			</div>
		</section>

		<section id="blog">
			
             <div class="sidebar col-lg-3 col-md-3 padbot50 floatright">


                        <div class="sidepanel widget_meta">
                            <ul>
                                <li><a href="{PHP|cot_url('page', 'c=portfolio&al=Портфолио')}" >{PHP.L.Portfolio}</a></li>
                                <li><a href="{PHP|cot_url('page', 'c=gallery&al=Моими-глазами')}" >{PHP.L.mmg}</a></li>
                                <li><a href="#" >{PHP.L.Stream}</a></li>
                                <li><a href="#" >{PHP.L.other}</a></li>
                            </ul>
                        </div>



                    <!--    <div class="sidepanel widget_popular_posts">
                            <h3>{PHP.L.Topnews}:</h3>

                            <div class="recent_posts_widget clearfix">
                                <div class="post_item_img_widget">
                                    <img src=" {FILE "themes/{PHP.theme}/images/blog/1.jpg"}" alt="" />
                                </div>
                                <div class="post_item_content_widget">
                                    <a class="{PAGE_ROW_SHORTTITLE}" href="{LIST_ROW_URL}" >{PHP|pagelist('pagelist.top','6','page_count DESC','page_count != "0"','','system','','')}</a>
                                    <ul class="post_item_inf_widget">
                                        <li>{LIST_ROW_DATE}</li>
                                    </ul>
                                </div>
                            </div>
                        </div> 

                        <hr> -->


                        <div class="sidepanel widget_tags">
                            <h3>{PHP.L.Tags}</h3>
                            <ul>
                                <li>{LIST_TAG_CLOUD}</li>
                            </ul>
                        </div>

                        <hr>

                        <!-- TEXT WIDGET -->
                        <div class="sidepanel widget_text">
                            <h3>{PHP.L.AboutBlog}</h3>
                            <p>{PHP.L.Aboutblock}</p>
                        </div>
                    </div>

			<div class="container">
				
				 <!-- BEGIN: LIST_ROW -->
				<div class="row">
				
			
					<div class="blog_block col-lg-9 col-md-9 padbot50">
						
					
						<div class="blog_post margbot50 clearfix" data-animated="fadeInUp">
							<div class="blog_post_img">
								<a class="zoom" href="{LIST_ROW_ID|att_get('page',$this,'path')}" title="{LIST_ROW_ID|att_get('page',$this,'title')}">
    <img src="{LIST_ROW_ID|att_get('page',$this)|att_thumb($this,400,400)}" alt="Foobar" />
</a>
							</div>
							<div class="blog_post_descr">
								<div class="blog_post_date">{LIST_ROW_DATE}</div>
								<a class="blog_post_title" href="{LIST_ROW_URL}">{LIST_ROW_SHORTTITLE}</a>
                                <!-- IF {PHP.usr.isadmin} -->
                  <a href="{LIST_ROW_ADMIN_EDIT_URL}" class="small pull-right">
                    <i class="fa fa-pencil-square-o"></i>
                  </a>
                                <!-- ENDIF -->
							<ul class="blog_post_info">
									<li><a href="javascript:void(0);" >{LIST_ROW_OWNER_NAME}</a></li>
									<li><a href="javascript:void(0);" >{LIST_ROW_CATPATH}</a></li>
									<li><a href="javascript:void(0);" >{LIST_ROW_COMMENTS}</a></li>
                                    <li><script type="text/javascript" src="//yandex.st/share/share.js" charset="utf-8"></script>
		<div class="yashare-auto-init" data-yashareL10n="ru" data-yashareType="none" data-yashareQuickServices="vkontakte,facebook,twitter,gplus"></li>
								</ul> 
								<hr>
								<div class="blog_post_content">{LIST_ROW_TEXT_CUT}</div>
								<!-- IF {LIST_ROW_TEXT_IS_CUT} --><a class="read_more_btn" href="{LIST_ROW_URL}" >{PHP.L.ReadMore}</a><!-- ENDIF -->
							</div>
						</div>
						<!-- END: LIST_ROW -->


				
						
						 <!-- IF {LIST_TOP_PAGINATION} -->
						<ul class="pagination clearfix">
							{PHP.L.Page} {LIST_TOP_CURRENTPAGE} {PHP.L.Of} {LIST_TOP_TOTALPAGES}{LIST_TOP_PAGEPREV}{LIST_TOP_PAGINATION}{LIST_TOP_PAGENEXT}
						</ul>
					</div>
                    <!-- ENDIF -->



                   
				</div>
			</div>
		</section>
    

	

<!-- END: MAIN -->
