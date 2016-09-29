package com.eenet.basequery.biz.sales;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.eenet.base.SimpleResultSet;
import com.eenet.base.query.QueryCondition;
import com.eenet.basequery.page.Pagination;
import com.eenet.basequery.sales.SaleStudent;
import com.eenet.basequery.sales.SaleStudentService;

@Controller
public class SaleStudentController {
	
	@Autowired
	private SaleStudentService saleStudentService;
	
	@RequestMapping(value="/getSaleStudent")
	public String getSaleStudent(QueryCondition queryCondition,Pagination pagination ,Model model){
		queryCondition.setMaxQuantity(pagination.getPageSize());
		queryCondition.setStartIndex(pagination.getIndexCurrent());
		SimpleResultSet<SaleStudent>  result =  saleStudentService.getSaleStudent(queryCondition);
		model.addAttribute("resultMap", result);
		pagination.setTotal(result.getCount());
		model.addAttribute("pagination", pagination);
		return "sales/saleStudentList";
	}
	
}
