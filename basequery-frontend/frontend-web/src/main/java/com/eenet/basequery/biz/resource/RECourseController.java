package com.eenet.basequery.biz.resource;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.eenet.base.SimpleResultSet;
import com.eenet.base.query.QueryCondition;
import com.eenet.basequery.page.Pagination;
import com.eenet.basequery.resource.RECourse;
import com.eenet.basequery.resource.RECourseService;

@Controller
public class RECourseController {
	
	@Autowired
	private RECourseService reCourseService;
	
	@RequestMapping(value="/getRECourse")
	public String getRECourse(QueryCondition queryCondition,Pagination pagination ,Model model){
		queryCondition.setMaxQuantity(pagination.getPageSize());
		queryCondition.setStartIndex(pagination.getIndexCurrent());
		SimpleResultSet<RECourse>  result =  reCourseService.getRECourse(queryCondition);
		model.addAttribute("resultMap", result);
		pagination.setTotal(result.getCount());
		model.addAttribute("pagination", pagination);
		model.addAttribute("queryCondition", queryCondition);
		return "resource/reCourseList";
	}
	
}
