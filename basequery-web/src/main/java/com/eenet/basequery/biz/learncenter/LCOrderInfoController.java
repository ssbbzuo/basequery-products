package com.eenet.basequery.biz.learncenter;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.eenet.base.SimpleResultSet;
import com.eenet.base.query.QueryCondition;
import com.eenet.basequery.learncenter.LCOrderInfo;
import com.eenet.basequery.learncenter.LCOrderInfoService;
import com.eenet.basequery.page.Pagination;

@Controller
@RequestMapping("/lcorderinfo")
public class LCOrderInfoController {
	
	@Autowired
	private LCOrderInfoService lcOrderInfoService;
	
	@RequestMapping(value="/query")
	public String query(QueryCondition queryCondition,Pagination pagination ,Model model){
		queryCondition.setMaxQuantity(pagination.getPageSize());
		queryCondition.setStartIndex(pagination.getIndexCurrent());
		SimpleResultSet<LCOrderInfo>  result =  lcOrderInfoService.query(queryCondition);
		model.addAttribute("resultMap", result);
		pagination.setTotal(result.getCount());
		model.addAttribute("pagination", pagination);
		return "learncenter/lcOrderInfoList";
	}
	
}
