package com.eenet.basequery.datareport;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.eenet.base.SimpleResultSet;
import com.eenet.base.query.QueryCondition;
import com.eenet.basequery.page.Pagination;

@Controller
@RequestMapping("/datareport")
public class DRStudentDataReportController {
	
	@Autowired
	private DRStudentDataReportService dRStudentDataReportService;
	
	@RequestMapping(value="/query")
	public String query(HttpSession session,QueryCondition queryCondition,Pagination pagination ,Model model){
		queryCondition.setMaxQuantity(pagination.getPageSize());
		queryCondition.setStartIndex(pagination.getIndexCurrent());
		SimpleResultSet<DRStudentDataReport> result = dRStudentDataReportService.query(queryCondition);
		pagination.setTotal(result.getCount());
		model.addAttribute("resultMap", result);
		model.addAttribute("Pagination", pagination);
		
		return "datareport/DRStudentList";
	}
/**
 * 详情
 * @param session
 * @param queryCondition
 * @param pagination
 * @param model
 * @return
 */
	@RequestMapping(value="/detail")
	public String detail(HttpSession session,QueryCondition queryCondition,Pagination pagination ,Model model){
		queryCondition.setMaxQuantity(pagination.getPageSize());
		queryCondition.setStartIndex(pagination.getIndexCurrent());
		SimpleResultSet<DRStudentDataReport> result = dRStudentDataReportService.query(queryCondition);
		pagination.setTotal(result.getCount());
		model.addAttribute("resultMap", result);
		model.addAttribute("Pagination", pagination);
		
		SimpleResultSet<DRStudentDataReport> result = drStudentDataReportService.queryDetail(queryCondition);
		return "datareport/DRStudentDetail";
	}
	
}
