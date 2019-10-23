<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
	<script type="text/javascript" src="/resources/js/jquery.form.js"></script> 
	<script type="text/javascript" src="/resources/js/iscroll.js"></script>
	<script src="/resources/bxslider/jquery.bxslider.min.js"></script>
	<script type="text/javascript" src="/resources/js/script.js"></script>
	
	<!-- fontawesome -->
	<link rel="stylesheet" href="/resources/fontawesome/css/all.min.css"/>
    <script src="/resources/fontawesome/js/fontawesome.min.js"></script> 
		
</head>
<!-- #####################################################################[헤더 끝] -->
<body>
	<section id="wrapper" class="no-fix-menu">
		
		
		
		<!-- <div class="pop displayNone" id="file-upload-loading-pop">
			<div>
				<div class="bx">
					<div class="popbx">
						<div class="contentbox">
							<div class="normal-title-head">
								<h1 class="tit">파일 업로드</h1>
								<span class="cat">Upload to Server</span>
							</div>
							<div class="simpleArea">
								<div class="i_n">
									<div class="icons">
										<i class="fa fa-cloud-upload-alt"></i>
									</div>
									<div class="progressHbar"><div id="fu-per" style="width: 0%;"></div></div>
									<span class="mt">파일을 업로드 하는 중입니다..</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div> -->
	
		<!-- #####################################################################[상단 시작] -->
		<jsp:include page="./include/header2.jsp"/>
		<!-- #####################################################################[상단 끝] -->
		<!-- #####################################################################[컨테이너 시작] -->
		<section class="container push-top">	
			<div class="container_inner">	
				
				
				<!-- ##################################################################### -->
				<div class="mypage">
					
					<div class="visual-layer">
						<div class="bc">
							<div class="inner">
								
								<div class="profile-img-area">
									<div class="img">
										<span class="pic" id="imgT"></span>
										<a class="ico-set" id="profile-btn" style='cursor:pointer;'><img src="/resources/img/ico-set.png"/></a>
									</div>
									<div style="margin-top: 15px;">
                                        <a class="name"><span class="my-atype"></span>) <span class="my-name"></span></a>
										<div class="lebel">
											<img class="medal" src="/resources/img/g3.png" style="position: relative; top: 3px;"/>
											<span class="my-atype2"></span>, <span class="my-station"></span>
										</div>
									</div>
								</div>						
								<div>  
									<ul class="mymenu-group">
										<li>
											<a class="area">
												<span class="emp my-survey-list-count">00</span><br/>
												내가 작성한 설문
											</a>
										</li>
										<li>
											<a class="area" style="cursor: pointer;" onclick="">
												<span class="emp pro-survey-list-count">00</span><br/>
												현재 참여 가능한 설문
											</a>
										</li>
										<li>
											<a class="area" style="cursor: pointer;" onclick="">
												<span class="emp my-signDate">0000-00-00</span><br/>
												마지막 접속일
											</a>
										</li>
									</ul>
								
								</div>
								
							</div>	
						</div>				
					</div>
				
					<div id="mypage-tab-wrapper" class="campaign-contents-wrapper">
						
						<div class="contents-navi-wrapper">
							<div class="inner">
								<ul class="tab-group">
									<li>
										<a class="tab tab-section tab-section1 selected" onclick="toggleMypageTab(1)">프로필 수정<span class="bottom-bar"></span></a>
									</li>
									<li>
										<a class="tab tab-section tab-section2" onclick="toggleMypageTab(2)">진행중인 설문<span class="bottom-bar"></span></span><span class="numb pro-survey-list-count"></span></a>
									</li> 
									<li>
										<a class="tab tab-section tab-section3" onclick="toggleMypageTab(3)">마이 설문<span class="bottom-bar"></span></span><span class="numb my-survey-list-count"></span></a>
									</li>								
								</ul>
								<ul class="tab-group absol-right">
									<li class="mobile-hidden">
										<a class="tab" href="">1:1문의<span class="bottom-bar"></span></a>
									</li>		
									<li>
										<a class="comm-btn-style red" href="/my/survey"><i class="fa fa-folder-open"></i> 설문지 생성</a>
									</li>					
								</ul>
							</div>
						</div>	
						
						<div class="inner">
						    
                            
							<!-- 탭1 -->
							<div class="tab-container tab-section tab-section1 selected">
							<form name="userVo" id="userVo" onsubmit="return false;">
                                <!-- <div class="normal-title-head">
									<h1 class="tit">개인정보 수정</h1>
									<span class="cat">Personal editor</span>
								</div> -->
								
								<ul class="profile-modify-group">
									<!-- <li>
										<div class="intro-title" style="line-height: 140px;">
											<span class="name">프로필 사진</span>
										</div>
										<div class="intro-desc">
											<img class="va-bottom" src="img/profile.png"/>
											<a class="default-btn va-bottom upload-btn" href="#">이미지 업로드</a>
										</div>
									</li> -->
									<li>
										<div class="intro-title">
											<span class="name">군번(아이디)</span>
										</div>
										<div class="intro-desc m-row-two-item">  
											<div class="default-inputbox mrti-80" style="width: 470px;margin-right: 10px;">
												<input disabled="disabled" type="text" placeholder="군번" id="f-my-id"/>										
											</div>
											<!--<a class="default-btn mrti-20" href="#">중복확인</a>-->
										</div>
									</li>
									<li>
										<div class="intro-title">
											<span class="name">이메일</span>
										</div>
										<div class="intro-desc">
											<div class="default-inputbox" style="width: 470px;">
												<input type="text" placeholder="인증 가능한 이메일" id="f-my-email" name="email"/>
											</div>
										</div>
									</li>
									
									<li>
										<div class="intro-title">
											<span class="name">이름</span>
										</div>
										<div class="intro-desc">
											<div class="default-inputbox">
												<input type="text" placeholder="가입시 입력한 이름" id="f-my-name" name="name"/>										
											</div>
										</div>
									</li>
									
									<li>
										<div class="intro-title">
											<span class="name">현재 소속부대</span>
										</div>
										<div class="intro-desc">
											<div class="default-inputbox">
												<input type="text" placeholder="현재 복무중인 부대" id="f-my-station" name="station"/>										
											</div>
										</div>
									</li>
									
									<li>
										<div class="intro-title">
											<span class="name">입대일</span>
                                            <input type="hidden" name="recruitDate" />
										</div>
										<div class="intro-desc m-row-two-item">
											
											<div class="select_box mrti-3-1" style="width: 150px;margin-right:10px;">
												<div style="width: 100%; box-sizing: border-box;">연도</div>
                                                <input type="hidden" id="f-my-recruitDate1" />
												<ul style="width: 100%;box-sizing: border-box;">
													<c:forEach var="v" begin="1950" end="2019">
                                                        <li><a data-val="${v}"><c:out value="${v}"/></a></li> 
                                                    </c:forEach>
												</ul>
											</div>
											
											<div class="select_box mrti-3-1" style="width: 150px;margin-right:10px;">
												<div style="width: 100%; box-sizing: border-box;">월</div>
                                                <input type="hidden" id="f-my-recruitDate2" />
												<ul style="width: 100%;box-sizing: border-box;">
													<c:forEach var="v" begin="1" end="12">
                                                        <li><a data-val="${v}"><c:out value="${v}"/></a></li> 
                                                    </c:forEach>
												</ul>
											</div>
											
											<div class="select_box mrti-3-1" style="width: 150px;">
												<div style="width: 100%; box-sizing: border-box;">일</div>
                                                <input type="hidden" id="f-my-recruitDate3" />
												<ul style="width: 100%;box-sizing: border-box;">
													<c:forEach var="v" begin="1" end="31">
                                                        <li><a data-val="${v}"><c:out value="${v}"/></a></li> 
                                                    </c:forEach>
												</ul>
											</div>
											
										</div>
									</li>
									<!--<li>
										<div class="intro-title">
											<span class="name">성별</span>  
										</div>
										<div class="intro-desc">
											<input class="radio-style" name="gender" type="radio" id="test1" checked="checked">
											<label for="test1">여자</label>        										    
											<input class="radio-style" name="gender" type="radio" id="test2" >
											<label for="test2" style="margin-left: 30px;">남자</label>
										</div>
									</li>-->
									<li>
										<div class="intro-title">
											<span class="name">휴대폰</span>    
										    <input type="hidden" name="phonenm" />
                                        </div>
										<div class="intro-desc m-row-two-item">
											<div class="select_box mrti-3-1" style="width: 150px;margin-right:10px;">
												<div style="width: 100%; box-sizing: border-box;">010</div>
                                                <input type="hidden" id="f-my-phone1" value="010" />
												<ul style="width: 100%;box-sizing: border-box;">
													<li><a data-val="010">010</a></li> 
													<li><a data-val="011">011</a></li>
												</ul>
											</div>
											<div class="default-inputbox mrti-3-1" style="width:150px;margin-right:10px;">
												<input id="f-my-phone2" type="text" placeholder="" value="1234"/>																			
											</div> 
											<div class="default-inputbox mrti-3-1" style="width:150px">  
												<input id="f-my-phone3" type="text" placeholder="" value="5678"/>																			
											</div>
										</div>
									</li>
									<li>
										<div class="intro-title">
											<span class="name">병사/간부 구분</span>
										</div>
										<div class="intro-desc">
											<div class="select_box mrti-3-1" style="width: 150px;">
												<div style="width: 100%; box-sizing: border-box;">병사</div>
                                                <input type="hidden" name="atype" id="f-my-atype" value=""/>
												<ul style="width: 100%;box-sizing: border-box;">
													<li><a data-val="soldier">병사</a></li> 
													<li><a data-val="manager">간부</a></li>
												</ul>
											</div>
										</div>
									</li>
									<li>
										<div class="intro-title">
											<span class="name">육해공 구분</span>
										</div>
										<div class="intro-desc">
											<div class="select_box mrti-3-1" style="width: 150px;">
												<div style="width: 100%; box-sizing: border-box;">육군</div>
                                                <input type="hidden" name="atype2" id="f-my-atype2" value=""/>
												<ul style="width: 100%;box-sizing: border-box;">
													<li><a data-val="army">육군</a></li> 
													<li><a data-val="navy">해군</a></li>
													<li><a data-val="airforce">공군</a></li>
												</ul>
											</div>
										</div>
									</li>
									<li class="all-line">
										<div class="intro-title">
											<span class="name">개인정보이용동의</span>
										</div>
										<div class="intro-desc noline">
											<div style="margin-bottom: 10px;">
												<table class="terms-table">
													<tr>
														<td class="emp">목적</td>
														<td class="emp">항목</td>
														<td class="emp">보유 및 이용간</td>
													</tr>
													<tr>
														<td>설문 통계 및 군부대 빅데이터,머신러닝 등에 활용</td>
														<td>이름,생년월일,성별,휴대전화번호,이메일,부대정보</td>
														<td>회원탈퇴시까지</td>
													</tr>
												</table>
											</div>
											<div>
												<input class="radio-style" name="terms2" type="checkbox" id="chck" >
												<label for="chck" style="margin-left: 20px;">개인정보 수집 및 이용에 동의합니다.</label>
											</div>
										</div>
									</li>
									
									<li class="all-line">
										<div class="intro-title">
											<span class="name">비밀번호 수정</span>
										</div>
										<div class="intro-desc noline">
											<div style="margin-bottom: 10px;">
												<div class="default-inputbox">
													<input name="oldPassword" type="password" placeholder="기존 비밀번호"/>																			
												</div>
												<span class="mobile-hidden"
													  style="line-height: 55px;display: inline-block;margin-left: 20px;font-size: 14px;">
													비밀번호 수정시에만 필드를 입력해주세요.
												</span>
											</div>
											<div style="margin-bottom: 10px;">
												<div class="default-inputbox">
													<input name="newPassword" type="password" placeholder="새 비밀번호"/>																			
												</div>
											</div>
											<div>
												<div class="default-inputbox">
													<input name="newPassword2" type="password" placeholder="새 비밀번호 확인"/>																			
												</div>
											</div>
										</div>
									</li>
								</ul>
								
								<div class="profile-modify-bottom">
									<a class="comm-btn-style" style="float:left; cursor:pointer;" onclick="withdraw()">회원탈퇴</a>
									<a class="comm-btn-style red" style="float: right; cursor: pointer;" onclick="updateUser()">수정하기</a>
								</div>
                            </form>	
							</div>
							
							<!-- 탭2 -->
							<div class="tab-container tab-section tab-section2">
								
								<div class="list-filter-wrapper">
									<div class="row-filter">
										<div class="inlinegroup_m">
											<div class="select_box">
												<div style="width: 100px;">
													필터1
												</div>
												<ul style="width: 112px;">
													<li><a>제목</a></li> 
													<li><a>제목</a></li>
												</ul>
											</div>
											
											<div class="select_box">
												<div style="width: 120px;">
													필터2
												</div>
												<ul style="width: 132px;">
													<li><a>관리대대</a></li> 
													<li><a>제목</a></li>
												</ul>
											</div>
										</div>
										
										<div class="search-inputbox m100">
											<input type="text" placeholder="검색어를 입력하세요"/>
										</div>
									</div>
									<div class="row-filter">
										<p class="counting"><strong>현재 참여 가능</strong>한 설문 <strong class="emp pro-survey-list-count">0</strong>개</p>
									</div> 
								</div>
					
								<table class="board-table-style1">
									<thead>
										<tr>
											<th class="tw100">순서</th>
											<th class="tw140">작성일</th>
											<th>설문제목</th>
											<th class="tw100">작성자</th>
											<th class="tw110 mobile-last"><a href="#">시작일<img src="/resources/img/ico-order-asc.png"/></a></th>
											<th class="tw110 mobile-hidden"><a href="#">마감일<img src="/resources/img/ico-order-asc.png"/></a></th>
										</tr>
									</thead>
									<tbody id="pro-survey-list">
										<!-- ####################################################### -->	
										<!-- 현재 진행중인 설문 목록 노출 -->	
										<!-- ####################################################### -->	
									</tbody>
								</table>
								
								<div class="c-paging-group">
									
									<a class="numb" href="#">◀</a>
									<a class="numb" href="#">…</a>
									
									<a class="numb" href="#">6</a>
									<a class="numb" href="#">7</a>
									<a class="numb" href="#">8</a>
									<a class="numb" href="#">9</a>
									<a class="numb selected" href="#">10</a>
									<a class="numb" href="#">11</a>
									<a class="numb" href="#">12</a>
									<a class="numb" href="#">13</a>
									<a class="numb" href="#">14</a>
									<a class="numb" href="#">15</a>
									
									<a class="numb" href="#">…</a>
									<a class="numb" href="#">▶</a>
									
								</div>
								
							</div>
							
							<!-- 탭3 -->
							<div class="tab-container tab-section tab-section3">
								
								<div class="list-filter-wrapper">
									<div class="row-filter">
										<div class="inlinegroup_m">
											<div class="select_box">
												<div style="width: 100px;">
													필터1
												</div>
												<ul style="width: 112px;">
													<li><a>제목</a></li> 
													<li><a>제목</a></li>
													<li><a>제목</a></li>
												</ul>
											</div>
											
											<div class="select_box">
												<div style="width: 120px;">
													필터2
												</div>
												<ul style="width: 132px;">
													<li><a>제목</a></li> 
													<li><a>제목</a></li>
													<li><a>제목</a></li>
												</ul>
											</div>
										</div>
										<div class="search-inputbox m100">
											<input type="text" placeholder="검색어를 입력하세요"/>
										</div>
									</div>
									<div class="row-filter">
										<p class="counting"><strong>내가 등록</strong>한 설문 <strong class="emp my-survey-list-count">0</strong>개</p>
									</div>   
								</div>
								
								<table class="board-table-style1">
									<thead>
										<tr>
											<th class="tw100">순서</th>
											<th class="tw140">작성일</th>
											<th>설문제목</th>
											<th class="tw110 mobile-last"><a href="#">시작일<img src="/resources/img/ico-order-asc.png"/></a></th>
											<th class="tw110 mobile-hidden"><a href="#">마감일<img src="/resources/img/ico-order-asc.png"/></a></th>
										</tr>
									</thead>
									<tbody id="my-survey-list">
										<!-- ####################################################### -->	
										<!-- 내가 작성한 설문 목록 노출 -->	
										<!-- ####################################################### -->	
									</tbody>
								</table>
								
								<div class="c-paging-group">
									
									<a class="numb" href="#">◀</a>
									<a class="numb" href="#">…</a>
									
									<a class="numb" href="#">6</a>
									<a class="numb" href="#">7</a>
									<a class="numb" href="#">8</a>
									<a class="numb" href="#">9</a>
									<a class="numb selected" href="#">10</a>
									<a class="numb" href="#">11</a>
									<a class="numb" href="#">12</a>
									<a class="numb" href="#">13</a>
									<a class="numb" href="#">14</a>
									<a class="numb" href="#">15</a>
									
									<a class="numb" href="#">…</a>
									<a class="numb" href="#">▶</a>
									
								</div>
								
								
							</div>
							
							
						</div>
						
					</div>
					
					
					
					
				</div>
				
				
			</div>
		</section>
		<!-- #####################################################################[컨테이너 끝] -->
		<!-- #####################################################################[하단 시작] -->
        <jsp:include page="./include/footer.jsp"/>
		<!-- #####################################################################[하단 끝] -->
		
	</section>


	<div style="display:none;">
		<form action="/file/upload" method="post" enctype="multipart/form-data">
			<input style="display:none;" autocomplete=off name="file1" type="file" />
			<input type="submit" value="tst"/>
		</form>
	</div>

    <script>
    
	    function sleepI (delay) {
    	   var start = new Date().getTime();
    	   while (new Date().getTime() < start + delay);
    	}

		
		$("#profile-btn").click(function(){
			$("input[name=file1]").click();
		}); 
		$("input[name=file1]").on("change", function(){	
			
			createFileLoad();
			
			var thss = this.form;
			$(thss).ajaxSubmit({
				dataType : "JSON",
				//data: {"type":"profile"},
				uploadProgress : function(event,position,total,percentComplete){
					
					$("#fu-per").css('width', percentComplete+"%");
				},
			/* 	beforeSend : function(xhr){
					xhr.setRequestHeader("authorization", getCookie("token"));
					xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
				}, */
				success : function(data){  
					console.log(data);
					$("#imgT").css("background-image", 'url(/resources/tmp/'+data.data+'), url(/resources/img/profile.png)');
					//$("#imgT").addClass("animated");
					//$("#imgT").addClass("flipInX"); 
					$("#file-upload-loading-pop .mt").text("파일을 업로드 했습니다.");
					
					$.ajax({ 
						type : "POST",
						dataType : "JSON",
						data : {"fileName" : data.data},
						async: false,
						url : "/profile",	
						beforeSend : function(xhr){
							xhr.setRequestHeader("authorization", getCookie("token"));
							xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
						},
						success : function(data){
							console.log(data);	
						}
					});
					
				}, 
				error : function(xhr, status, error) {		
					$("#file-upload-loading-pop").detach(); 
					createPopup("exclamation-triangle","해당 이미지 파일을 업로드할 수 없습니다.<br/>자세한 사항은 문의를 주세요.", "bounceInDown");
					console.log("[ERROR]");
					console.log(xhr); console.log(status); console.log(error); 
				}						
			});   

		});
		
		
        
        getUserInfo(function(data){
    
            var c = '<li><a href="/my">마이페이지</a></li><li><a href="/logout">로그아웃</a></li>';
            $("#header-priv").html(c);

            globalUser = data.data;
            
            //console.log(globalUser);

            if($(".mypage").is(":visible")) {
                $(".my-name").text(globalUser.name);
                $(".my-station").text(globalUser.station);
                $(".my-atype").text(globalUser.atype=="manager"?"간부":"병사");
                $(".my-atype2").text(globalUser.atype2=="army"?"육군":globalUser.atype2=="navy"?"해군":"공군");
                $(".my-signDate").text(globalUser.signDate);
                
                
                $("#f-my-id").val(globalUser.id);
                $("#f-my-name").val(globalUser.name);
                $("#f-my-station").val(globalUser.station);
                $("#f-my-email").val(globalUser.email);
                
                $("#f-my-atype").val(globalUser.atype);
                $("#f-my-atype").parent().find("> div").text(globalUser.atype=="manager"?"간부":"병사");
				
				$("#f-my-atype2").val(globalUser.atype2);
                $("#f-my-atype2").parent().find("> div").text(globalUser.atype2=="army"?"육군":globalUser.atype2=="navy"?"해군":"공군");
                
                var p1 = globalUser.phonenm.split("-")[0];
                var p2 = globalUser.phonenm.split("-")[1];
                var p3 = globalUser.phonenm.split("-")[2];
                
                $("#f-my-phone1").val(p1);
                $("#f-my-phone1").parent().find("> div").text(p1);
                $("#f-my-phone2").val(p2);
                $("#f-my-phone3").val(p3);
                
                
                var r1 = globalUser.recruitDate.split("-")[0];
                var r2 = globalUser.recruitDate.split("-")[1];
                var r3 = globalUser.recruitDate.split("-")[2];
                
                $("#f-my-recruitDate1").val(r1);
                $("#f-my-recruitDate1").parent().find("> div").text(r1);
                $("#f-my-recruitDate2").val(r2);
                $("#f-my-recruitDate2").parent().find("> div").text(r2);
                $("#f-my-recruitDate3").val(r3);
                $("#f-my-recruitDate3").parent().find("> div").text(r3);
                
                var imgRes = globalUser.profile;
                $("#imgT").css("background-image", "url("+imgRes+"), url(/resources/img/profile.png)");
            }




        }, function(err){
            console.log("로그아웃 상태입니다.");
            location.href = "/";
        });
        
        function withdraw() {
            
			if(confirm("회원을 탈퇴하게 되면 기존 정보들이 전부 삭제됩니다. 정말로 회원 탈퇴 하시겠습니까?")) {
				
				loadAni(true);
           
				$.ajax({ 
					type : "DELETE",
					dataType : "JSON",
					//data : param,
					async: false,
					url : "/user",	
					beforeSend : function(xhr){
						xhr.setRequestHeader("authorization", getCookie("token"));
						xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
					},
					success : function(data){
						console.log(data);
						loadAni(false);
						if(data.statusCode == 200) {
							location.href="/logout";
						}else{
							createPopup("exclamation-triangle","오류가 발생했습니다.<br/>자세한 사항은 문의를 주세요.", "bounceInDown");
						}
					}, 
					error : function(err, err2, err3) {
			
						loadAni(false);
						createPopup("exclamation-triangle","오류가 발생했습니다.<br/>자세한 사항은 문의를 주세요.", "bounceInDown");
						console.log("[ERROR]");
						console.log(err); console.log(err2); console.log(err3); 

					} 
				});
				
			}
            
        }
        
        function updateUser() {
            
            
            var recruitDate = $("#f-my-recruitDate1").val()+"-"+$("#f-my-recruitDate2").val()+"-"+$("#f-my-recruitDate3").val();
            var phonenm = $("#f-my-phone1").val()+"-"+$("#f-my-phone2").val()+"-"+$("#f-my-phone3").val();
            
            $("input[name=phonenm]").val(phonenm);
            $("input[name=recruitDate]").val(recruitDate);
            
            var param = $("#userVo").serialize();
            
			var oldPw = $("input[name=oldPassword]").val();
			if(oldPw.trim() != "") {
				var newPw = $("input[name=newPassword]").val();
				var newPw2 = $("input[name=newPassword2]").val();
				if(newPw=="") {
					createPopup("exclamation-triangle","새롭게 설정할 비밀번호를 입력하세요.", "bounceInDown", "확인");
					return false;
				}  
				if(newPw != newPw2) {
					createPopup("exclamation-triangle","새 비밀번호와 새 비밀번호 확인이<br/>일치하지 않습니다.", "bounceInDown", "확인");
					return false;
				}
			}
			
			//console.log(param);
            loadAni(true);
            
           
			$.ajax({ 
				type : "POST",
				dataType : "JSON",
				data : param,
				async: false,
				url : "/user",	
				beforeSend : function(xhr){
					xhr.setRequestHeader("authorization", getCookie("token"));
					xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
				},
				success : function(data){
					
					console.log(data);
					loadAni(false);
					
					if(data.statusCode != 200) {
						
						createPopup("exclamation-triangle","기존 사용중인 비밀번호가 일치하지 않습니다.", "bounceInDown", "확인");
						
					}else{
						
						$(".my-name").text($("#userVo input[name=name]").val());
						$(".my-station").text($("#userVo input[name=station]").val());
						$(".my-atype").text($("#userVo input[name=atype]").val()=="manager"?"간부":"병사");
						$(".my-atype2").text($("#userVo input[name=atype2]").val()=="army"?"육군":$("#userVo input[name=atype2]").val()=="navy"?"해군":"공군");

					}

				}, 
				error : function(err, err2, err3) {
					loadAni(false);
					createPopup("exclamation-triangle","오류가 발생했습니다.<br/>자세한 사항은 문의를 주세요.", "bounceInDown");
					console.log("[ERROR]");
					console.log(err); console.log(err2); console.log(err3); 
					
				} 
			});
           
        }
        
    </script>
    
	
</body>
</html>