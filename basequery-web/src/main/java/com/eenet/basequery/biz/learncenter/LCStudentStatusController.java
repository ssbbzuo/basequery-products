package com.eenet.basequery.biz.learncenter;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.eenet.base.SimpleResultSet;
import com.eenet.base.query.QueryCondition;
import com.eenet.basequery.learncenter.LCStudentStatus;
import com.eenet.basequery.learncenter.LCStudentStatusService;
import com.eenet.basequery.page.Pagination;

@Controller
public class LCStudentStatusController {
	
	@Autowired
	private LCStudentStatusService lcStudentStatusService;
	
	@RequestMapping(value="/getLCStudentStatus")
	public String getLCStudentStatus(QueryCondition queryCondition,Pagination pagination ,Model model){
		queryCondition.setMaxQuantity(pagination.getPageSize());
		queryCondition.setStartIndex(pagination.getIndexCurrent());
		SimpleResultSet<LCStudentStatus>  result =  lcStudentStatusService.getLCStudentStatus(queryCondition);
		model.addAttribute("resultMap", result);
		pagination.setTotal(result.getCount());
		model.addAttribute("pagination", pagination);
		return "learncenter/lcStudentStatusList";
	}
	
}
