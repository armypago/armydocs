package com.armydocs;

import java.io.UnsupportedEncodingException;
import java.util.LinkedHashMap;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.armydocs.basic.service.BasicService;
import com.armydocs.basic.dao.BasicDao;
import com.armydocs.basic.vo.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.PathVariable;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.armydocs.basic.service.JwtServiceImpl;

import javax.servlet.http.Cookie;
import com.armydocs.util.*;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;


@CrossOrigin(origins = "*")
@Controller
public class MainController {
     
    @Autowired private BasicService basicService;
    @Autowired private BasicDao basicDao;
    @Autowired private JwtServiceImpl jwtService;
    @Autowired private BCryptPasswordEncoder passwordEncoder;
	
	
	
    @RequestMapping("/new")
	public String getIntnewPage(HttpServletRequest request, ModelMap model) {return "new"; }
    
	
	// 약관 페이지
    @RequestMapping("/terms/{terms}")
	public String getTermsPage(@PathVariable String terms, HttpServletRequest request, ModelMap model) {
		if(terms!=null && terms.equals("privacy")) {
			return "privacy";
		}
		return "terms";
	}
	
	// 소개 페이지
    @RequestMapping("/intro")
	public String getIntroPage(HttpServletRequest request, ModelMap model) {return "intro"; }
    
    // 메인페이지
    @RequestMapping("")
	public String getMainPage(HttpServletRequest request, ModelMap model) {return "home"; }
    
    // 로그인 페이지
    @RequestMapping("/login")
	public String getLoginPage(HttpServletRequest request, ModelMap model) {return "login";}
    
    // 회원가입 페이지
    @RequestMapping("/join")
	public String getJoinPage(HttpServletRequest request, ModelMap model) {return "join";}
    
    // 마이 페이지
    @RequestMapping("/my")
	public String getMyPage(HttpServletRequest request, ModelMap model) {return "mypage";}
	
	// 설문 등록 페이지
    @RequestMapping("/my/survey")
	public String getSurveyRegisterPage(HttpServletRequest request, ModelMap model) {return "survey/register";}
	
	
	// 설문 항목 로드
    @RequestMapping(value = "/surveys")
    @ResponseBody
	public Rst loadSurveys(
		@RequestParam(required=false, value="type") String type,
		HttpServletRequest request) throws Exception {
        
        Rst result = Rst.successInstance();
		
		List<SurveyVo> list = null;
		
		// 현재 진행중인(참여가능한) 설문 목록
		if(type!=null && type.equals("progress")) {
			list = basicDao.getProgressSurveys();
		}
		// 내가 작성(등록)한 설문 목록
		else {
			int memberId = jwtService.getMemberId();
			list = basicDao.getSurveys(memberId);
		} 
		
		result.setData(list);
        return result;
    }
	
	// 설문 생성 (1)
    @RequestMapping(value = "/survey", method = RequestMethod.POST)
    @ResponseBody
	public Rst createSurvey(@ModelAttribute SurveyVo surveyVo, HttpServletRequest request) throws Exception {
        
        Rst result = Rst.successInstance();
		
		surveyVo.printVal();
        
		int memberId = jwtService.getMemberId();
        Integer idx = basicService.insertSurvey(memberId, surveyVo);
        if(idx == null) {
			result.fail();
		}else {
			result.setData(idx);
		}
		
        return result;
    }
	
	// 설문 생성 (2)
    @RequestMapping(value = "/my/survey/{surveyIdx}", method = RequestMethod.GET)
	public String createSurvey(@PathVariable int surveyIdx, HttpServletRequest request, ModelMap model) throws Exception {
        
		/*
			해당 설문idx가 자기꺼인지 확인
		*/
		
		SurveyVo inf = basicDao.getSurveyInfoByIdx(surveyIdx);
		if(inf==null) {
			System.out.println("Not Survey Information");
			return "redirect:/my/";
		}
		model.put("survey", inf);
		
        return "survey/items";
    }
	
	// 설문 항목 정보 로드 (2)
    @RequestMapping(value = "/survey/{surveyIdx}", method = RequestMethod.GET)
	@ResponseBody
	public Rst createSurvey2(@PathVariable int surveyIdx) throws Exception {
		
		/*
			해당 설문idx가 자기꺼인지 확인
		*/
		Rst result = Rst.successInstance();
		
		List<SurveyItem> list = basicDao.getItems(surveyIdx);
		result.setData(list);
		
		return result;
    }
	
