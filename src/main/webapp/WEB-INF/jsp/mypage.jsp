<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
    
    <link rel="shortcut icon" href="/resources/img/favicon.png" type="image/x-icon"/> 
	
	<script type="text/javascript" src="/resources/js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="/resources/js/jquery.flip.min.js"></script>
	<script type="text/javascript" src="/resources/js/iscroll.js"></script>
	<script src="/resources/bxslider/jquery.bxslider.min.js"></script>
	<script type="text/javascript" src="/resources/js/script.js"></script>
	
</head>
<!-- #####################################################################[헤더 끝] -->
<body>
	<section id="wrapper" class="no-fix-menu">
	
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
										<img src="/resources/img/profile.png"/>
										<a class="ico-set" href="#"><img src="/resources/img/ico-set.png"/></a>
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
												<span class="emp">00</span><br/>
												내가 작성한 설문
											</a>
										</li>
										<li>
											<a class="area" style="cursor: pointer;" onclick="togglePop02();">
												<span class="emp">00</span><br/>
												현재 참여 가능한 설문
											</a>
										</li>
										<li>
											<a class="area" style="cursor: pointer;" onclick="togglePop02();">
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
										<a class="tab tab-section tab-section2" onclick="toggleMypageTab(2)">진행중인 설문<span class="bottom-bar"></span></span><span class="numb">4</span></a>
									</li> 
									<li>
										<a class="tab tab-section tab-section3" onclick="toggleMypageTab(3)">마이 설문<span class="bottom-bar"></span></span><span class="numb">4</span></a>
									</li>								
								</ul>
								<ul class="tab-group absol-right">
									<li>
										<a class="tab" href="12.html">1:1문의<span class="bottom-bar"></span></a>
									</li>		
									<li>
										<a class="tab" href="12.html">설문 등록<span class="bottom-bar"></span></a>
									</li>					
								</ul>
							</div>
						</div>	
						
						<div class="inner">
						    
                            
							<!-- 탭1 -->
							<div class="tab-container tab-section tab-section1 selected">
							<form name="userForm" id="userForm" onsubmit="return updateUser();">
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
												<input type="text" placeholder="인증 가능한 이메일" id="f-my-email"/>
											</div>
										</div>
									</li>
									
									<li>
										<div class="intro-title">
											<span class="name">이름</span>
										</div>
										<div class="intro-desc">
											<div class="default-inputbox">
												<input type="text" placeholder="가입시 입력한 이름" id="f-my-name"/>										
											</div>
										</div>
									</li>
									
									<li>
										<div class="intro-title">
											<span class="name">현재 소속부대</span>
										</div>
										<div class="intro-desc">
											<div class="default-inputbox">
												<input type="text" placeholder="현재 복무중인 부대" id="f-my-station"/>										
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
													<li><a>2017</a></li> 
													<li><a>2016</a></li>
													<li><a>2015</a></li>
													<li><a>2014</a></li>
													<li><a>2013</a></li>
													<li><a>2012</a></li> 
												</ul>
											</div>
											
											<div class="select_box mrti-3-1" style="width: 150px;margin-right:10px;">
												<div style="width: 100%; box-sizing: border-box;">월</div>
                                                <input type="hidden" id="f-my-recruitDate2" />
												<ul style="width: 100%;box-sizing: border-box;">
													<c:forEach var="v" begin="1" end="12">
                                                        <li><a data-val="${v}">${v}</a></li> 
                                                    </c:forEach>
												</ul>
											</div>
											
											<div class="select_box mrti-3-1" style="width: 150px;">
												<div style="width: 100%; box-sizing: border-box;">일</div>
                                                <input type="hidden" id="f-my-recruitDate3" />
												<ul style="width: 100%;box-sizing: border-box;">
													<c:forEach var="v" begin="1" end="31">
                                                        <li><a data-val="${v}">${v}</a></li> 
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
												<div style="width: 100%; box-sizing: border-box;">000</div>
                                                <input type="hidden" id="f-my-phone1" />
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
													<input name="pw" type="password" placeholder="기존 비밀번호"/>																			
												</div>
											</div>
											<div style="margin-bottom: 10px;">
												<div class="default-inputbox">
													<input name="npw" type="password" placeholder="새 비밀번호"/>																			
												</div>
											</div>
											<div>
												<div class="default-inputbox">
													<input name="npw2" type="password" placeholder="새 비밀번호 확인"/>																			
												</div>
											</div>
										</div>
									</li>
								</ul>
								
								<div class="profile-modify-bottom">
									<a class="comm-btn-style" style="float:left;" onclick="withdraw()">회원탈퇴</a>
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
													구분
												</div>
												<ul style="width: 112px;">
													<li><a>제목</a></li> 
													<li><a>제목</a></li>
													<li><a>제목</a></li>
												</ul>
											</div>
											
											<div class="select_box">
												<div style="width: 120px;">
													카테고리
												</div>
												<ul style="width: 132px;">
													<li><a>관리대대</a></li> 
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
										<p class="counting"><strong>현재 참여 가능</strong>한 설문 <strong class="emp">52</strong>개</p>
									</div> 
								</div>
					
								<table class="board-table-style1">
									<thead>
										<tr>
											<th class="tw100">부대구분</th>
											<th class="tw140">카테고리</th>
											<th>설문 제목</th>
											<th class="tw100"><a href="#">마감일<img src="img/ico-order-asc.png"/></a></th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>계근지단</td>
											<td>카테고리</td>
											<td class="tit"><a class="title">제목</a></td>
											<td class="date">2018.01.06</td>
										</tr>	
										<tr>
											<td>계근지단</td>
											<td>카테고리</td>
											<td class="tit"><a class="title">제목</a></td>
											<td class="date">2018.01.06</td>
										</tr>
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
													채널
												</div>
												<ul style="width: 112px;">
													<li><a>제목</a></li> 
													<li><a>제목</a></li>
													<li><a>제목</a></li>
												</ul>
											</div>
											
											<div class="select_box">
												<div style="width: 120px;">
													카테고리
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
										<p class="counting"><strong>등록</strong>한 캠페인 <strong class="emp">52</strong>개</p>
									</div>   
								</div>
								
								<table class="board-table-style1">
									<thead>
										<tr>
											<th class="tw100">구분</th>
											<th class="tw140">카테고리</th>
											<th>설문제목</th>
											<th class="tw100 mobile-last"><a href="#">작성일<img src="img/ico-order-asc.png"/></a></th>
											<th class="tw100 mobile-hidden"><a href="#">마감일<img src="img/ico-order-asc.png"/></a></th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>계근지단</td>
											<td>카테고리</td>
											<td class="tit"><a class="title">설문 제목 입니다..</a></td>
											<td class="date">2018.01.06</td>
											<td class="date mobile-hidden">2018.01.06</td>
										</tr>	
										<tr>
											<td>계근지단</td>
											<td>카테고리</td>
											<td class="tit"><a class="title">설문 제목 입니다..</a></td>
											<td class="date">2018.01.06</td>
											<td class="date mobile-hidden">2018.01.06</td>
										</tr>	
                                        <tr>
											<td>계근지단</td>
											<td>카테고리</td>
											<td class="tit"><a class="title">설문 제목 입니다..</a></td>
											<td class="date">2018.01.06</td>
											<td class="date mobile-hidden">2018.01.06</td>
										</tr>	
                                        <tr>
											<td>계근지단</td>
											<td>카테고리</td>
											<td class="tit"><a class="title">설문 제목 입니다..</a></td>
											<td class="date">2018.01.06</td>
											<td class="date mobile-hidden">2018.01.06</td>
										</tr>	
                                        <tr>
											<td>계근지단</td>
											<td>카테고리</td>
											<td class="tit"><a class="title">설문 제목 입니다..</a></td>
											<td class="date">2018.01.06</td>
											<td class="date mobile-hidden">2018.01.06</td>
										</tr>	
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
    
    <script>
        
        getUserInfo(function(data){
    
            var c = '<li><a href="/my">마이페이지</a></li><li><a href="/logout">로그아웃</a></li>';
            $("#header-priv").html(c);

            globalUser = data.data;
            
            console.log(globalUser);

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
                
            }




        }, function(err){
            console.log("로그아웃 상태입니다.");
            location.href = "/";
        });
        
        function withdraw() {
            
            alert("정말고 회원 탈퇴 하시겠습니까?");
        }
        
        function updateUser() {
            
            
            var recruitDate = $("#f-my-recruitDate1").val()+"-"+$("#f-my-recruitDate2").val()+"-"+$("#f-my-recruitDate3").val();
            var phonenm = $("#f-my-phone1").val()+"-"+$("#f-my-phone2").val()+"-"+$("#f-my-phone3").val();
            
            $("input[name=phonenm]").val(phonenm);
            $("input[name=recruitDate]").val(recruitDate);
            
            var param = $("#userVo").serialize();
            
            console.log(param);
        
            try{
                $.ajax({ 
                    type : "PUT",
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
                    }, 
                    error : function(err, err2, err3) {
                        alert("알 수 없는 오류가 발생했습니다."); 
                        console.log(err); 
                    } 
                });
            }catch(ex) {
                alert("ajax error");   
            }
            
        }
        
    </script>
    
	
</body>
</html>