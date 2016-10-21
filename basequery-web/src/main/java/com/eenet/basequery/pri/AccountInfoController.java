package com.eenet.basequery.pri;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.eenet.authen.AccessToken;
import com.eenet.authen.AdminUserLoginAccount;
import com.eenet.authen.AdminUserLoginAccountBizService;
import com.eenet.authen.AdminUserSignOnBizService;
import com.eenet.authen.IdentityAuthenticationBizService;
import com.eenet.authen.SignOnGrant;
import com.eenet.authen.request.UserAccessTokenAuthenRequest;
import com.eenet.authen.response.UserAccessTokenAuthenResponse;
import com.eenet.base.SimpleResultSet;
import com.eenet.base.query.QueryCondition;
import com.eenet.basequery.authen.AuthenUtils;
import com.eenet.basequery.authen.Constant;
import com.eenet.basequery.page.Pagination;
import com.eenet.common.OPOwner;

@Controller
public class AccountInfoController {
	@Autowired
	private AccountInfoService accountInfoService;
	
	@Autowired
	private IdentityAuthenticationBizService identityAuthenticationBizService;
	
	@Autowired
	private AdminUserLoginAccountBizService adminUserLoginAccountBizService;
	
	@Autowired
	private AdminUserSignOnBizService adminUserSignOnBizService;
	
	
	
	@RequestMapping(value="/accountList")
	public String userList(QueryCondition queryCondition,Pagination pagination ,Model model){
		queryCondition.setMaxQuantity(pagination.getPageSize());
		queryCondition.setStartIndex(pagination.getIndexCurrent());
		SimpleResultSet<AdminUserLoginAccount>  result =  accountInfoService.getAccountInfo(queryCondition);
		model.addAttribute("resultMap", result);
		pagination.setTotal(result.getCount());
		model.addAttribute("pagination", pagination);
		return "pri/accountList";
	}
	
	
	
	@RequestMapping(value="/myAccountList")
	public String myAccountList(QueryCondition queryCondition,Pagination pagination ,Model model){
		queryCondition.setMaxQuantity(pagination.getPageSize());
		queryCondition.setStartIndex(pagination.getIndexCurrent());
		SimpleResultSet<AdminUserLoginAccount>  result =  accountInfoService.getAccountInfo(queryCondition);
		model.addAttribute("resultMap", result);
		pagination.setTotal(result.getCount());
		model.addAttribute("pagination", pagination);
		return "pri/accountList";
	}
	
	
	@RequestMapping(value="/saveAccount")
	@ResponseBody
	public AdminUserLoginAccount saveUser(HttpServletRequest request,HttpSession session,AdminUserLoginAccount accountInfo){
		
		AdminUserLoginAccount account  =  adminUserLoginAccountBizService.registeAdminUserLoginAccount(accountInfo);
		if (account.isSuccessful()) {
			accountInfoService.save(account,true);
		}
		
		return account;
			 
	}
	
	
	
	
	
	
	
}
