<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!--상단--> 
<div id="wrap" >
  <div class="header">
    <div class="header_content">
    <div class="contents">
       <h1>
       <a href="/Home/list">
         <img src="/images/logo.png" alt="ElVOM">
       </a>
       <span>ENCOREPLEX</span>
       </h1>
   <!--  -->
   <ul class="info">
     <li>
      <a href="로그인url">
        <img src="/images/login.png" alt="로그인">
        <span>로그인</span>
      </a>
      </li>
      <li>
      <a href="회원가입url">
        <img src="/images/join.png" alt="회원가입">
        <span>회원가입</span>
      </a>
      </li>
      <li>
      <a href="내정보url">
        <img src="/images/info.png" alt="MY ElVOM">
        <span>MY ElVOM</span>
      </a>
      </li>
   </ul> 
  </div>
  </div>
   <!-- 검색창 -->
   <div class="search">
     <label for="search">
       <input type="text" id="keyword" value>
       <input type="hidden" id="hi_keyword" name="hi_keyword">
     </label>
     <button type="button" class="buttonSearch" id="id_buttonSearch">검색</button>
     <iframe src=""rame src=""  width="0" height="0" title="" frameborder="0" scrolling="no" marginwidth="0" 
     marginheight="0" allowfullscreen="allowfullscreen" mozallowfullscreen="mozallowfullscreen" msallowfullscreen="msallowfullscreen" 
     oallowfullscreen="oallowfullscreen" webkitallowfullscreen="webkitallowfullscreen">
       <html>
         <head></head>
         <body marginwidth="0" marginheight="0"></body>
       </html>
     </iframe>
  
   </div>
   </div>
   
   <!-- 무비차트 -->
   
  <div id="contaniner" class>
  <!-- <input type="hidden" id="isOpenUserEmailYNPopup" name="isOpenUserEmailYNPopup" value="False"> -->
   <div class="movieChart">
     <div class="contents">
       <div class="movieChartBeScreen_btn_wrap">
          <div class="tabBtn_wrap">
          <h3><a href="#none" class="active" id="btnMovie">무비차트</a></h3>
     </div>
     <div class="movieChart_list" id="id_movieChart_list">
                        <div class="swiper-wrapper" style="transform: translate3d(0px, 0px, 0px);">
                                
                           <!-- 스파이더맨 -->
                                <div class="slide_movie" style="width: 170.4px; margin-right: 32px;">
                                    <div class="img_wrap" data-scale="false">
                                        <img src="../images/posters/1.jpg" alt="스파이더맨-노 웨이 홈" onerror="errorImage(this)" style= width:600px;height:859px>
                                        <div class="movieAge">
                                            <img src="../images/posters/grade-12.png" alt="12세 이상세">
                                            
                                        
                                        </div>
                                        <div class="screenType_wrap">
                                            
                                          <!--   <i class="screenType"><img src="https://img.cgv.co.kr/R2014/images/common/logo/imax_white.png" alt="imax"></i>
                                            
                                            <i class="screenType"><img src="https://img.cgv.co.kr/R2014/images/common/logo/forDX_white.png" alt="forDX"></i>
                                            
                                            <i class="screenType"><img src="https://img.cgv.co.kr/R2014/images/common/logo/screenx_white.png" alt="screenx"></i> -->
                                            
                                        </div>
                                        <div class="movieChart_btn">
                                            <a href="상세페이지" class="btn_movieChart_detail">상세보기</a>
                                        
                                            <a href="예매 페이지" class="btn_movieChart_ticketing">예매하기</a>
                                        
                                        
                                        </div>
                                    </div>
                                    <div class="movie_info">
                                        <strong class="movieName">스파이더맨-노 웨이 홈</strong>
                                        <span>예매율 34.5%</span>
                                    </div>
                                </div>
                                
                                
                            <!-- 경관의피 -->    
                                <div class="slide_movie" style="width: 170.4px; margin-right: 32px;">
                                    <div class="img_wrap" data-scale="false">
                                        <img src="../images/posters/2.jpg" alt="경관의 피" onerror="errorImage(this)" style= width:600px;height:859px>
                                        <div class="movieAge">
                                            <img src="../images/posters/grade-15.png" alt="15세 이상세">
                                            
                                        
                                        </div>
                                        <div class="screenType_wrap">
                                            
                                        </div>
                                        <div class="movieChart_btn">
                                          <a href="상세페이지" class="btn_movieChart_detail">상세보기</a>
                                        
                                            <a href="예매 페이지" class="btn_movieChart_ticketing">예매하기</a>
                                        
                                        
                                        </div>
                                    </div>
                                    <div class="movie_info">
                                        <strong class="movieName">경관의 피</strong>
                                        <span>예매율 24.9%</span>
                                    </div>
                                </div>
                                
                                
                             <!-- 씽2게더 -->   
                                <div class="slide_movie" style="width: 170.4px; margin-right: 32px;">
                                    <div class="img_wrap" data-scale="false">
                                        <img src="../images/posters/3.jpg" alt="씽2게더" onerror="errorImage(this)" style= width:600px;height:859px>
                                        <div class="movieAge">
                                            <img src="../images/posters/grade-all.png" alt="전체세">
                                            
                                        
                                        </div>
                                        <div class="screenType_wrap">
                                            
                                        </div>
                                        <div class="movieChart_btn">
                                           <a href="상세페이지" class="btn_movieChart_detail">상세보기</a>
                                        
                                            <a href="예매 페이지" class="btn_movieChart_ticketing">예매하기</a>
                                        
                                        
                                        </div>
                                    </div>
                                    <div class="movie_info">
                                        <strong class="movieName">씽2게더</strong>
                                        <span>예매율 20.5%</span>
                                    </div>
                                </div>
                                
                             <!-- 해피뉴이어 -->   
                                <div class="slide_movie" style="width: 170.4px; margin-right: 32px;">
                                    <div class="img_wrap" data-scale="false">
                                        <img src="../images/posters/4.jpg" alt="해피 뉴 이어" onerror="errorImage(this)" style= width:600px;height:859px>
                                        <div class="movieAge">
                                            <img src="../images/posters/grade-12.png" alt="12세 이상세">
                                            
                                        
                                        </div>
                                        <div class="screenType_wrap">
                                            
                                        </div>
                                        <div class="movieChart_btn">
                                           <a href="상세페이지" class="btn_movieChart_detail">상세보기</a>
                                        
                                            <a href="예매 페이지" class="btn_movieChart_ticketing">예매하기</a>
                                        
                                        
                                        </div>
                                    </div>
                                    <div class="movie_info">
                                        <strong class="movieName">해피 뉴 이어</strong>
                                        <span>예매율 3.7%</span>
                                    </div>
                                </div>
                                
                                
                             <!-- 킹스맨 -->   
                                <div class="slide_movie" style="width: 170.4px; margin-right: 32px;">
                                    <div class="img_wrap" data-scale="false">
                                        <img src="../images/posters/5.jpg" alt="킹스맨-퍼스트 에이전트" onerror="errorImage(this)" style= width:600px;height:859px>
                                        <div class="movieAge">
                                            <img src="../images/posters/grade-19.png" alt="청소년 관람불가세">
                                            
                                        
                                        </div>
                                        <div class="screenType_wrap">
                                            
                                        </div>
                                        <div class="movieChart_btn">
                                           <a href="상세페이지" class="btn_movieChart_detail">상세보기</a>
                                        
                                            <a href="예매 페이지" class="btn_movieChart_ticketing">예매하기</a>
                                        
                                        
                                        </div>
                                    </div>
                                    <div class="movie_info">
                                        <strong class="movieName">킹스맨-퍼스트 에이전트</strong>
                                        <span>예매율 3.6%</span>
                                    </div>
                                </div>
                                
                                
                              <!-- 드라이브 마이카 -->  
                                <div class="slide_movie" style="width: 170.4px; margin-right: 32px;">
                                    <div class="img_wrap" data-scale="false">
                                        <img src="../images/posters/6.jpg" alt="드라이브 마이 카" onerror="errorImage(this)" style= width:600px;height:859px>
                                        <div class="movieAge">
                                            <img src="../images/posters/grade-15.png" alt="15세 이상세">
                                            
                                        
                                        </div>
                                        <div class="screenType_wrap">
                                            
                                        </div>
                                        <div class="movieChart_btn">
                                           <a href="상세페이지" class="btn_movieChart_detail">상세보기</a>
                                        
                                            <a href="예매 페이지" class="btn_movieChart_ticketing">예매하기</a>
                                        
                                        
                                        </div>
                                    </div>
                                    <div class="movie_info">
                                        <strong class="movieName">드라이브 마이 카</strong>
                                        <span>예매율 1.7%</span>
                                    </div>
                                </div>
                                
                                
                             <!-- 피드백 -->   
                                <div class="slide_movie" style="width: 170.4px; margin-right: 32px;">
                                    <div class="img_wrap" data-scale="false">
                                        <img src="../images/posters/7.jpg" alt="피드백" onerror="errorImage(this)" style= width:600px;height:859px>
                                        <div class="movieAge">
                                            <img src="../images/posters/grade-19.png" alt="청소년 관람불가세">
                                            
                                        
                                        </div>
                                        <div class="screenType_wrap">
                                            
                                        </div>
                                        <div class="movieChart_btn">
                                            <a href="상세페이지" class="btn_movieChart_detail">상세보기</a>
                                        
                                            <a href="예매 페이지" class="btn_movieChart_ticketing">예매하기</a>
                                        
                                        </div>
                                    </div>
                                    <div class="movie_info">
                                        <strong class="movieName">피드백</strong>
                                        <span>예매율 1.5%</span>
                                    </div>
                                </div>
                                
                               
                               <!-- 매트릭스 -->   
                                <div class="slide_movie" style="width: 170.4px; margin-right: 32px;">
                                    <div class="img_wrap" data-scale="false">
                                        <img src="../images/posters/8.jpg" alt="매트릭스-리저렉션" onerror="errorImage(this)" style= width:600px;height:859px>
                                        <div class="movieAge">
                                            <img src="../images/posters/grade-15.png" alt="15세 이상세">
                                        
                                        </div>
                                        <div class="screenType_wrap">
                                            
                                        </div>
                                        <div class="movieChart_btn">
                                            <a href="상세페이지" class="btn_movieChart_detail">상세보기</a>
                                        
                                            <a href="예매 페이지" class="btn_movieChart_ticketing">예매하기</a>
                                        
                                        
                                        </div>
                                    </div>
                                    <div class="movie_info">
                                        <strong class="movieName">매트릭스-리저렉션</strong>
                                        <span>예매율 0.7%</span>
                                    </div>
                                </div>
                               
                                
                             <!-- 하우스오브구찌 -->   
                                <div class="slide_movie" style="width: 170.4px; margin-right: 32px;">
                                    <div class="img_wrap" data-scale="false">
                                        <img src="../images/posters/9.jpg" alt="하우스 오브 구찌" onerror="errorImage(this)" style= width:600px;height:859px>
                                        <div class="movieAge">
                                            <img src="../images/posters/grade-15.png" alt="15세 이상세">
                                        
                                        </div>
                                        <div class="screenType_wrap">
                                            
                                        </div>
                                        <div class="movieChart_btn">
                                            <a href="상세페이지" class="btn_movieChart_detail">상세보기</a>
                                        
                                            <a href="예매 페이지" class="btn_movieChart_ticketing">예매하기</a>
                                        
                                        
                                        </div>
                                    </div>
                                    <div class="movie_info">
                                        <strong class="movieName">하우스 오브 구찌</strong>
                                        <span>예매율 0.4%</span>
                                    </div>
                                </div>
                                
                                
                              <!-- 프랑스 -->
                                <div class="slide_movie" style="width: 170.4px; margin-right: 32px;">
                                    <div class="img_wrap" data-scale="false">
                                        <img src="../images/posters/10.jpg" alt="프랑스" onerror="errorImage(this)" style= width:600px;height:859px>
                                        <div class="movieAge">
                                            <img src="../images/posters/grade-12.png" alt="12세 이상세">
                                            <!-- <div class="dDay_wrap"><span>8</span></div> -->
                                        
                                        </div>
                                        <div class="screenType_wrap">
                                            
                                        </div>
                                        <div class="movieChart_btn">
                                            <a href="상세페이지" class="btn_movieChart_detail">상세보기</a>
                                        
                                            <a href="예매 페이지" class="btn_movieChart_ticketing">예매하기</a>
                                        
                                        
                                        </div>
                                    </div>
                                    <div class="movie_info">
                                        <strong class="movieName">프랑스</strong>
                                        <span>예매율 0.1%</span>
                                    </div>
                                </div>
                                

                        </div>

                        <div class="swiper-button-next" tabindex="0" role="button" aria-label="다음 슬라이드" aria-disabled="false"></div>
                        <div class="swiper-button-prev swiper-button-disabled" tabindex="0" role="button" aria-label="이전 슬라이드" aria-disabled="true"></div>
                    <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
                    
                    </div>
                </div>
           </div>
    </div>
                    
     
<!-- 하단 -->


</div>
</body>
</html>