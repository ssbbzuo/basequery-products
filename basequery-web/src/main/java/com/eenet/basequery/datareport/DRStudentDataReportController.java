package com.eenet.basequery.datareport;

import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.eenet.base.SimpleResultSet;
import com.eenet.base.query.ConditionItem;
import com.eenet.base.query.QueryCondition;
import com.eenet.base.query.RangeType;
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

	@RequestMapping(value="/detail")
	public String queryDetail(HttpSession session,javax.servlet.http.HttpServletRequest request, QueryCondition queryCondition,Model model){
		/*queryCondition.setMaxQuantity(pagination.getPageSize());
		queryCondition.setStartIndex(pagination.getIndexCurrent());*/
		if(StringUtils.isNotBlank(request.getParameter("atId"))){
			
			ConditionItem item =new ConditionItem("ATID", RangeType.EQUAL, "c5191431cc6443ab8a1e4efc4eb521ff", "");
			queryCondition.addCondition(item);
			//SimpleResultSet<DRStudentDataReport> result = dRStudentDataReportService.query(queryCondition);
			SimpleResultSet<DRStudentDataReport> result = dRStudentDataReportService.queryDetail(queryCondition);
			/*pagination.setTotal(result.getCount());*/
			model.addAttribute("resultMap", result);
			System.out.println(result);
		}
		
		return "datareport/DRStudentDetail";
	}
}
