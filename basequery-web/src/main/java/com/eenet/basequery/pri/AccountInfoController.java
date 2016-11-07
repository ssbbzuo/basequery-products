package com.eenet.basequery.pri;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.eenet.authen.AdminUserLoginAccount;
import com.eenet.authen.AdminUserLoginAccountBizService;
import com.eenet.base.SimpleResultSet;
import com.eenet.base.query.ConditionItem;
import com.eenet.base.query.QueryCondition;
import com.eenet.base.query.RangeType;
import com.eenet.basequery.page.Pagination;

@Controller
public class AccountInfoController {
	@Autowired
	private AccountInfoService accountInfoService;
	
	
	@Autowired
	private AdminUserLoginAccountBizService adminUserLoginAccountBizService;
	
	
	
	
	
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
			
			if (account.getRSBizCode()!= null && "AB0001".equals(account.getRSBizCode().getCode()) ) {
				QueryCondition queryCondition  = new QueryCondition();
				queryCondition.setMaxQuantity(-1);
				
				ConditionItem loginAccountItem = new ConditionItem("loginAccount", RangeType.EQUAL, account.getLoginAccount(), null);
				ConditionItem atidItem = new ConditionItem("atid", RangeType.EQUAL, account.getAtid(), null);
				
				queryCondition.addCondition(loginAccountItem);
				queryCondition.addCondition(atidItem);
				
				SimpleResultSet<AdminUserLoginAccount>  result =  accountInfoService.getAccountInfo(queryCondition);
				
				
				if (result.isSuccessful()&& result.getResultSet().size()==0) {
					account = accountInfoService.save(account, true);
					
					account.setRSBizCode(null);
				}
				
			}else{
				accountInfoService.save(account,true);
			}
		} 
		
		return account;
			 
	}
	
	
	
	
	
	
	
}
