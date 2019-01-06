<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="tw-zh">
  <link rel="stylesheet" href="css/main_styles.css">
  <head>
    <title>Time To Travel</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <jsp:include page="/voyage/nav.jsp" />
  </head>
  <body>

    <!-- END nav -->
    <section class="home-slider owl-carousel">
      <div class="slider-item" style="background-image: url('images/bg_1.jpg');" data-stellar-background-ratio="0.5">
        <div class="overlay"></div>
        <div class="container">
          <div class="row slider-text align-items-center">
            <div class="col-md-7 col-sm-12 ftco-animate">
              <p class="breadcrumbs"><span class="mr-2"><a href="index.jsp">Home</a></span> <span>ticket</span></p>
              <h1 class="mb-3">Ticket</h1>
            </div>
          </div>
        </div>
      </div>
    </section>
        
	<div class="home_search">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="home_search_container">
						<div class="home_search_title">旅遊票券</div>
						<div class="home_search_content">
							<form action="#" class="home_search_form" id="home_search_form">
								<div class="d-flex flex-lg-row flex-column align-items-start justify-content-lg-between justify-content-start">
									<input type="text" class="search_input search_input_1" style="width:24%" placeholder="請輸入國家" required="required">
									<input type="text" class="search_input search_input_2" style="width:24%"placeholder="類型" required="required">
									<input type="text" class="search_input search_input_3" style="width:24%"placeholder="關鍵字" required="required">
									<button class="home_search_button">搜尋</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>    
   
    <!-- END slider -->
    <section class="ftco-section bg-light">
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-lg-3 ftco-animate">
            <div class="blog-entry">
              <a  class="block-20" style="background-image: url('images/image_1.jpg');">
              </a>
              <div class="text p-4">
                <div class="meta">
                  <div>艾菲爾鐵塔</div>
                  <div>€50</div>
                </div>
                <div>
                <input type="image" img src="images/miuns.png" onClick="document.form1.submit()" width="3%" height="3%">
                </div>
                <p class="clearfix">
                  <a href="https://zh.wikipedia.org/wiki/%E8%89%BE%E8%8F%B2%E7%88%BE%E9%90%B5%E5%A1%94" class="float-left">Read more</a>
                 </p>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-3 ftco-animate">
            <div class="blog-entry">
              <a class="block-20" style="background-image: url('images/image_2.jpg');">
              </a>
              <div class="text p-4">
                <div class="meta">
                  <div>巴黎凱旋門</div>
                  <div>€50</div>
                </div>
                <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
                <p class="clearfix">
                  <a href="https://zh.wikipedia.org/wiki/%E5%B7%B4%E9%BB%8E%E5%87%AF%E6%97%8B%E9%97%A8" class="float-left">Read more</a>
                </p>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-3 ftco-animate">
            <div class="blog-entry" data-aos-delay="200">
              <a class="block-20" style="background-image: url('images/image_3.jpg');">
              </a>
              <div class="text p-4">
                <div class="meta">
                  <div>羅浮宮</div>
                  <div>€50</div>
                </div>
                <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
                <p class="clearfix">
                  <a href="https://zh.wikipedia.org/wiki/%E5%8D%A2%E6%B5%AE%E5%AE%AB" class="float-left">Read more</a>
                </p>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-3 ftco-animate">
            <div class="blog-entry" data-aos-delay="200">
              <a  class="block-20" style="background-image: url('images/image_4.jpg');">
              </a>
              <div class="text p-4">
                <div class="meta">
                  <div>新天鵝堡</div>
                  <div>€50</div>
                </div>
                <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
                <p class="clearfix">
                  <a href="https://zh.wikipedia.org/wiki/%E6%96%B0%E5%A4%A9%E9%B9%85%E5%A0%A1" class="float-left">Read more</a>
                </p>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-3 ftco-animate">
            <div class="blog-entry" data-aos-delay="200">
              <a class="block-20" style="background-image: url('images/image_5.jpg');">
              </a>
              <div class="text p-4">
                <div class="meta">
                  <div>黃金快車</div>
                  <div>€50</div>
                </div>
                <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
                <p class="clearfix">
                  <a href="https://www.myswitzerland.com/zo-tw/goldenpass-line.html" class="float-left">Read more</a>
                </p>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-3 ftco-animate">
            <div class="blog-entry" data-aos-delay="200">
              <a class="block-20" style="background-image: url('images/image_6.jpg');">
              </a>
              <div class="text p-4">
                <div class="meta">
                  <div>羅馬競技場</div>
                  <div>€50</div>
                </div>
                <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
                <p class="clearfix">
                  <a href="https://zh.wikipedia.org/wiki/%E7%BD%97%E9%A9%AC%E6%96%97%E5%85%BD%E5%9C%BA" class="float-left">Read more</a>
                </p>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-3 ftco-animate">
            <div class="blog-entry" data-aos-delay="200">
              <a class="block-20" style="background-image: url('images/image_7.jpg');">
              </a>
              <div class="text p-4">
                <div class="meta">
                  <div>埃及金字塔</div>
                  <div>€50</div>
                </div>
                <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
                <p class="clearfix">
                  <a href="https://zh.wikipedia.org/wiki/%E5%9F%83%E5%8F%8A%E9%87%91%E5%AD%97%E5%A1%94" class="float-left">Read more</a>
                </p>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-3 ftco-animate">
            <div class="blog-entry" data-aos-delay="200">
              <a class="block-20" style="background-image: url('images/image_8.jpg');">
              </a>
              <div class="text p-4">
                <div class="meta">
                  <div>米其林餐廳</div>
                  <div>€50</div>
                </div>
                <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
                <p class="clearfix">
                  <a href="#https://guide.michelin.com/" class="float-left">Read more</a>
                </p>
              </div>
            </div>
          </div>
        </div>
         <div class="row mt-5">
              <div class="col text-center">
                <div class="block-27">
                  <ul>
                    <li><a href="#">&lt;</a></li>
                    <li class="active"><span>1</span></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">&gt;</a></li>
                  </ul>
                </div>
              </div>
            </div>
      </div>
    </section>
    <jsp:include page="/voyage/footer.jsp" />
  </body>
</html>