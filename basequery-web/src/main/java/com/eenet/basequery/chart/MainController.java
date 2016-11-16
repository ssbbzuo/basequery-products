package com.eenet.basequery.chart;

import java.util.ArrayList;
import java.util.List;

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
import com.eenet.basequery.chart.main.*;

@Controller
public class MainController {

	@Autowired
	private ThemeFunnelMainNumberService ThemeFunnelMainNumberservice;
	@Autowired
	private ThemeFunnelMainBarAllService ThemeFunnelMainBarAllservice;
	@Autowired
	private ThemeFunnelMainBarYearService ThemeFunnelMainBarYearservice;
	@Autowired
	private ThemeFunnelMainBarMonthService ThemeFunnelMainBarMonthservice;	
	@Autowired
	private ThemeFunnelMainPieYearService ThemeFunnelMainPieYearservice;
	@Autowired
	private ThemeFunnelMainPieMonthService ThemeFunnelMainPieMonthservice;
	@Autowired
	private ThemeFunnelMainTableYearService ThemeFunnelMainTableYearservice;
	@Autowired
	private ThemeFunnelMainTableYearMonthService ThemeFunnelMainTableYearMonthservice;	
	
	
	@RequestMapping(value = "/getMain")
	public String getTest() {
		// 跳转到相对应的页面
		return "index";
	}	

	
	/*=================================================主页(数字)=================================================*/
	@RequestMapping(value = "/ThemeFunnelMainNumber")
	public @ResponseBody Object getThemeFunnelMainNumber(@RequestBody ThemeFunnelMainNumber value, QueryCondition queryCondition)
			throws Exception {
		
		JSONObject jsonObject = new JSONObject();	

		SimpleResultSet<ThemeFunnelMainNumber> result = ThemeFunnelMainNumberservice.getTest(queryCondition);
		
		jsonObject.put("test", result);

		return jsonObject;

	}
	
	/*=================================================主页(柱状图)=================================================*/
	// 年度
	@RequestMapping(value = "/ThemeFunnelMainBarAll")
	public @ResponseBody Object getThemeFunnelMainBarAll(@RequestBody ThemeFunnelMainBarAll value, QueryCondition queryCondition)
			throws Exception {
		
		JSONObject jsonObject = new JSONObject();	
		
		// 添加排序条件
		List<OrderBy> listOrder = new ArrayList<OrderBy>();
		listOrder.add(new OrderBy("YEAR_SK", Rank.DESC));
		queryCondition.setOrderBySet(listOrder);	

		SimpleResultSet<ThemeFunnelMainBarAll> result = ThemeFunnelMainBarAllservice.getTest(queryCondition);
		
		jsonObject.put("test", result);

		return jsonObject;

	}	
	
	// 本年
	@RequestMapping(value = "/ThemeFunnelMainBarYear")
	public @ResponseBody Object getThemeFunnelMainBarYear(@RequestBody ThemeFunnelMainBarYear value, QueryCondition queryCondition)
			throws Exception {
		
		JSONObject jsonObject = new JSONObject();	
		
		// 添加排序条件
		List<OrderBy> listOrder = new ArrayList<OrderBy>();
		listOrder.add(new OrderBy("MONTH_SK", Rank.DESC));
		queryCondition.setOrderBySet(listOrder);	

		SimpleResultSet<ThemeFunnelMainBarYear> result = ThemeFunnelMainBarYearservice.getTest(queryCondition);
		
		jsonObject.put("test", result);

		return jsonObject;

	}	
	
	// 本月
	@RequestMapping(value = "/ThemeFunnelMainBarMonth")
	public @ResponseBody Object getThemeFunnelMainBarMonth(@RequestBody ThemeFunnelMainBarMonth value, QueryCondition queryCondition)
			throws Exception {
		
		JSONObject jsonObject = new JSONObject();	
		
		// 添加排序条件
		List<OrderBy> listOrder = new ArrayList<OrderBy>();
		listOrder.add(new OrderBy("DATE_SK", Rank.DESC));
		queryCondition.setOrderBySet(listOrder);	

		SimpleResultSet<ThemeFunnelMainBarMonth> result = ThemeFunnelMainBarMonthservice.getTest(queryCondition);
		
		jsonObject.put("test", result);

		return jsonObject;

	}		
	
