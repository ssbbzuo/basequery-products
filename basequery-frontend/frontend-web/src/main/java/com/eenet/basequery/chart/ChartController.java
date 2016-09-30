package com.eenet.basequery.chart;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.dubbo.common.json.JSONObject;
import com.eenet.base.SimpleResultSet;
import com.eenet.base.query.ConditionItem;
import com.eenet.base.query.OrderBy;
import com.eenet.base.query.QueryCondition;
import com.eenet.base.query.RangeType;
import com.eenet.base.query.Rank;

@Controller
public class ChartController {

	@Autowired
	private ChartService chartservice;
	@Autowired
	private Chart02Service chart02service;

	@RequestMapping(value = "/getTest")
	public String getTest() {
		// 跳转到相对应的页面
		return "chart/testList";
	}
	

	@RequestMapping(value = "/ajax")
	public @ResponseBody Object ajax(@RequestBody Test test, QueryCondition queryCondition)
			throws Exception {
		
		JSONObject jsonObject = new JSONObject();	
		// 添加查询条件
		queryCondition.addCondition(new ConditionItem("country", RangeType.INCLUDE, test.getCountry(), null));
		queryCondition.addCondition(new ConditionItem("year", RangeType.INCLUDE, test.getYear(), null));
		// 添加排序条件
		List<OrderBy> listOrder = new ArrayList<OrderBy>();
		listOrder.add(new OrderBy("year", Rank.DESC));
		listOrder.add(new OrderBy("country", Rank.DESC));
		queryCondition.setOrderBySet(listOrder);
		
		queryCondition.setMaxQuantity(test.getPageSize());
		queryCondition.setStartIndex(test.getCurrentCount());

		SimpleResultSet<Test> result = chartservice.getTest(queryCondition);
		
		int totalCount = result.getCount();
		
		jsonObject.put("test", result);
		jsonObject.put("total", totalCount);

		return jsonObject;

	}

	@RequestMapping(value = "/test02")
	public void test02(QueryCondition queryCondition, HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		SimpleResultSet<Test02> result = chart02service.getTest(queryCondition);

		// 遍历数据
		List<Test02> list = result.getResultSet();
		String str = "[";

		for (Test02 test : list) {
			str += "{name:\"" + test.getCountry() + "\",value:" + test.getSumcount() + "},";
		}

		str = str.substring(0, str.length() - 1) + "]";

		request.setCharacterEncoding("utf-8"); // 这里不设置编码会有乱码
		PrintWriter out = response.getWriter();
		out.print(str);
		out.flush();
		out.close();
	}

	

}
