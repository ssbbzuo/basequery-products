package com.eenet.basequery.query;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.eenet.basequery.frontend.query.QuerySqlService;
import com.eenet.basequery.page.Pagination;
import com.eenet.util.EEBeanUtils;

@Controller
public class QuerySqlController {
	
	@Autowired
	private QuerySqlService querySqlService;

	@RequestMapping(value="/getBySql")
	public String getBySql(String sql ,Pagination pagination ,Model model){
		if(!EEBeanUtils.isNULL(sql)){
			pagination.setPageSize(100);
			Map<String,List> resultMap = querySqlService.getDataBySql(sql,pagination.getIndexCurrent(),pagination.getPageSize());
			pagination.setTotal(resultMap.get("totalList")!=null?(int)resultMap.get("totalList").get(0):0);
			model.addAttribute("resultMap", resultMap);
		}
		model.addAttribute("sql", sql);
		model.addAttribute("pagination", pagination);
		return "query/querySql";
	}
}
