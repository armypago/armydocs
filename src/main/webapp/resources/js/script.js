
var mySliderSet1 = {
	mode : 'horizontal',
	pager: true,
	auto: true, 
	slideHeight : 844,  
	controls: true,  
	adaptiveHeight : true
};
var mySliderSet2 = {
	mode : 'horizontal',
	pager: false,
	auto: true, 
	slideHeight : 427,  
	autoHover: true, 
	controls: true,  
	adaptiveHeight : true
};
$(document).ready(function(){
	$('#slider1 .slider').bxSlider(mySliderSet1);
	$('#slider2 .slider').bxSlider(mySliderSet2);  
});

//부드럽게 레이어 이동
function moveLayer(idName) {
	var scrollPosition = $("#"+idName).offset().top;
	$("html").animate({scrollTop: scrollPosition}, 500);   
}


$(document).ready(function(){
	
	// 커스텀셀렉트박스
	$(".select_box").click(function(){
		var ul = $(this).find("ul");
		if($(ul).is(":visible")) {
			$(ul).prev().removeClass("up");
			$(ul).css("display","none");
		}else{
			$(".select_box > div").removeClass("up");
			$(".select_box ul").css("display","none"); 
			$(ul).prev().addClass("up");
			$(ul).css("display","block");
		}
	});
	$(".select_box ul li a").click(function(){
		var txt = $(this).text(); 
		$(this).parents(".select_box").find("> div").html(txt); 
		$(this).parents(".select_box").find("input[type=hidden]").val($(this).attr("data-val"));
	});
	
	// 커스텀셀렉트박스
	$(".select_tabbox").click(function(){
		var ul = $(this).find("ul");
		if($(ul).is(":visible")) {
			$(ul).prev().removeClass("up");
			$(ul).css("display","none");
		}else{
			$(".select_box > div").removeClass("up");
			$(".select_box ul").css("display","none"); 
			$(ul).prev().addClass("up");
			$(ul).css("display","block");
		}
	});
	$(".select_tabbox ul li a").click(function(){
		var txt = $(this).text();
		$(this).parents(".select_tabbox").find("> div").html(txt); 
	});
	
	
	var initHeader;
	var didScroll; 
	// 스크롤시에 사용자가 스크롤했다는 것을 알림 
	$(window).scroll(function(event){ 
		
		var st = $(this).scrollTop();
		if(st>50) {
			didScroll = true; 
		}
		
		if(st<=50) {
			initHeader = true;
		}
		
	}); 
	// hasScrolled()를 실행하고 didScroll 상태를 재설정 
	setInterval(function() { 
		if (didScroll) { hasScrolled(); didScroll = false; } 
	}, 50); 
	
	setInterval(function() { 
		if (initHeader) { initHeaderShape(); initHeader = false; } 
	}, 50); 
	
	function initHeaderShape() {
		$("header.header").removeClass("type2"); 
		$("header.header .logo-area").removeClass("scrolled");
	}
	
	function hasScrolled() { 
		$("header.header").addClass("type2"); 
		$("header.header .logo-area").addClass("scrolled");
	}
	
	
	
	//하단 바닥 고정 조절
	adjustFooterHeight();
	setTimeout(function() { adjustFooterHeight() }, 1000); 
	$(window).resize(function(){ adjustFooterHeight(); });
	 
});


// 하단,컨텐츠간 조절 (하단 항상 바닥 고정)
function adjustFooterHeight() {
	$("#wrapper").css("padding-bottom", $(".footer").height()+"px"); 
}


//서비스가이드탭 토글  
function toggleGuideTab(numb) {
	$("#guide-tab-wrapper .tab-section").removeClass("selected");
	$("#guide-tab-wrapper .tab-section"+numb).addClass("selected");
}
//FAQ탭 토글
function toggleFaqTab(numb) {
	$("#faq-tab-wrapper .tab-section").removeClass("selected");
	$("#faq-tab-wrapper .tab-section"+numb).addClass("selected");
}
// 컴페인 상세보기 탭 토글
function toggleCampaignTab(numb) {
	$("#campaign-tab-wrapper .tab-section").removeClass("selected");
	$("#campaign-tab-wrapper .tab-section"+numb).addClass("selected"); 
}
// 마이페이지 탭 토글 
function toggleMypageTab(numb) {
	$("#mypage-tab-wrapper .tab-section").removeClass("selected");
	$("#mypage-tab-wrapper .tab-section"+numb).addClass("selected"); 
}
// 포인트탭 토글
function togglePointTab(numb) {
	$("#point-tab-wrapper .tab-section").removeClass("selected");
	$("#point-tab-wrapper .tab-section"+numb).addClass("selected"); 
}

