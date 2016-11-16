package com.eenet.basequery.biz.learncenter;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.eenet.authen.AdminUserLoginAccount;
import com.eenet.base.SimpleResultSet;
import com.eenet.base.query.QueryCondition;
import com.eenet.basequery.authen.Constant;
import com.eenet.basequery.learncenter.LCStudent;
import com.eenet.basequery.learncenter.LCStudentService;
import com.eenet.basequery.page.Pagination;

@Controller
@RequestMapping("/lcstudent")
public class LCStudentController {
	
	@Autowired
	private LCStudentService lcStudentService;
	
	@RequestMapping(value="/query")
	public String query(HttpSession session,QueryCondition queryCondition,Pagination pagination ,Model model){
		queryCondition.setMaxQuantity(pagination.getPageSize());
		queryCondition.setStartIndex(pagination.getIndexCurrent());
		SimpleResultSet<LCStudent>  result =  lcStudentService.query(getUserId(session),queryCondition);
		model.addAttribute("resultMap", result);
		pagination.setTotal(result.getCount());
		model.addAttribute("pagination", pagination);
		System.out.println("");
		return "learncenter/lcStudentList";
	}
	
	private String getUserId(HttpSession session){
		AdminUserLoginAccount adminUser = (AdminUserLoginAccount)session.getAttribute(Constant.adminUserLoginInfoSession);
		if(adminUser!=null){
			return adminUser.getUserInfo().getAtid();
		}
		return "";
	}
	
}
