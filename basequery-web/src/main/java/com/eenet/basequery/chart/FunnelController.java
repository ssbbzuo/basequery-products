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

@Controller
public class FunnelController {

	// 预报读阶段 
	@Autowired
	private ThemeFunnelFReadCollegesService ThemeFunnelFReadCollegeservice;
	@Autowired
	private ThemeFunnelFReadLearnCenterService ThemeFunnelFReadLearnCenterservice;
	@Autowired
	private ThemeFunnelFReadCompanyService ThemeFunnelFReadCompanyservice;
	@Autowired
	private ThemeFunnelFReadSalemanService ThemeFunnelFReadSalemanservice;	
	// 预报读跟踪阶段 
	@Autowired
	private ThemeFunnelFllowCollegesService ThemeFunnelFllowCollegeservice;
	@Autowired
	private ThemeFunnelFllowLearnCenterService ThemeFunnelFllowLearnCenterservice;
	@Autowired
	private ThemeFunnelFllowCompanyService ThemeFunnelFllowCompanyservice;
	@Autowired
	private ThemeFunnelFllowLearnCenterUserService ThemeFunnelFllowLearnCenterUserservice;
	// 报读阶段 
	@Autowired
	private ThemeFunnelReadCollegesService ThemeFunnelReadCollegeservice;
	@Autowired
	private ThemeFunnelReadLearnCenterService ThemeFunnelReadLearnCenterservice;
	@Autowired
	private ThemeFunnelReadCompanyService ThemeFunnelReadCompanyservice;
	@Autowired
	private ThemeFunnelReadLearnCenterUserService ThemeFunnelReadLearnCenterUserservice;	
	// 销售阶段 
	@Autowired
	private ThemeFunnelSellCollegesService ThemeFunnelSellCollegeservice;
	@Autowired
	private ThemeFunnelSellLearnCenterService ThemeFunnelSellLearnCenterservice;
	@Autowired
	private ThemeFunnelSellCompanyService ThemeFunnelSellCompanyservice;
	@Autowired
	private ThemeFunnelSellLearnCenterUserService ThemeFunnelSellLearnCenterUserservice;		
	// 学员漏斗主表
	@Autowired
	private ThemeFunnelStudentService ThemeFunnelStudentservice;	
	
	@RequestMapping(value = "/getFunnel")
	public String getTest() {
		// 跳转到相对应的页面
		return "chart/funnel";
	}	

	
	/*=================================================预报读阶段=================================================*/
	/*
	 *  网院
	 */
	@RequestMapping(value = "/ThemeFunnelFReadColleges")
	public @ResponseBody Object getThemeFunnelFReadColleges(@RequestBody ThemeFunnelFReadColleges value, QueryCondition queryCondition)
			throws Exception {
		
		JSONObject jsonObject = new JSONObject();	
		// 添加查询条件
		queryCondition.addCondition(new ConditionItem("DIM_CREATED_DT", RangeType.LESS2GREAT, value.getCREATE_DT_FROM(), value.getCREATE_DT_TO()));
		// 添加排序条件
		List<OrderBy> listOrder = new ArrayList<OrderBy>();
		listOrder.add(new OrderBy("FORECAST_READ_COUNT", Rank.DESC));
		queryCondition.setOrderBySet(listOrder);	
		
		queryCondition.setMaxQuantity(value.getPageSize());
		queryCondition.setStartIndex(value.getCurrentCount());

		SimpleResultSet<ThemeFunnelFReadColleges> result = ThemeFunnelFReadCollegeservice.getTest(queryCondition);
		
		jsonObject.put("test", result);

		return jsonObject;

	}		
	
	/*
	 * 学习中心
	 */
	@RequestMapping(value = "/ThemeFunnelFReadLearnCenter")
	public @ResponseBody Object getThemeFunnelFReadLearnCenter(@RequestBody ThemeFunnelFReadLearnCenter value, QueryCondition queryCondition)
			throws Exception {
		
		JSONObject jsonObject = new JSONObject();	
		// 添加查询条件
		queryCondition.addCondition(new ConditionItem("DIM_CREATED_DT", RangeType.LESS2GREAT, value.getCREATE_DT_FROM(), value.getCREATE_DT_TO()));
		// 添加排序条件
		List<OrderBy> listOrder = new ArrayList<OrderBy>();
		listOrder.add(new OrderBy("FORECAST_READ_COUNT", Rank.DESC));
		queryCondition.setOrderBySet(listOrder);	
		
		queryCondition.setMaxQuantity(value.getPageSize());
		queryCondition.setStartIndex(value.getCurrentCount());

		SimpleResultSet<ThemeFunnelFReadLearnCenter> result = ThemeFunnelFReadLearnCenterservice.getTest(queryCondition);
		
		jsonObject.put("test", result);

		return jsonObject;

	}		
	
