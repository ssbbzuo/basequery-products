package com.eenet.basequery.biz.sales;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.eenet.base.SimpleResultSet;
import com.eenet.base.query.QueryCondition;
import com.eenet.basequery.page.Pagination;
import com.eenet.basequery.sales.SaleStudentDyna;
import com.eenet.basequery.sales.SaleStudentDynaService;

@Controller
public class SaleStudentDynaController {
	
	@Autowired
	private SaleStudentDynaService saleStudentDynaService;
	
	@RequestMapping(value="/getSaleStudentDyna")
	public String getSaleStudentDyna(QueryCondition queryCondition,Pagination pagination ,Model model){
		queryCondition.setMaxQuantity(pagination.getPageSize());
		queryCondition.setStartIndex(pagination.getIndexCurrent());
		SimpleResultSet<SaleStudentDyna>  result =  saleStudentDynaService.getSaleStudentDyna(queryCondition);
		model.addAttribute("resultMap", result);
		pagination.setTotal(result.getCount());
		model.addAttribute("pagination", pagination);
		return "sales/saleStudentDynaList";
	}
	
}
