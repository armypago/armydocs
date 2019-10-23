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
	
	<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0/dist/Chart.min.js"></script>
	
	
	<!-- fontawesome -->
	<link rel="stylesheet" href="/resources/fontawesome/css/all.min.css"/>
    <script src="/resources/fontawesome/js/fontawesome.min.js"></script> 
	
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
				<div class="inf-mod-wrapper">
				<div class="inner" style='width: 1000px;'>
					
					<div class="normal-title-head">
						<h1 class="tit">${surveyInfo.title}. DI</h1>
						<span class="cat">Survey Basic Informations</span>
					</div>
					
					<form id="surveyVo" name="surveyVo" onsubmit="return registerSurvey();">
						
						<div class="profile-modify-bottom" style="margin-top: 30px; margin-bottom: 50px;">
							<a class="comm-btn-style" style="float:left; cursor:pointer;" href="">목록으로</a>
							<a class="comm-btn-style red" style="float: right; cursor: pointer; margin-left: 10px;" onclick="">
								<i class="fa fa-save"></i>&nbsp;&nbsp;수정
							</a>
							<a class="comm-btn-style red" style="float: right; cursor: pointer; width: 200px; background: rgb(28,115,70)" onclick="">
								<i class="fa fa-file-excel"></i>&nbsp;&nbsp;Excel Download
							</a>
						</div>
						
						
						<style>
						.anbox { margin-bottom: 100px; }
						.anbox li {font-size: 18px; color: #000; padding-bottom: 50px; border-bottom: 1px solid #E7E8EF; margin-bottom: 50px;}
						.anbox li .title {font-size: 22px; font-weight: bold;}
						.anbox li .subs {margin: 10px 0px 15px 0px;}
						.anbox li .sta {width: 450px;}
						</style>
						<ul class="anbox">
							<%-- <li>
								<div class="title">1. 김 선생이 사용한 말하기 방법을 사용하여 다음 학생에게 해줄 수 있는 말로 적절한 것은?</div>
								<div class="subs">답변한 수: 98,890명</div>
								<div class="sta">
									<canvas id="myChart" width="400" height="400"></canvas>
								</div>
							</li>
							
							<li style="font-size: 18px; color: #000; margin-bottom: 60px;">
								<div style="font-size: 22px; font-weight: bold;">2. 참석하는 사람들의 성함을 알려주세요.</div>
								<div style="margin: 10px 0px 15px 0px;">
									답변한 수: 198,890명
								</div>
								<div style="width: 450px;">
									
									<canvas id="myChart2" width="400" height="400"></canvas>
									
								</div>
							</li> --%>
						</ul>
						
						
						
						<script>
						
						function heesung() {
							$.ajax({ 
								type : "GET",
								dataType : "JSON",				
								async: false,
								url : "/survey/items/${surveyInfo.idx}",	
								beforeSend : function(xhr){
									xhr.setRequestHeader("authorization", getCookie("token"));
									xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
								},
								success : function(data){							
									
									console.log(data);
									var responseNoteArr = new Array();
									
									$.each(data.data, function(index, value){	
										
										var numb = index+1;
										var c = '';
										
										// 객관식 답변
										if(value.qtype=="multiple") {
											
											c += '<li>';
											c += '<div class="title">'+numb+'. '+value.note+'</div>';
											c += '<div class="subs">답변한 수: '+(1000)+'명</div>';
											c += '<div class="sta">';
											c += '<canvas id="myChart'+numb+'" width="400" height="400"></canvas>';
											c += '</div>';
											c += '</li>';
											
											$(".anbox").append(c);
											
											responseNoteArr = value.responseNote.split("|");
											console.log(responseNoteArr);
											
											var ctx = document.getElementById('myChart'+numb).getContext('2d');
											var myChart = new Chart(ctx, {
											    type: 'pie',
											    data: { 
											        labels: responseNoteArr,
											        datasets: [{
											            label: '# of Votes',
											            data: [12, 19, 3, 5, 2],
											            backgroundColor: [
											            	'rgba(255, 99, 132, 1)',
											                'rgba(54, 162, 235, 1)',
											                'rgba(255, 206, 86, 1)',
											                'rgba(75, 192, 192, 1)',
											                'rgba(153, 102, 255, 1)'
											            ],
											            borderColor: [
											                'rgba(255, 99, 132, 1)',
											                'rgba(54, 162, 235, 1)',
											                'rgba(255, 206, 86, 1)',
											                'rgba(75, 192, 192, 1)',
											                'rgba(153, 102, 255, 1)'
											            ],
											            borderWidth: 1
											        }]
											    },
											    options: {
											        scales: {
											            yAxes: [{
											                ticks: {
											                    beginAtZero: true
											                }
											            }]
											        }
											    }
											});
										}
										// 주관식 답변
										else{
											
										}
										
									});
									
									var testArr = new Array();
									//testArr = ['네가 내 손에 죽고 싶구나?', '나는 50점 받았다. 잘난 척하니 속이 후련하니?', '평균 90점이 못 본 거라니, 너 정신이 이상하구나', '마음이 아프겠다. 열심히 해서 다음 시험에는 3만점 맞길 바란다.', '다른 데서 그런 식으로 말하면 너는 학교 폭력의 피해자가 될지도 몰라.'];
									
									testArr.push('네가 내 손에 죽고 싶구나?');
									testArr.push('나는 50점 받았다. 잘난 척하니 속이 후련하니?');
									testArr.push('평균 90점이 못 본 거라니, 너 정신이 이상하구나');
									testArr.push('마음이 아프겠다. 열심히 해서 다음 시험에는 3만점 맞길 바란다.');
									testArr.push('다른 데서 그런 식으로 말하면 너는 학교 폭력의 피해자가 될지도 몰라.');
			
									
								}, 
								error : function(err, err2, err3) {	
									createPopup("exclamation-triangle","오류가 발생했습니다.<br/>자세한 사항은 문의를 주세요.", "bounceInDown");
									console.log("[ERROR]");
									console.log(err); console.log(err2); console.log(err3); 	
								} 
							});
						}
						
						heesung();
						
						/* var ctx2 = document.getElementById('myChart2').getContext('2d');
						var myChart2 = new Chart(ctx2, {
						    type: 'doughnut',
						    data: {
						        labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'],
						        datasets: [{
						            label: '# of Votes',
						            data: [12, 19, 3, 5, 2, 3],
						            backgroundColor: [
						                'rgba(255, 99, 132, 0.2)',
						                'rgba(54, 162, 235, 0.2)',
						                'rgba(255, 206, 86, 0.2)',
						                'rgba(75, 192, 192, 0.2)',
						                'rgba(153, 102, 255, 0.2)',
						                'rgba(255, 159, 64, 0.2)'
						            ],
						            borderColor: [
						                'rgba(255, 99, 132, 1)',
						                'rgba(54, 162, 235, 1)',
						                'rgba(255, 206, 86, 1)',
						                'rgba(75, 192, 192, 1)',
						                'rgba(153, 102, 255, 1)',
						                'rgba(255, 159, 64, 1)'
						            ],
						            borderWidth: 1
						        }]
						    },
						    options: {
						        scales: {
						            yAxes: [{
						                ticks: {
						                    beginAtZero: true
						                }
						            }]
						        }
						    }
						}); */
						</script>

						<%-- <ul class="profile-modify-group">
						
							<li>
								<div class="intro-title">
									<span class="name">1.</span>
								</div>
								<div class="intro-desc m-row-two-item" style="font-size: 16px;">  
									asdasda<br/>asdasda<br/>asdasda<br/>asdasda<br/>asdasda<br/>asdasda<br/>asdasda<br/>asdasda<br/>asdasda<br/>asdasda<br/>asdasda<br/>asdasda<br/>
									
									
								
								</div>
							</li>

							<li>
								<div class="intro-title">
									<span class="name">설문 시작일</span>
									<input type="hidden" name="startdate" />
								</div>
								<div class="intro-desc m-row-two-item">

									<div class="select_box mrti-3-1" style="width: 150px;margin-right:10px;">
										<div style="width: 100%; box-sizing: border-box;">연도</div>
										<input type="hidden" id="f-s-start1" />
										<ul style="width: 100%;box-sizing: border-box;">
											<c:forEach var="v" begin="1950" end="2019">
												<li><a data-val="${v}"><c:out value="${v}"/></a></li> 
											</c:forEach>
										</ul>
									</div>

									<div class="select_box mrti-3-1" style="width: 150px;margin-right:10px;">
										<div style="width: 100%; box-sizing: border-box;">월</div>
										<input type="hidden" id="f-s-start2" />
										<ul style="width: 100%;box-sizing: border-box;">
											<c:forEach var="v" begin="1" end="12">
												<li><a data-val="${v}"><c:out value="${v}"/></a></li> 
											</c:forEach>
										</ul>
									</div>

									<div class="select_box mrti-3-1" style="width: 150px;">
										<div style="width: 100%; box-sizing: border-box;">일</div>
										<input type="hidden" id="f-s-start3" />
										<ul style="width: 100%;box-sizing: border-box;">
											<c:forEach var="v" begin="1" end="31">
												<li><a data-val="${v}"><c:out value="${v}"/></a></li> 
											</c:forEach>
										</ul>
									</div>

								</div>
							</li>

							<li>
								<div class="intro-title">
									<span class="name">설문 종료일</span>
									<input type="hidden" name="enddate" />
								</div>
								<div class="intro-desc m-row-two-item">

									<div class="select_box mrti-3-1" style="width: 150px;margin-right:10px;">
										<div style="width: 100%; box-sizing: border-box;">연도</div>
										<input type="hidden" id="f-s-end1" />
										<ul style="width: 100%;box-sizing: border-box;">
											<c:forEach var="v" begin="1950" end="2019">
												<li><a data-val="${v}"><c:out value="${v}"/></a></li> 
											</c:forEach>
										</ul>
									</div>

									<div class="select_box mrti-3-1" style="width: 150px;margin-right:10px;">
										<div style="width: 100%; box-sizing: border-box;">월</div>
										<input type="hidden" id="f-s-end2" />
										<ul style="width: 100%;box-sizing: border-box;">
											<c:forEach var="v" begin="1" end="12">
												<li><a data-val="${v}"><c:out value="${v}"/></a></li> 
											</c:forEach>
										</ul>
									</div>

									<div class="select_box mrti-3-1" style="width: 150px;">
										<div style="width: 100%; box-sizing: border-box;">일</div>
										<input type="hidden" id="f-s-end3" />
										<ul style="width: 100%;box-sizing: border-box;">
											<c:forEach var="v" begin="1" end="31">
												<li><a data-val="${v}"><c:out value="${v}"/></a></li> 
											</c:forEach>
										</ul>
									</div>

								</div>
							</li>

							<li>
								<div class="intro-title">
									<span class="name">설문 소개</span>
								</div>
								<div class="intro-desc">
									<div class="default-textarea" style="height: 300px; width: 100%;">
										<textarea placeholder="진행하려는 설문에 대해서 자유롭게 소개하세요." id="f-s-note" name="note"></textarea>										
									</div>
								</div>
							</li>

							


						</ul> --%>

						

				
					</form>
					
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
		
		
        
        getUserInfo(function(data){
    
            var c = '<li><a href="/my">마이페이지</a></li><li><a href="/logout">로그아웃</a></li>';
            $("#header-priv").html(c);

            globalUser = data.data;
            
        }, function(err){
            console.log("로그아웃 상태입니다.");
            location.href = "/";
        });
        
        
    </script>
    
	
</body>
</html>