	/*
	 * 客户
	 */
	@RequestMapping(value = "/ThemeFunnelFReadCompany")
	public @ResponseBody Object getThemeFunnelFReadCompany(@RequestBody ThemeFunnelFReadCompany value, QueryCondition queryCondition)
			throws Exception {
		
		JSONObject jsonObject = new JSONObject();	
		// 添加查询条件
		queryCondition.addCondition(new ConditionItem("DIM_CREATED_DT", RangeType.LESS2GREAT, value.getCREATE_DT_FROM(), value.getCREATE_DT_TO()));
		// 添加排序条件
		List<OrderBy> listOrder = new ArrayList<OrderBy>();
		listOrder.add(new OrderBy("FORECAST_READ_COUNT", Rank.DESC));
		queryCondition.setOrderBySet(listOrder);	
		
		queryCondition.setMaxQuantity(value.getPageSize());
		queryCondition.setStartIndex(value.getCurrentCount());

		SimpleResultSet<ThemeFunnelFReadCompany> result = ThemeFunnelFReadCompanyservice.getTest(queryCondition);
		
		jsonObject.put("test", result);

		return jsonObject;

	}		
	
	/*
	 * 招生顾问
	 */
	@RequestMapping(value = "/ThemeFunnelFReadSaleman")
	public @ResponseBody Object getThemeFunnelFReadSaleman(@RequestBody ThemeFunnelFReadSaleman value, QueryCondition queryCondition)
			throws Exception {
		
		JSONObject jsonObject = new JSONObject();	
		// 添加查询条件
		queryCondition.addCondition(new ConditionItem("DIM_CREATED_DT", RangeType.LESS2GREAT, value.getCREATE_DT_FROM(), value.getCREATE_DT_TO()));
		// 添加排序条件
		List<OrderBy> listOrder = new ArrayList<OrderBy>();
		listOrder.add(new OrderBy("FORECAST_READ_COUNT", Rank.DESC));
		queryCondition.setOrderBySet(listOrder);	
		
		queryCondition.setMaxQuantity(value.getPageSize());
		queryCondition.setStartIndex(value.getCurrentCount());

		SimpleResultSet<ThemeFunnelFReadSaleman> result = ThemeFunnelFReadSalemanservice.getTest(queryCondition);
		
		jsonObject.put("test", result);

		return jsonObject;

	}		

	/*=================================================预报读跟踪阶段=================================================*/
	/*
	 * 网院
	 */
	@RequestMapping(value = "/ThemeFunnelFllowColleges")
	public @ResponseBody Object getThemeFunnelFllowColleges(@RequestBody ThemeFunnelFllowColleges value, QueryCondition queryCondition)
			throws Exception {
		
		JSONObject jsonObject = new JSONObject();	
		// 添加查询条件
		queryCondition.addCondition(new ConditionItem("DIM_CREATED_DT", RangeType.LESS2GREAT, value.getCREATE_DT_FROM(), value.getCREATE_DT_TO()));
		// 添加排序条件
		List<OrderBy> listOrder = new ArrayList<OrderBy>();
		listOrder.add(new OrderBy("FORECAST_READ_COUNT", Rank.DESC));
		queryCondition.setOrderBySet(listOrder);	
		
		queryCondition.setMaxQuantity(value.getPageSize());
		queryCondition.setStartIndex(value.getCurrentCount());

		SimpleResultSet<ThemeFunnelFllowColleges> result = ThemeFunnelFllowCollegeservice.getTest(queryCondition);
		
		jsonObject.put("test", result);

		return jsonObject;

	}		
	
