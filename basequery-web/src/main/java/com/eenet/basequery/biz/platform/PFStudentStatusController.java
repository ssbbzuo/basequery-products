package com.eenet.basequery.biz.platform;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.eenet.base.SimpleResultSet;
import com.eenet.base.query.QueryCondition;
import com.eenet.basequery.page.Pagination;
import com.eenet.basequery.platform.PFStudentStatus;
import com.eenet.basequery.platform.PFStudentStatusService;

@Controller
public class PFStudentStatusController {
	
	@Autowired
	private PFStudentStatusService pfStudentStatusService;
	
	@RequestMapping(value="/getPFStudentStatus")
	public String getPFStudentStatus(QueryCondition queryCondition,Pagination pagination ,Model model){
		queryCondition.setMaxQuantity(pagination.getPageSize());
		queryCondition.setStartIndex(pagination.getIndexCurrent());
		SimpleResultSet<PFStudentStatus>  result =  pfStudentStatusService.getPFStudentStatus(queryCondition);
		model.addAttribute("resultMap", result);
		pagination.setTotal(result.getCount());
		model.addAttribute("pagination", pagination);
		return "platform/pfStudentStatusList";
	}
	
}