//부드럽게 최상단 이동
function moveTop() {
	$("html").animate({scrollTop: 0}, 500);   
}

// 1:1문의내역 QnA창 토글
function openQna(i) {
	$(i).next().toggleClass("opend"); 
}

// FAQ 내용 토글
function toggleFaqDetails(i) {
	$(i).parents("li").toggleClass("opend"); 
}

// 클립보드 복사 기능
function copy_to_clipboard(txtId) {
	var copyText = document.getElementById(txtId);
	copyText.select();
	document.execCommand("Copy"); 
}



var pop_flag_01 = false;
var pop_flag_02 = false;
var pop_flag_03 = false;

function togglePop01() {  
	if(!pop_flag_01) {
		
		$(".pop").addClass("displayNone");$("body").css("height", "auto");$("body").css("overflow", "visible");
		
		$("#pop01").removeClass("displayNone");
		var h = $("#pop01 .popbx").height();
		if(h>$(window).height()) {$("#pop01 .bx").css("height", "auto");}
		else{$("#pop01 .bx").css("height", h+"px");}
		$("body").css("height", "100%");
		$("body").css("overflow", "hidden");
		pop_flag_01 = true;
	}else{
		$("#pop01").addClass("displayNone");
		$("body").css("height", "auto");
		$("body").css("overflow", "visible");
		pop_flag_01 = false;
	}
}

function togglePop02() {              
	if(!pop_flag_02) {
		
		$(".pop").addClass("displayNone");$("body").css("height", "auto");$("body").css("overflow", "visible");
		
		$("#pop02").removeClass("displayNone");
		var h = $("#pop02 .popbx").height();
		if(h>$(window).height()) {$("#pop02 .bx").css("height", "auto");}
		else{$("#pop02 .bx").css("height", h+"px");}
		$("body").css("height", "100%");
		$("body").css("overflow", "hidden");
		pop_flag_02 = true;
	}else{
		$("#pop02").addClass("displayNone");
		$("body").css("height", "auto");
		$("body").css("overflow", "visible");
		pop_flag_02 = false;
	}
}

function togglePop03() {  
	if(!pop_flag_03) {
		
		$(".pop").addClass("displayNone");$("body").css("height", "auto");$("body").css("overflow", "visible");
		
		$("#pop03").removeClass("displayNone");
		var h = $("#pop03 .popbx").height();
		if(h>$(window).height()) {$("#pop03 .bx").css("height", "auto");}
		else{$("#pop03 .bx").css("height", h+"px");}
		$("body").css("height", "100%");
		$("body").css("overflow", "hidden");  
		pop_flag_03 = true;
	}else{
		$("#pop03").addClass("displayNone");
		$("body").css("height", "auto");
		$("body").css("overflow", "visible");
		pop_flag_03 = false;
	}
}  



// 저장된 쿠키를 가져온다.
function getCookie(name) {
    var Found = false
    var start, end
    var i = 0
    while(i <= document.cookie.length) {
        start = i
        end = start + name.length
        if(document.cookie.substring(start, end) == name) {
            Found = true
            break
        }
        i++
    }
    if(Found == true) {
        start = end + 1
        end = document.cookie.indexOf(";", start)
        if(end < start)
            end = document.cookie.length
        return document.cookie.substring(start, end)
    }
    return "";
}     
// 쿠키를 저장한다.
function setCookie(name, value, expiredays){

    var endDate = new Date();
    endDate.setDate(endDate.getDate()+expiredays);
    document.cookie = name + "=" + escape(value) + "; path=/; expires=" + endDate.toGMTString() + ";";

}


// 회원정보 로드
function getUserInfo(successed, failed){
    $.ajax({
        type : 'post',
        url : '/info',
        dataType : 'json',
        beforeSend : function(xhr){
            xhr.setRequestHeader("authorization", getCookie("token"));
            xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
        },
        success : successed,
        error: failed
    });
}

globalUser = null;





$(document).ready(function(){	 
	
	// 회원가입 이용약관 모두동의
	$("#policy_all").click(function(){ 		 
		var chval = $(this).is(":checked");		
		if(chval){   
			$('.policy-chbox').each(function() { 				
				$(this).prop("checked", true);
			});	    
		}else{  
			$('.policy-chbox').each(function() { 
				$(this).prop("checked", false);
			});
		}		
	});  
	
	// 첨부파일 클릭 이벤트
	$("#attach-file-btn").click(function(){
		$("#attach-file").click();	
	});
	
	
});