	/*
	 *  学习中心
	 */
	@RequestMapping(value = "/ThemeFunnelFllowLearnCenter")
	public @ResponseBody Object getThemeFunnelFllowLearnCenter(@RequestBody ThemeFunnelFllowLearnCenter value, QueryCondition queryCondition)
			throws Exception {
		
		JSONObject jsonObject = new JSONObject();	
		// 添加查询条件
		queryCondition.addCondition(new ConditionItem("DIM_CREATED_DT", RangeType.LESS2GREAT, value.getCREATE_DT_FROM(), value.getCREATE_DT_TO()));
		// 添加排序条件
		List<OrderBy> listOrder = new ArrayList<OrderBy>();
		listOrder.add(new OrderBy("FORECAST_READ_COUNT", Rank.DESC));
		queryCondition.setOrderBySet(listOrder);	
		
		queryCondition.setMaxQuantity(value.getPageSize());
		queryCondition.setStartIndex(value.getCurrentCount());

		SimpleResultSet<ThemeFunnelFllowLearnCenter> result = ThemeFunnelFllowLearnCenterservice.getTest(queryCondition);
		
		jsonObject.put("test", result);

		return jsonObject;

	}		
	
	/*
	 * 客户
	 */
	@RequestMapping(value = "/ThemeFunnelFllowCompany")
	public @ResponseBody Object getThemeFunnelFllowCompany(@RequestBody ThemeFunnelFllowCompany value, QueryCondition queryCondition)
			throws Exception {
		
		JSONObject jsonObject = new JSONObject();	
		// 添加查询条件
		queryCondition.addCondition(new ConditionItem("DIM_CREATED_DT", RangeType.LESS2GREAT, value.getCREATE_DT_FROM(), value.getCREATE_DT_TO()));
		// 添加排序条件
		List<OrderBy> listOrder = new ArrayList<OrderBy>();
		listOrder.add(new OrderBy("FORECAST_READ_COUNT", Rank.DESC));
		queryCondition.setOrderBySet(listOrder);	
		
		queryCondition.setMaxQuantity(value.getPageSize());
		queryCondition.setStartIndex(value.getCurrentCount());

		SimpleResultSet<ThemeFunnelFllowCompany> result = ThemeFunnelFllowCompanyservice.getTest(queryCondition);
		
		jsonObject.put("test", result);

		return jsonObject;

	}		
	
	/*
	 * 班主任
	 */
	@RequestMapping(value = "/ThemeFunnelFllowLearnCenterUser")
	public @ResponseBody Object getThemeFunnelFllowLearnCenterUser(@RequestBody ThemeFunnelFllowLearnCenterUser value, QueryCondition queryCondition)
			throws Exception {
		
		JSONObject jsonObject = new JSONObject();	
		// 添加查询条件
		queryCondition.addCondition(new ConditionItem("DIM_CREATED_DT", RangeType.LESS2GREAT, value.getCREATE_DT_FROM(), value.getCREATE_DT_TO()));
		// 添加排序条件
		List<OrderBy> listOrder = new ArrayList<OrderBy>();
		listOrder.add(new OrderBy("FORECAST_READ_COUNT", Rank.DESC));
		queryCondition.setOrderBySet(listOrder);	
		
		queryCondition.setMaxQuantity(value.getPageSize());
		queryCondition.setStartIndex(value.getCurrentCount());

		SimpleResultSet<ThemeFunnelFllowLearnCenterUser> result = ThemeFunnelFllowLearnCenterUserservice.getTest(queryCondition);
		
		jsonObject.put("test", result);

		return jsonObject;

	}		
	
	/*=================================================报读阶段=================================================*/
	/*
	 * 网院
	 */
	@RequestMapping(value = "/ThemeFunnelReadColleges")
	public @ResponseBody Object getThemeFunnelReadColleges(@RequestBody ThemeFunnelReadColleges value, QueryCondition queryCondition)
			throws Exception {
		
		JSONObject jsonObject = new JSONObject();	
		// 添加查询条件
		queryCondition.addCondition(new ConditionItem("DIM_CREATED_DT", RangeType.LESS2GREAT, value.getCREATE_DT_FROM(), value.getCREATE_DT_TO()));
		// 添加排序条件
		List<OrderBy> listOrder = new ArrayList<OrderBy>();
		listOrder.add(new OrderBy("READ_COUNT", Rank.DESC));
		queryCondition.setOrderBySet(listOrder);	
		
		queryCondition.setMaxQuantity(value.getPageSize());
		queryCondition.setStartIndex(value.getCurrentCount());

		SimpleResultSet<ThemeFunnelReadColleges> result = ThemeFunnelReadCollegeservice.getTest(queryCondition);
		
		jsonObject.put("test", result);

		return jsonObject;

	}		
	
