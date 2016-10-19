package com.eenet.basequery.biz.learncenter;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.eenet.base.SimpleResultSet;
import com.eenet.base.query.QueryCondition;
import com.eenet.basequery.learncenter.LCReserveOrder;
import com.eenet.basequery.learncenter.LCReserveOrderService;
import com.eenet.basequery.page.Pagination;

@Controller
@RequestMapping("/lcreserveorder")
public class LCReserveOrderController {
	
	@Autowired
	private LCReserveOrderService lcRrserveOrderService;
	
	@RequestMapping(value="/query")
	public String query(QueryCondition queryCondition,Pagination pagination ,Model model){
		queryCondition.setMaxQuantity(pagination.getPageSize());
		queryCondition.setStartIndex(pagination.getIndexCurrent());
		SimpleResultSet<LCReserveOrder>  result =  lcRrserveOrderService.query(queryCondition);
		model.addAttribute("resultMap", result);
		pagination.setTotal(result.getCount());
		model.addAttribute("pagination", pagination);
		return "learncenter/lcReserveOrderList";
	}
	
}
