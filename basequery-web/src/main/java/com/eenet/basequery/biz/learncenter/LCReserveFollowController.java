package com.eenet.basequery.biz.learncenter;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.eenet.base.SimpleResultSet;
import com.eenet.base.query.QueryCondition;
import com.eenet.basequery.learncenter.LCReserveFollow;
import com.eenet.basequery.learncenter.LCReserveFollowService;
import com.eenet.basequery.page.Pagination;

@Controller
@RequestMapping("/lcreservefollow")
public class LCReserveFollowController {
	
	@Autowired
	private LCReserveFollowService lcReserveFollowService;
	
	@RequestMapping(value="/query")
	public String query(QueryCondition queryCondition,Pagination pagination ,Model model){
		queryCondition.setMaxQuantity(pagination.getPageSize());
		queryCondition.setStartIndex(pagination.getIndexCurrent());
		SimpleResultSet<LCReserveFollow>  result =  lcReserveFollowService.query(queryCondition);
		model.addAttribute("resultMap", result);
		pagination.setTotal(result.getCount());
		model.addAttribute("pagination", pagination);
		return "learncenter/lcReserveFollowList";
	}
	
}