	/*
	 *  学习中心
	 */
	@RequestMapping(value = "/ThemeFunnelReadLearnCenter")
	public @ResponseBody Object getThemeFunnelReadLearnCenter(@RequestBody ThemeFunnelReadLearnCenter value, QueryCondition queryCondition)
			throws Exception {
		
		JSONObject jsonObject = new JSONObject();	
		// 添加查询条件
		queryCondition.addCondition(new ConditionItem("DIM_CREATED_DT", RangeType.LESS2GREAT, value.getCREATE_DT_FROM(), value.getCREATE_DT_TO()));
		// 添加排序条件
		List<OrderBy> listOrder = new ArrayList<OrderBy>();
		listOrder.add(new OrderBy("READ_COUNT", Rank.DESC));
		queryCondition.setOrderBySet(listOrder);	
		
		queryCondition.setMaxQuantity(value.getPageSize());
		queryCondition.setStartIndex(value.getCurrentCount());

		SimpleResultSet<ThemeFunnelReadLearnCenter> result = ThemeFunnelReadLearnCenterservice.getTest(queryCondition);
		
		jsonObject.put("test", result);

		return jsonObject;

	}		
	
	/*
	 * 客户
	 */
	@RequestMapping(value = "/ThemeFunnelReadCompany")
	public @ResponseBody Object getThemeFunnelReadCompany(@RequestBody ThemeFunnelReadCompany value, QueryCondition queryCondition)
			throws Exception {
		
		JSONObject jsonObject = new JSONObject();	
		// 添加查询条件
		queryCondition.addCondition(new ConditionItem("DIM_CREATED_DT", RangeType.LESS2GREAT, value.getCREATE_DT_FROM(), value.getCREATE_DT_TO()));
		// 添加排序条件
		List<OrderBy> listOrder = new ArrayList<OrderBy>();
		listOrder.add(new OrderBy("READ_COUNT", Rank.DESC));
		queryCondition.setOrderBySet(listOrder);	
		
		queryCondition.setMaxQuantity(value.getPageSize());
		queryCondition.setStartIndex(value.getCurrentCount());

		SimpleResultSet<ThemeFunnelReadCompany> result = ThemeFunnelReadCompanyservice.getTest(queryCondition);
		
		jsonObject.put("test", result);

		return jsonObject;

	}		
	
	/*
	 * 班主任
	 */
	@RequestMapping(value = "/ThemeFunnelReadLearnCenterUser")
	public @ResponseBody Object getThemeFunnelReadLearnCenterUser(@RequestBody ThemeFunnelReadLearnCenterUser value, QueryCondition queryCondition)
			throws Exception {
		
		JSONObject jsonObject = new JSONObject();	
		// 添加查询条件
		queryCondition.addCondition(new ConditionItem("DIM_CREATED_DT", RangeType.LESS2GREAT, value.getCREATE_DT_FROM(), value.getCREATE_DT_TO()));
		// 添加排序条件
		List<OrderBy> listOrder = new ArrayList<OrderBy>();
		listOrder.add(new OrderBy("READ_COUNT", Rank.DESC));
		queryCondition.setOrderBySet(listOrder);	
		
		queryCondition.setMaxQuantity(value.getPageSize());
		queryCondition.setStartIndex(value.getCurrentCount());

		SimpleResultSet<ThemeFunnelReadLearnCenterUser> result = ThemeFunnelReadLearnCenterUserservice.getTest(queryCondition);
		
		jsonObject.put("test", result);

		return jsonObject;

	}		
	
	/*=================================================缴费阶段=================================================*/
	/*
	 * 网院
	 */
	@RequestMapping(value = "/ThemeFunnelSellColleges")
	public @ResponseBody Object getThemeFunnelSellColleges(@RequestBody ThemeFunnelSellColleges value, QueryCondition queryCondition)
			throws Exception {
		
		JSONObject jsonObject = new JSONObject();	
		// 添加查询条件
		queryCondition.addCondition(new ConditionItem("DIM_CREATED_DT", RangeType.LESS2GREAT, value.getCREATE_DT_FROM(), value.getCREATE_DT_TO()));
		// 添加排序条件
		List<OrderBy> listOrder = new ArrayList<OrderBy>();
		listOrder.add(new OrderBy("ALL_COUNT", Rank.DESC));
		queryCondition.setOrderBySet(listOrder);	
		
		queryCondition.setMaxQuantity(value.getPageSize());
		queryCondition.setStartIndex(value.getCurrentCount());

		SimpleResultSet<ThemeFunnelSellColleges> result = ThemeFunnelSellCollegeservice.getTest(queryCondition);	
		jsonObject.put("test", result);

		return jsonObject;

	}		
	