	/*=================================================主页(饼图)=================================================*/	
	
	// 本年
	@RequestMapping(value = "/ThemeFunnelMainPieYear")
	public @ResponseBody Object getThemeFunnelMainPieYear(@RequestBody ThemeFunnelMainPieYear value, QueryCondition queryCondition)
			throws Exception {
		
		JSONObject jsonObject = new JSONObject();
		
		// 添加排序条件
		List<OrderBy> listOrder = new ArrayList<OrderBy>();
		listOrder.add(new OrderBy("COUNT_THISYEAR", Rank.DESC));
		queryCondition.setOrderBySet(listOrder);	

		SimpleResultSet<ThemeFunnelMainPieYear> result = ThemeFunnelMainPieYearservice.getTest(queryCondition);
		
		jsonObject.put("test", result);

		return jsonObject;

	}	
	
	// 本年
	@RequestMapping(value = "/ThemeFunnelMainPieMonth")
	public @ResponseBody Object getThemeFunnelMainPieMonth(@RequestBody ThemeFunnelMainPieMonth value, QueryCondition queryCondition)
			throws Exception {
		
		JSONObject jsonObject = new JSONObject();	
		
		// 添加排序条件
		List<OrderBy> listOrder = new ArrayList<OrderBy>();
		listOrder.add(new OrderBy("COUNT_THISMONTH", Rank.DESC));
		queryCondition.setOrderBySet(listOrder);	

		SimpleResultSet<ThemeFunnelMainPieMonth> result = ThemeFunnelMainPieMonthservice.getTest(queryCondition);
		
		jsonObject.put("test", result);

		return jsonObject;

	}		

	/*=================================================主页(表格)=================================================*/		
	// 年份
	@RequestMapping(value = "/ThemeFunnelMainTableYear")
	public @ResponseBody Object getThemeFunnelMainTableYear(@RequestBody ThemeFunnelMainTableYear value, QueryCondition queryCondition)
			throws Exception {
		
		JSONObject jsonObject = new JSONObject();
		// 添加查询条件
		queryCondition.addCondition(new ConditionItem("CODE_NAME", RangeType.IN, value.getCODE_NAME(), null));
		// 添加排序条件
		List<OrderBy> listOrder = new ArrayList<OrderBy>();
		listOrder.add(new OrderBy("CREATED_DT", Rank.DESC));
		queryCondition.setOrderBySet(listOrder);	
		
		queryCondition.setMaxQuantity(value.getPageSize());
		queryCondition.setStartIndex(value.getCurrentCount());

		SimpleResultSet<ThemeFunnelMainTableYear> result = ThemeFunnelMainTableYearservice.getTest(queryCondition);
		
		jsonObject.put("test", result);

		return jsonObject;

	}		
	
	// 年月
	@RequestMapping(value = "/ThemeFunnelMainTableYearMonth")
	public @ResponseBody Object getThemeFunnelMainTableYearMonth(@RequestBody ThemeFunnelMainTableYearMonth value, QueryCondition queryCondition)
			throws Exception {
		
		JSONObject jsonObject = new JSONObject();
		// 添加查询条件
		queryCondition.addCondition(new ConditionItem("CODE_NAME", RangeType.IN, value.getCODE_NAME(), null));		
		// 添加排序条件
		List<OrderBy> listOrder = new ArrayList<OrderBy>();
		listOrder.add(new OrderBy("CREATED_DT", Rank.DESC));
		queryCondition.setOrderBySet(listOrder);	
		
		queryCondition.setMaxQuantity(value.getPageSize());
		queryCondition.setStartIndex(value.getCurrentCount());

		SimpleResultSet<ThemeFunnelMainTableYearMonth> result = ThemeFunnelMainTableYearMonthservice.getTest(queryCondition);
		
		jsonObject.put("test", result);

		return jsonObject;

	}		
	
}
