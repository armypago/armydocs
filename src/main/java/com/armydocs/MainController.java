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

import com.armydocs.basic.service.JwtServiceImpl;



import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;


@CrossOrigin(origins = "*")
@Controller
public class MainController {
     
    @Autowired private BasicService basicService;
    @Autowired private BasicDao basicDao;
    @Autowired private JwtServiceImpl jwtService;
    @Autowired private BCryptPasswordEncoder passwordEncoder;
    
    
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
    
    
    // 회원가입
    //@RequestMapping(value = "/signup", method = RequestMethod.POST)
    @RequestMapping("/signup")
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
            
            System.out.println("[Login OK]");
            
            return result;
        }
        
        return null;
    }
    
    @RequestMapping(value="/info")
    @ResponseBody
    public Rst infoTest(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
        
    	Rst result = Rst.successInstance();
        int memberId = jwtService.getMemberId();
        UserVo userVo = basicDao.getUserByIdx(memberId);
        result.setData(userVo);
        
        return result;
    }
    
    /** 회원정보 수정 */
    @RequestMapping(value="/user", method = RequestMethod.PUT)
    @ResponseBody
    public Rst changeUserInfo(@ModelAttribute UserVo userVo, HttpServletRequest request) throws Exception {
        
    	Rst result = Rst.successInstance();
        int memberId = jwtService.getMemberId();
        
        basicService.changeUserInformation(memberId, userVo);
        
        return result;
    }
    
    
    @RequestMapping(value = {"rest"})
    @ResponseBody
	public Map<String,Object> getTestObjectPage(@RequestParam(required=false, value="param") Integer param) {
            
        Map<String,Object> result = new HashMap<String,Object>();
        //result.put("lists",basicService.getHeesungString());
        
        return result;
    }
    
    
}