	/*
	 *  学习中心
	 */
	@RequestMapping(value = "/ThemeFunnelSellLearnCenter")
	public @ResponseBody Object getThemeFunnelSellLearnCenter(@RequestBody ThemeFunnelSellLearnCenter value, QueryCondition queryCondition)
			throws Exception {
		
		JSONObject jsonObject = new JSONObject();	
		// 添加查询条件
		queryCondition.addCondition(new ConditionItem("DIM_CREATED_DT", RangeType.LESS2GREAT, value.getCREATE_DT_FROM(), value.getCREATE_DT_TO()));
		// 添加排序条件
		List<OrderBy> listOrder = new ArrayList<OrderBy>();
		listOrder.add(new OrderBy("ALL_COUNT", Rank.DESC));
		queryCondition.setOrderBySet(listOrder);	
		
		queryCondition.setMaxQuantity(value.getPageSize());
		queryCondition.setStartIndex(value.getCurrentCount());

		SimpleResultSet<ThemeFunnelSellLearnCenter> result = ThemeFunnelSellLearnCenterservice.getTest(queryCondition);
		
		jsonObject.put("test", result);

		return jsonObject;

	}		
	
	/*
	 * 客户
	 */
	@RequestMapping(value = "/ThemeFunnelSellCompany")
	public @ResponseBody Object getThemeFunnelReadCompany(@RequestBody ThemeFunnelSellCompany value, QueryCondition queryCondition)
			throws Exception {
		
		JSONObject jsonObject = new JSONObject();	
		// 添加查询条件
		queryCondition.addCondition(new ConditionItem("DIM_CREATED_DT", RangeType.LESS2GREAT, value.getCREATE_DT_FROM(), value.getCREATE_DT_TO()));
		// 添加排序条件
		List<OrderBy> listOrder = new ArrayList<OrderBy>();
		listOrder.add(new OrderBy("ALL_COUNT", Rank.DESC));
		queryCondition.setOrderBySet(listOrder);	
		
		queryCondition.setMaxQuantity(value.getPageSize());
		queryCondition.setStartIndex(value.getCurrentCount());

		SimpleResultSet<ThemeFunnelSellCompany> result = ThemeFunnelSellCompanyservice.getTest(queryCondition);
		
		jsonObject.put("test", result);

		return jsonObject;

	}		
	
	/*
	 * 班主任
	 */
	@RequestMapping(value = "/ThemeFunnelSellLearnCenterUser")
	public @ResponseBody Object getThemeFunnelSellLearnCenterUser(@RequestBody ThemeFunnelSellLearnCenterUser value, QueryCondition queryCondition)
			throws Exception {
		
		JSONObject jsonObject = new JSONObject();	
		// 添加查询条件
		queryCondition.addCondition(new ConditionItem("DIM_CREATED_DT", RangeType.LESS2GREAT, value.getCREATE_DT_FROM(), value.getCREATE_DT_TO()));
		// 添加排序条件
		List<OrderBy> listOrder = new ArrayList<OrderBy>();
		listOrder.add(new OrderBy("ALL_COUNT", Rank.DESC));
		queryCondition.setOrderBySet(listOrder);	
		
		queryCondition.setMaxQuantity(value.getPageSize());
		queryCondition.setStartIndex(value.getCurrentCount());

		SimpleResultSet<ThemeFunnelSellLearnCenterUser> result = ThemeFunnelSellLearnCenterUserservice.getTest(queryCondition);
		
		jsonObject.put("test", result);

		return jsonObject;

	}		
	
	
	
	/*=================================================学员漏斗主表=================================================*/
	@RequestMapping(value = "/ThemeFunnelStudent")
	public @ResponseBody Object getThemeFunnelStudent(@RequestBody ThemeFunnelStudent value, QueryCondition queryCondition)
			throws Exception {
		
		JSONObject jsonObject = new JSONObject();	
		// 添加查询条件
		queryCondition.addCondition(new ConditionItem("DIM_CREATED_DT", RangeType.LESS2GREAT, value.getCREATE_DT_FROM(), value.getCREATE_DT_TO()));

		SimpleResultSet<ThemeFunnelStudent> result = ThemeFunnelStudentservice.getTest(queryCondition);
		
		jsonObject.put("test", result);

		return jsonObject;

	}		
}