	// 설문 항목 생성 (2)
    @RequestMapping(value = "/survey/{surveyIdx}", method = RequestMethod.POST)
	@ResponseBody
	public Rst createSurvey2(@PathVariable int surveyIdx, 
			@RequestParam(required=false, value="corder") Integer corder,
			@RequestParam(required=false, value="responseNote") String responseNote,
			@RequestParam(required=false, value="qtype") String qtype,
			@RequestParam(required=false, value="note") String note,
			@RequestParam(required=false, value="nowDate") String nowDate,
			ModelMap model) throws Exception {
		
		/*
			해당 설문idx가 자기꺼인지 확인
		*/
        
		Rst result = Rst.successInstance();
		
		System.out.println("surveyIdx: "+ surveyIdx +", corder: "+corder+", qtype:"+qtype+", res: "+responseNote);
		SurveyItem item = new SurveyItem(surveyIdx, corder, note, responseNote, qtype, nowDate);
		
		
		basicService.insertItem(item);
		
		
		return result;
    }
	
	
	
    
    /** 로그아웃 */
    @RequestMapping("/logout")
	public String doLogout(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
        
        System.out.println("try logout..");
        
        Cookie kc = new Cookie("token", null);     // (쿠키 이름)에 대한 값을 null로 지정
        kc.setMaxAge(0);                           // 유효시간을 0으로 설정
        response.addCookie(kc);                    // 응답 헤더에 추가해서 없어지도록 함
        
        System.out.println("success logout..");
        return "home";
    }
    
    
    // 회원가입
    @RequestMapping(value = "/signup", method = RequestMethod.POST)
    @ResponseBody
	public Rst signUp(@ModelAttribute UserVo userVo, HttpServletRequest request) {
        
        Rst result = Rst.successInstance();
        /*
            아이디, 이메일 중복검사
            기타 필드 유효성 검사
        */
        
        if(!basicService.signUp(userVo)) {
           result.fail();
        }
        
        return result;
    }
    
    // 로그인 처리
    @RequestMapping("/signin")
    @ResponseBody
	public Rst signIn(
        @RequestParam(required=false, value="id") String id,
        @RequestParam(required=false, value="pw") String pw,
        HttpServletRequest request, HttpServletResponse response, ModelMap model) {
        
        Rst result = Rst.successInstance();
        
        UserVo user = basicService.signIn(id, pw);
        if(user!=null) {
            // 토큰 생성 및 리턴 처리
            String token = jwtService.create("member", user, "member");
            response.setHeader("Authorization", token);
            result.setData(user);
            
            //System.out.println("[Login OK]");
            
            return result;
        }
        
        return result.fail().setMessage("incorrect passowrd");
    }
    
	// 회원 정보 로드
    @RequestMapping(value="/info")
    @ResponseBody
    public Rst getInfoData(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
        
    	Rst result = Rst.successInstance();
        int memberId = jwtService.getMemberId();
        UserVo userVo = basicDao.getUserByIdx(memberId);
        result.setData(userVo);
        return result;
    }
	
	/** 회원 탈퇴 */
    @RequestMapping(value="/user", method = RequestMethod.DELETE)
    @ResponseBody
    public Rst withdraw(HttpServletRequest request) throws Exception {
		
		Rst result = Rst.successInstance();
        int memberId = jwtService.getMemberId();
		
		System.out.println("MemberID For Delete: "+ memberId);
		
		if(!basicDao.deleteUserByIdx(memberId)) {
			return result.fail().setMessage("errors");
		}
		return result;
	}
    
    /** 회원정보 수정 */
    @RequestMapping(value="/user", method = RequestMethod.POST)
    @ResponseBody
    public Rst changeUserInfo(@ModelAttribute UserVo userVo, 
							  @RequestParam(required=false, value="oldPassword") String oldPassword,
							  @RequestParam(required=false, value="newPassword") String newPassword,
							  HttpServletRequest request) throws Exception {
        
        System.out.println("PASSWORD: "+ oldPassword);
		System.out.println("PASSWORD(NEW): "+ newPassword);
		userVo.printVal();
        
        
    	Rst result = Rst.successInstance();
        int memberId = jwtService.getMemberId();
		
		System.out.println("MemberID: "+ memberId);
        
		// 회원 기본정보 업데이트
        basicService.changeUserInformation(memberId, userVo);
		
		//try {
			// 비밀번호 업데이트
			if(oldPassword!=null && oldPassword.trim()!="" &&
			   newPassword!=null && newPassword.trim()!="") {

				if(!basicService.changePassword(memberId, oldPassword, newPassword)){
					result.fail().setMessage("password incorrect");
				}
			}
		//}catch(Exception ec) {
			//ec.printStackTrace();
		//}
		
		
        return result;
    }
    
	
	@RequestMapping(value = "/file/upload", method = RequestMethod.POST)
	@ResponseBody
	public String uploadFilePageString(MultipartHttpServletRequest mRequest) throws Exception {
		
		String fileName = FileUtil.upload(mRequest, true, null);
		System.out.println(fileName);
		return fileName;
	}
	@RequestMapping(value = "/file/upload2", method = RequestMethod.POST)
	@ResponseBody
	public String uploadFilePageString2(HttpServletRequest mRequest) throws Exception {
		
		String fileName = FileUtil.upload((MultipartHttpServletRequest) mRequest, true, null);
		System.out.println(fileName);
		return fileName;
	}
    
    @RequestMapping(value = {"rest"})
    @ResponseBody
	public Map<String,Object> getTestObjectPage(@RequestParam(required=false, value="param") Integer param) {
            
        Map<String,Object> result = new HashMap<String,Object>();
        //result.put("lists",basicService.getHeesungString());
        
        return result;
    }
    
    
}