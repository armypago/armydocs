package com.armydocs.basic.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import com.armydocs.basic.vo.*;

import org.mybatis.spring.support.SqlSessionDaoSupport;


public class BasicDao extends SqlSessionDaoSupport {
    
    public boolean updateUser(UserVo userVo) {
        Map<String,Object> pMap = new HashMap<String,Object>();
        Integer result =  getSqlSession().update("basic.updateUser", userVo);
	    if(result!=null&&result>0) {
            return true;
        }
        return false;
    }
    public boolean updatePassword(int idx, String password) {
        Map<String,Object> pMap = new HashMap<String,Object>();
        pMap.put("idx", idx);
        pMap.put("password", password);
        Integer result =  getSqlSession().update("basic.updatePassword", pMap);
	    if(result!=null&&result>0) {
            return true;
        }
        return false;
    }
    
	// 회원 정보 가져오기
    public UserVo getUserByIdx(int idx) {       
		return getSqlSession().selectOne("basic.getUserByIdx", idx);
	}
    
    // 회원 정보 가져오기
    public UserVo getUserById(String id) {       
		return getSqlSession().selectOne("basic.getUserById", id);
	}
    
    // 회원 정보 등록하기
    public boolean insertUser(UserVo userVo) {       
		Integer result =  getSqlSession().insert("basic.insertUser", userVo);
	    if(result!=null&&result>0) {
            return true;
        }
        return false;
    }
    
    
        
}