package com.eenet.basequery.biz.sales;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.eenet.base.SimpleResultSet;
import com.eenet.base.query.QueryCondition;
import com.eenet.basequery.page.Pagination;
import com.eenet.basequery.sales.SaleCustomer;
import com.eenet.basequery.sales.SaleCustomerService;

@Controller
public class SaleCustomerController {
	
	@Autowired
	private SaleCustomerService saleCustomerService;
	
	@RequestMapping(value="/getSaleCustomer")
	public String getSaleCustomer(QueryCondition queryCondition,Pagination pagination ,Model model){
		queryCondition.setMaxQuantity(pagination.getPageSize());
		queryCondition.setStartIndex(pagination.getIndexCurrent());
		SimpleResultSet<SaleCustomer>  result =  saleCustomerService.getSaleCustomer(queryCondition);
		model.addAttribute("resultMap", result);
		pagination.setTotal(result.getCount());
		model.addAttribute("pagination", pagination);
		return "sales/saleCustomerList";
	}
	
}
