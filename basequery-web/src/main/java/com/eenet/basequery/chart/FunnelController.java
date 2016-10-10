package com.eenet.basequery.chart;

import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.eenet.base.SimpleResultSet;
import com.eenet.base.query.ConditionItem;
import com.eenet.base.query.OrderBy;
import com.eenet.base.query.QueryCondition;
import com.eenet.base.query.RangeType;
import com.eenet.base.query.Rank;

@Controller
public class FunnelController {

	@Autowired
	private FunnelService funnelservice;

	@RequestMapping(value = "/getFunnel")
	public String getTest() throws Exception {		
		// 跳转到相对应的页面
		return "chart/funnel";
	}
	
	@RequestMapping(value = "/search")
	public void searchMethod(QueryCondition queryCondition,HttpServletRequest request, HttpServletResponse response) throws Exception {
		SimpleResultSet<Test03> result = funnelservice.getTest(queryCondition);
		
		// 遍历数据
		List<Test03> list = result.getResultSet();
		String str = "[";

		for (Test03 test : list) {
			str += "{memo:\"" + test.getMemo() + "\",number:\"" + test.getNumber()+ "\",percent:\"" + test.getPercent()+ "\"},";
		}

		str = str.substring(0, str.length() - 1) + "]";

		request.setCharacterEncoding("utf-8"); // 这里不设置编码会有乱码
		PrintWriter out = response.getWriter();
		out.print(str);
		out.flush();
		out.close();
	}
	
	@RequestMapping(value = "/gauge")
	public void gaugeMethod(QueryCondition queryCondition,HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		queryCondition.addCondition(new ConditionItem("memo", RangeType.INCLUDE, request.getParameter("memo"), null));
		
		List<OrderBy> listOrder = new ArrayList<OrderBy>();
		listOrder.add(new OrderBy("percent", Rank.DESC));
		queryCondition.setOrderBySet(listOrder);
		
		SimpleResultSet<Test03> result = funnelservice.getTest(queryCondition);		
		// 遍历数据
		List<Test03> list = result.getResultSet();
		String str = "[";
		for (Test03 test : list) {
			str += "{value:\"" + test.getPercent() + "\",name:\"" + test.getMemo()+"转化率\"},";
		}

		str = str.substring(0, str.length() - 1) + "]";
		


		request.setCharacterEncoding("utf-8"); // 这里不设置编码会有乱码
		PrintWriter out = response.getWriter();
		out.print(str);
		out.flush();
		out.close();
	}	

		

}
