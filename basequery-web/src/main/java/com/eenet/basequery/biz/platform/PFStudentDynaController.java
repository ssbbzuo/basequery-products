package com.eenet.basequery.biz.platform;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.eenet.base.SimpleResultSet;
import com.eenet.base.query.QueryCondition;
import com.eenet.basequery.page.Pagination;
import com.eenet.basequery.platform.PFStudentDyna;
import com.eenet.basequery.platform.PFStudentDynaService;

@Controller
public class PFStudentDynaController {
	
	@Autowired
	private PFStudentDynaService pfStudentDynaService;
	
	@RequestMapping(value="/getPFStudentDyna")
	public String getPFStudentDyna(QueryCondition queryCondition,Pagination pagination ,Model model){
		queryCondition.setMaxQuantity(pagination.getPageSize());
		queryCondition.setStartIndex(pagination.getIndexCurrent());
		SimpleResultSet<PFStudentDyna>  result =  pfStudentDynaService.getPFStudentDyna(queryCondition);
		model.addAttribute("resultMap", result);
		pagination.setTotal(result.getCount());
		model.addAttribute("pagination", pagination);
		return "platform/pfStudentDynaList";
	}
	
}
