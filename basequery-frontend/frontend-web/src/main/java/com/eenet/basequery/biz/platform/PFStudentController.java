package com.eenet.basequery.biz.platform;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.eenet.base.SimpleResultSet;
import com.eenet.base.query.QueryCondition;
import com.eenet.basequery.page.Pagination;
import com.eenet.basequery.platform.PFStudent;
import com.eenet.basequery.platform.PFStudentService;

@Controller
public class PFStudentController {
	
	@Autowired
	private PFStudentService pfStudentService;
	
	@RequestMapping(value="/getPFStudent")
	public String getPFStudent(QueryCondition queryCondition,Pagination pagination ,Model model){
		queryCondition.setMaxQuantity(pagination.getPageSize());
		queryCondition.setStartIndex(pagination.getIndexCurrent());
		SimpleResultSet<PFStudent>  result =  pfStudentService.getPFStudent(queryCondition);
		model.addAttribute("resultMap", result);
		pagination.setTotal(result.getCount());
		model.addAttribute("pagination", pagination);
		return "platform/pfStudentList";
	}
	
}
