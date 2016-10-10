package com.eenet.basequery.biz.sales;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.eenet.base.SimpleResultSet;
import com.eenet.base.query.QueryCondition;
import com.eenet.basequery.page.Pagination;
import com.eenet.basequery.sales.SaleOrder;
import com.eenet.basequery.sales.SaleOrderService;

@Controller
public class SaleOrderController {
	
	@Autowired
	private SaleOrderService saleOrderService;
	
	@RequestMapping(value="/getSaleOrder")
	public String getSaleOrder(QueryCondition queryCondition,Pagination pagination ,Model model){
		queryCondition.setMaxQuantity(pagination.getPageSize());
		queryCondition.setStartIndex(pagination.getIndexCurrent());
		SimpleResultSet<SaleOrder>  result =  saleOrderService.getSaleOrder(queryCondition);
		model.addAttribute("resultMap", result);
		pagination.setTotal(result.getCount());
		model.addAttribute("pagination", pagination);
		return "sales/saleOrderList";
	}
	
}
