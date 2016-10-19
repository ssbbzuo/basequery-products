package com.eenet.basequery.biz.sales;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.eenet.base.SimpleResultSet;
import com.eenet.base.query.QueryCondition;
import com.eenet.basequery.page.Pagination;
import com.eenet.basequery.sales.SaleCustomerFollow;
import com.eenet.basequery.sales.SaleCustomerFollowService;

@Controller
@RequestMapping("/salecustomerfollow")
public class SaleCustomerFollowController {
	
	@Autowired
	private SaleCustomerFollowService saleCustomerFollowService;
	
	@RequestMapping(value="/query")
	public String query(QueryCondition queryCondition,Pagination pagination ,Model model){
		queryCondition.setMaxQuantity(pagination.getPageSize());
		queryCondition.setStartIndex(pagination.getIndexCurrent());
		SimpleResultSet<SaleCustomerFollow>  result =  saleCustomerFollowService.query(queryCondition);
		model.addAttribute("resultMap", result);
		pagination.setTotal(result.getCount());
		model.addAttribute("pagination", pagination);
		return "sales/saleCustomerFollowList";
	}
	
}
