<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<!-- #####################################################################[헤더 시작] -->
<head>
	
	<meta charset="UTF-8"/>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no"/> 
    
	
	<title>ArmyDocs</title>
	
	<link type="text/css" rel="stylesheet" href="/resources/css/normalize.css"/>
	<link rel="stylesheet" href="/resources/bxslider/jquery.bxslider.css">
	<link type="text/css" rel="stylesheet" href="/resources/css/hamburgers.css"/>   
	<link type="text/css" rel="stylesheet" href="/resources/css/global.css"/>
	<link type="text/css" rel="stylesheet" href="/resources/css/animate.css"/>
    
    <link rel="shortcut icon" href="/resources/img/favicon.png" type="image/x-icon"/> 
	
	<script type="text/javascript" src="/resources/js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="/resources/js/jquery.flip.min.js"></script>
	<script type="text/javascript" src="/resources/js/iscroll.js"></script>
	<script src="/resources/bxslider/jquery.bxslider.min.js"></script>
	<script type="text/javascript" src="/resources/js/script.js"></script>
	
	<!-- fontawesome -->
	<link rel="stylesheet" href="/resources/fontawesome/css/all.min.css"/>
    <script src="/resources/fontawesome/js/fontawesome.min.js"></script> 
    
</head>
<!-- #####################################################################[헤더 끝] -->
<body>
	<section id="wrapper">
	
		<!-- #####################################################################[상단 시작] -->
		<jsp:include page="./include/header.jsp"/>
		<!-- #####################################################################[상단 끝] -->
		<!-- #####################################################################[컨테이너 시작] -->
		<section class="container main">	
			<div class="container_inner">	
				
				<!-- #####################################################################[레이어1] -->
				<div class="layer add-layer">
					<div class="">	
						
						<div class="banner-wrapper">
							<div class="in">
								<div class="centerbox"> 
								
									<div class="bn-ment">
									
                                        <strong style="font-weight:400;">아미독스</strong>는 장병들에게<br class="mobile-hidden"/>
										설문을 진행하고 참여하는 <strong style="font-weight:400;">플랫폼</strong>입니다.
                                        
									</div>
									<p class="bn-ment2">  
                                        아미독스 프로젝트는 군 내에서 수기로 시행되는 각종 설문조사를<br class="mobile-hidden"/>전산화하여 군 인트라넷에 구현한 웹 사이트 체계입니다. 
                                        <br class="mobile-hidden"/>부대 내 각종 설문 작성 및 결과를 분석하는 관리자와 <br class="mobile-hidden"/>
                                        설문 및 수요조사에 참여하는 사용자에게 각각 다른 기능을 제공합니다.
									</p>
									<div class="bn-btn-wrap">
										<a class="comm-btn-style red" onclick="getInfo()">아미독스 설명서 다운로드</a>
									</div> 
								</div> 
								<a class="down-btn" href="javascript:moveLayer('counting');"><img src="/resources/img/ico-two-down.png"/></a>
							</div>      
						</div>
							
					</div>
				</div>
				<!-- #####################################################################[레이어2] -->
				<div class="layer add-layer2" id="counting">
					<div class="inner">	
						 
						<div class="add-header-line">
							<a class="tit">
								<span class="emp">1:1맞춤</span> CONSULTING
								<span class="bottom-bar"></span>
							</a>
						</div>
						
						<div style="text-align: center; border-bottom: 1px solid  #efefef; ">
							
							<div class="cousulting-img-wrap">
								<img src="/resources/img/img-add.png"/>
							</div>
							<p class="cousulting-ment">
								아미독스에서 어쩌고 저쩌고 하면 저쩌고 되며<br/>
								다양한 설문의 어쩌고 좋은 리뷰, 통계자료 관리와 까지<br/>
								여러 단계를 한번에 받아보실 수 있습니다.
							</p>	
							
						</div>
						
						<div class="add-header-line">
							<a class="tit">
								CONTACT US
								<span class="bottom-bar"></span>
							</a>
						</div>
						
						<form>
							<div class="board-write-wrapper" style="margin-top: 30px;">
								<div>
									<div class="title-wrap">									
										<div class="default-inputbox" style="width: 49%;height:56px;">
											<input type="text" placeholder="소속부대"/>
										</div>
										<div class="select_box" style="width: 49%;height:56px;">
											<div style="width: 100%; box-sizing: border-box;">
												구분
											</div>
											<ul style="width: 100%;box-sizing: border-box;">
												<li><a>육군</a></li> 
												<li><a>공군</a></li>
												<li><a>해군</a></li> 
											</ul> 
										</div>
									</div>
									<div class="title-wrap" style="margin-top: 20px;">
										<div class="default-inputbox" style="width: 49%;height:56px;float:left;">
											<input type="text" placeholder="이름"/>
										</div>
										<div class="default-inputbox" style="width: 49%;height:56px;">  
											<input type="text" placeholder="연락처"/>
										</div>
									</div>
									<div class="note-wrap">
										<div class="default-textarea" style="height: 350px;">
											<textarea placeholder="내용을 입력해주세요"></textarea>
										</div>
									</div>
									<div class="submit-wrap">																
										<div class="terms-radio">
											<input class="radio-style" type="checkbox" id="chk1"/>
											<label for="chk1">개인정보 보호정책 동의</label>
										</div>
										<a class="comm-btn-style red">문의하기</a>
									</div>
								</div>
							</div>
						</form>
						
						<div style="height: 100px;"></div>
						
						
					</div>
				</div>
				
				
			</div>
		
		</section>
		<!-- #####################################################################[컨테이너 끝] -->
		<!-- #####################################################################[하단 시작] -->
		<jsp:include page="./include/footer.jsp"/>
		<!-- #####################################################################[하단 끝] -->
	</section>
	
	<script>
    
        /*getUserInfo(function(data){
            var c = '<li><a href="/my">마이페이지</a></li>';
            $("#header-priv").html(c);
        }, function(err){
            console.log("로그아웃 상태입니다.");
        });*/
        getUserInfo(function(data){
    
            var c = '<li><a href="/my">마이페이지</a></li><li><a href="/logout">로그아웃</a></li>';
            $("#header-priv").html(c);


        }, function(err){
            var c = '<li><a href="/join">회원가입</a></li><li><a href="/login">로그인</a></li>';
            $("#header-priv").html(c);
            console.log("로그아웃 상태입니다.");
        });
        
    </script>
	
</body>
</html>
