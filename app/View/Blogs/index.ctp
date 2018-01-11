
<body>
    <div class="as-mainwrapper">

        <!-- Start Blog area -->
        <div class="blog-page-area pd-70">
            <div class="container">
				<div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="blog-main-heading">
                            <h1>My Blog</h1>
                            <p></p>
                        </div>
                    </div>
                </div>
                <div class="row mg-b-30">
                    <?php foreach ($blogs as $blog): ?>
                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 bl-res-mg-bt" style="margin-top: 20px;">
                                <div class="single-blog-item">
                                    <div class="single-blog-image">
                                        <a href="/blogs/view/<?=$blog['Blog']["id"]?>">
                                            <img style="width: 370px;height: 250px;" src="<?php echo $blog['BrwImage']['main'] ? $blog['BrwImage']['main']['url'] : '/img/blog/1.jpg'; ?>" alt="No Image">
                                            <div class="date-blog">
                                            <p class="date-number"><?= date('d', strtotime($blog['Blog']['created'])); ?></p>
                                            <p class="date-month"><?= date('M', strtotime($blog['Blog']['created'])); ?></p>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="single-blog-text">
                                        <h3><a class="blog-hd" href="/blogs/view/<?=$blog['Blog']["id"]?>"><?= $blog['Blog']['title']; ?></a></h3>
                                        <div class="single-item-comment-view">
                                            <span><i class="fa fa-clock-o"></i> <?= date('Y/m/d H:i:s', strtotime($blog['Blog']['created'])); ?></span>
                                        </div>
                                        <p style="text-overflow: ellipsis;overflow: hidden;width: 80%;height: 40px;white-space: nowrap;"><?= $blog['Blog']['body']; ?></p>
                                        <a class="readmore" href="/blogs/view/<?=$blog['Blog']["id"]?>">Read More</a>
                                    </div>
                                </div>
                            </div>
                    <?php endforeach;?>
                    <?php unset($blog);?>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                    <br>
                    <div class="row" style="text-align: center">
                        <div class="pagination pagination-large text-center">
                            <ul class="pagination">
                                <?php
                                echo $this->Paginator->prev(__('« Previous'), array('tag' => 'li'), null, array('tag' => 'li','class' => 'disabled','disabledTag' => 'a'));
                                echo $this->Paginator->numbers(array('separator' => '','currentTag' => 'a', 'currentClass' => 'active','tag' => 'li','first' => 1));
                                echo $this->Paginator->next(__('Next »'), array('tag' => 'li','currentClass' => 'disabled'), null, array('tag' => 'li','class' => 'disabled','disabledTag' => 'a'));
                                ?>
                            </ul>
                        </div>
                    </div>
                    <div class="row" style="text-align: center">
                        <?php echo $this->Paginator->counter(); ?>
                    </div>
                    <br>
                    
                    </div>
                </div>
            </div>
        </div>
        <!-- End Blog area -->
        <!--Footer Start -->
        <div class="hdream-footer-area pd-70">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 custom-footer-overlay">
                        <div class="footer-logo-wrap">
                            <div class="footer-logo">
								<h2>About Us</h2>
                                <p>Lorem Ipsum is simply dummy text of the printing industry.It takes time and money to build or purchase.</p>
                            </div>
                            <div class="footer-address-details">
                                <ul class="get-in-touch">
                                    <li><i class="fa fa-home" aria-hidden="true"></i> Sector: #11, Road No: #17, House No: 06, Dhaka-1230, Bangladesh.</li>
                                    <li><i class="fa fa-phone-square" aria-hidden="true"></i> +01962067309, 01955239099</li>
                                </ul>
                            </div>
                            <div class="footer-social-media">
                                <ul class="footer-social-icon">
                                    <li><a href="#"><i class="fa fa-facebook"></i></a>
                                    </li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a>
                                    </li>
                                    <li><a href="#"><i class="fa fa-linkedin"></i></a>
                                    </li>
                                    <li><a href="#"><i class="fa fa-youtube"></i></a>
                                    </li>
                                    <li><a href="#"><i class="fa fa-google-plus"></i></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
                        <div class="row">
                            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                <div class="latest-news">
                                    <h4>Latest News</h4>
                                    <ul class="latest-news-nav">
                                        <li>
                                            <div class="latest-news-img">
                                                <img src="/img/footer/1.jpg" alt="" />
                                            </div>
                                            <div class="latest-news-details">
                                                <h5><a href="#">Dream House Plans</a></h5>
                                                <p>Lorem Ipsum is simply dummy text</p>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="latest-news-img">
                                                <img src="/img/footer/2.jpg" alt="" />
                                            </div>
                                            <div class="latest-news-details">
                                                <h5><a href="#">Dream House Plans</a></h5>
                                                <p>Lorem Ipsum is simply dummy text</p>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="latest-news-img">
                                                <img src="/img/footer/3.jpg" alt="" />
                                            </div>
                                            <div class="latest-news-details">
                                                <h5><a href="#">Dream House Plans</a></h5>
                                                <p>Lorem Ipsum is simply dummy text</p>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                <div class="latest-blog">
                                    <h4>Latest Blog</h4>
                                    <ul class="latest-blog-nav">
                                        <li>
                                            <div class="latest-blog-img">
                                                <img src="/img/footer/4.jpg" alt="" />
                                            </div>
                                            <div class="latest-blog-details">
                                                <h5><a href="#">Dream House Plans</a></h5>
                                                <p>Lorem Ipsum is simply dummy text</p>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="latest-blog-img">
                                                <img src="/img/footer/5.jpg" alt="" />
                                            </div>
                                            <div class="latest-blog-details">
                                                <h5><a href="#">Dream House Plans</a></h5>
                                                <p>Lorem Ipsum is simply dummy text</p>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="latest-blog-img">
                                                <img src="/img/footer/6.jpg" alt="" />
                                            </div>
                                            <div class="latest-blog-details">
                                                <h5><a href="#">Dream House Plans</a></h5>
                                                <p>Lorem Ipsum is simply dummy text</p>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                <div class="quick-contact">
                                    <h4>Quick Contact</h4>
                                    <p>Lorem Ipsum is simply dummy text of the printing industry.It takes time and money to build or purchase.</p>
                                    <div class="contact-form-quick">
                                        <input class="email-ft" type="email" placeholder="Type your E-mail address...">
                                        <textarea class="message2" name="message2" placeholder="Write here..."></textarea>
                                        <button type="submit" value="send">Send</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
		<div class="fotter-bottom-area">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="copy-right">
							<p>Copyright &#169; 2017 <a href="http://uttaraitpark.com/">uttaraitpark</a> All rights reserved.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
    </div>
    <!--Footer end -->
    <!-- Color Switcher -->

</body>
