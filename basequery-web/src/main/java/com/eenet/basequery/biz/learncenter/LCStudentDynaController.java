package com.eenet.basequery.biz.learncenter;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.eenet.base.SimpleResultSet;
import com.eenet.base.query.QueryCondition;
import com.eenet.basequery.learncenter.LCStudentDyna;
import com.eenet.basequery.learncenter.LCStudentDynaService;
import com.eenet.basequery.page.Pagination;

@Controller
public class LCStudentDynaController {
	
	@Autowired
	private LCStudentDynaService lcStudentDynaService;
	
	@RequestMapping(value="/getLCStudentDyna")
	public String getLCStudentDyna(QueryCondition queryCondition,Pagination pagination ,Model model){
		queryCondition.setMaxQuantity(pagination.getPageSize());
		queryCondition.setStartIndex(pagination.getIndexCurrent());
		SimpleResultSet<LCStudentDyna>  result =  lcStudentDynaService.getLCStudentDyna(queryCondition);
		model.addAttribute("resultMap", result);
		pagination.setTotal(result.getCount());
		model.addAttribute("pagination", pagination);
		return "learncenter/lcStudentDynaList";
	}
	
}
