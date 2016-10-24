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
import com.eenet.basequery.chart.company.*;

@Controller
public class CompanyFunnelController {

	// 待合作客户(WILL)
	@Autowired
	private ThemeFunnelCompanyWillCityService ThemeFunnelCompanyWillCity;
	@Autowired
	private ThemeFunnelCompanyWillCPService ThemeFunnelCompanyWillCP;
	@Autowired
	private ThemeFunnelCompanyWillPSService ThemeFunnelCompanyWillPS;	
	
	// 同意合作客户(AGREE)
	@Autowired
	private ThemeFunnelCompanyAgreeAccountService ThemeFunnelCompanyAgreeAccount;
	@Autowired
	private ThemeFunnelCompanyAgreeCityService ThemeFunnelCompanyAgreeCity;
	@Autowired
	private ThemeFunnelCompanyAgreeCPService ThemeFunnelCompanyAgreeCP;		
	@Autowired
	private ThemeFunnelCompanyAgreePSService ThemeFunnelCompanyAgreePS;
	@Autowired
	private ThemeFunnelCompanyAgreeStructuresService ThemeFunnelCompanyAgreeStructures;		
	
	// 确认合作客户(AFFIRM)
	@Autowired
	private ThemeFunnelCompanyAffirmAccountService ThemeFunnelCompanyAffirmAccount;
	@Autowired
	private ThemeFunnelCompanyAffirmCityService ThemeFunnelCompanyAffirmCity;
	@Autowired
	private ThemeFunnelCompanyAffirmCPService ThemeFunnelCompanyAffirmCP;		
	@Autowired
	private ThemeFunnelCompanyAffirmPSService ThemeFunnelCompanyAffirmPS;
	@Autowired
	private ThemeFunnelCompanyAffirmStructuresService ThemeFunnelCompanyAffirmStructures;		
	
	
	// 执行计划客户(EXECUTE)
	@Autowired
	private ThemeFunnelCompanyExecuteAccountService ThemeFunnelCompanyExecuteAccount;
	@Autowired
	private ThemeFunnelCompanyExecuteCityService ThemeFunnelCompanyExecuteCity;
	@Autowired
	private ThemeFunnelCompanyExecuteCPService ThemeFunnelCompanyExecuteCP;		
	@Autowired
	private ThemeFunnelCompanyExecutePSService ThemeFunnelCompanyExecutePS;
	@Autowired
	private ThemeFunnelCompanyExecuteStructuresService ThemeFunnelCompanyExecuteStructures;		
	
	// 产单客户(PRODUCE)
	@Autowired
	private ThemeFunnelCompanyProduceAccountService ThemeFunnelCompanyProduceAccount;
	@Autowired
	private ThemeFunnelCompanyProduceCityService ThemeFunnelCompanyProduceCity;
	@Autowired
	private ThemeFunnelCompanyProduceCPService ThemeFunnelCompanyProduceCP;		
	@Autowired
	private ThemeFunnelCompanyProducePSService ThemeFunnelCompanyProducePS;
	@Autowired
	private ThemeFunnelCompanyProduceStructuresService ThemeFunnelCompanyProduceStructures;		
		
	// 客户漏斗主表
	@Autowired
	private ThemeFunnelCompanyService ThemeFunnelCompany;	

	
	@RequestMapping(value = "/getCompanyFunnel")
	public String getTest() {
		// 跳转到相对应的页面
		return "chart/CompanyFunnel";
	}	

	
	/*=================================================待合作客户(WILL)=================================================*/
	/*
	 *  区域
	 */
	@RequestMapping(value = "/ThemeFunnelCompanyWillCity")
	public @ResponseBody Object getThemeFunnelCompanyWillCity(@RequestBody ThemeFunnelCompanyWillCity value, QueryCondition queryCondition)
			throws Exception {
		
		JSONObject jsonObject = new JSONObject();	
		// 添加查询条件
		queryCondition.addCondition(new ConditionItem("DIM_CREATED_DT", RangeType.LESS2GREAT, value.getCREATE_DT_FROM(), value.getCREATE_DT_TO()));
		// 添加排序条件
		List<OrderBy> listOrder = new ArrayList<OrderBy>();
		listOrder.add(new OrderBy("WILL_CUSTOMER_COUNT", Rank.DESC));
		queryCondition.setOrderBySet(listOrder);	
		
		queryCondition.setMaxQuantity(value.getPageSize());
		queryCondition.setStartIndex(value.getCurrentCount());

		SimpleResultSet<ThemeFunnelCompanyWillCity> result = ThemeFunnelCompanyWillCity.getTest(queryCondition);
		
		jsonObject.put("test", result);

		return jsonObject;

	}		
	/*
	 *  客户属性
	 */
	@RequestMapping(value = "/ThemeFunnelCompanyWillCP")
	public @ResponseBody Object getThemeFunnelCompanyWillCP(@RequestBody ThemeFunnelCompanyWillCP value, QueryCondition queryCondition)
			throws Exception {
		
		JSONObject jsonObject = new JSONObject();	
		// 添加查询条件
		queryCondition.addCondition(new ConditionItem("DIM_CREATED_DT", RangeType.LESS2GREAT, value.getCREATE_DT_FROM(), value.getCREATE_DT_TO()));
		// 添加排序条件
		List<OrderBy> listOrder = new ArrayList<OrderBy>();
		listOrder.add(new OrderBy("WILL_CUSTOMER_COUNT", Rank.DESC));
		queryCondition.setOrderBySet(listOrder);	
		
		queryCondition.setMaxQuantity(value.getPageSize());
		queryCondition.setStartIndex(value.getCurrentCount());

		SimpleResultSet<ThemeFunnelCompanyWillCP> result = ThemeFunnelCompanyWillCP.getTest(queryCondition);
		
		jsonObject.put("test", result);

		return jsonObject;

	}		
	/*
	 *  客户人数规模
	 */
	@RequestMapping(value = "/ThemeFunnelCompanyWillPS")
	public @ResponseBody Object getThemeFunnelCompanyWillPS(@RequestBody ThemeFunnelCompanyWillPS value, QueryCondition queryCondition)
			throws Exception {
		
		JSONObject jsonObject = new JSONObject();	
		// 添加查询条件
		queryCondition.addCondition(new ConditionItem("DIM_CREATED_DT", RangeType.LESS2GREAT, value.getCREATE_DT_FROM(), value.getCREATE_DT_TO()));
		// 添加排序条件
		List<OrderBy> listOrder = new ArrayList<OrderBy>();
		listOrder.add(new OrderBy("WILL_CUSTOMER_COUNT", Rank.DESC));
		queryCondition.setOrderBySet(listOrder);	
		
		queryCondition.setMaxQuantity(value.getPageSize());
		queryCondition.setStartIndex(value.getCurrentCount());

		SimpleResultSet<ThemeFunnelCompanyWillPS> result = ThemeFunnelCompanyWillPS.getTest(queryCondition);
		
		jsonObject.put("test", result);

		return jsonObject;

	}		

	/*=================================================同意合作客户(AGREE)=================================================*/
	/*
	 *  市场人员
	 */
	@RequestMapping(value = "/ThemeFunnelCompanyAgreeAccount")
	public @ResponseBody Object getThemeFunnelCompanyAgreeAccount(@RequestBody ThemeFunnelCompanyAgreeAccount value, QueryCondition queryCondition)
			throws Exception {
		
		JSONObject jsonObject = new JSONObject();	
		// 添加查询条件
		queryCondition.addCondition(new ConditionItem("DIM_CREATED_DT", RangeType.LESS2GREAT, value.getCREATE_DT_FROM(), value.getCREATE_DT_TO()));
		// 添加排序条件
		List<OrderBy> listOrder = new ArrayList<OrderBy>();
		listOrder.add(new OrderBy("AGREE_CUSTOMER_COUNT", Rank.DESC));
		queryCondition.setOrderBySet(listOrder);	
		
		queryCondition.setMaxQuantity(value.getPageSize());
		queryCondition.setStartIndex(value.getCurrentCount());

		SimpleResultSet<ThemeFunnelCompanyAgreeAccount> result = ThemeFunnelCompanyAgreeAccount.getTest(queryCondition);
		
		jsonObject.put("test", result);

		return jsonObject;

	}	
	/*
	 *  区域
	 */
	@RequestMapping(value = "/ThemeFunnelCompanyAgreeCity")
	public @ResponseBody Object getThemeFunnelCompanyAgreeCity(@RequestBody ThemeFunnelCompanyAgreeCity value, QueryCondition queryCondition)
			throws Exception {
		
		JSONObject jsonObject = new JSONObject();	
		// 添加查询条件
		queryCondition.addCondition(new ConditionItem("DIM_CREATED_DT", RangeType.LESS2GREAT, value.getCREATE_DT_FROM(), value.getCREATE_DT_TO()));
		// 添加排序条件
		List<OrderBy> listOrder = new ArrayList<OrderBy>();
		listOrder.add(new OrderBy("AGREE_CUSTOMER_COUNT", Rank.DESC));
		queryCondition.setOrderBySet(listOrder);	
		
		queryCondition.setMaxQuantity(value.getPageSize());
		queryCondition.setStartIndex(value.getCurrentCount());

		SimpleResultSet<ThemeFunnelCompanyAgreeCity> result = ThemeFunnelCompanyAgreeCity.getTest(queryCondition);
		
		jsonObject.put("test", result);

		return jsonObject;

	}		
	/*
	 *  性质
	 */
	@RequestMapping(value = "/ThemeFunnelCompanyAgreeCP")
	public @ResponseBody Object getThemeFunnelCompanyAgreeCP(@RequestBody ThemeFunnelCompanyAgreeCP value, QueryCondition queryCondition)
			throws Exception {
		
		JSONObject jsonObject = new JSONObject();	
		// 添加查询条件
		queryCondition.addCondition(new ConditionItem("DIM_CREATED_DT", RangeType.LESS2GREAT, value.getCREATE_DT_FROM(), value.getCREATE_DT_TO()));
		// 添加排序条件
		List<OrderBy> listOrder = new ArrayList<OrderBy>();
		listOrder.add(new OrderBy("AGREE_CUSTOMER_COUNT", Rank.DESC));
		queryCondition.setOrderBySet(listOrder);	
		
		queryCondition.setMaxQuantity(value.getPageSize());
		queryCondition.setStartIndex(value.getCurrentCount());

		SimpleResultSet<ThemeFunnelCompanyAgreeCP> result = ThemeFunnelCompanyAgreeCP.getTest(queryCondition);
		
		jsonObject.put("test", result);

		return jsonObject;

	}			
	/*
	 *  人数规模
	 */
	@RequestMapping(value = "/ThemeFunnelCompanyAgreePS")
	public @ResponseBody Object getThemeFunnelCompanyAgreePS(@RequestBody ThemeFunnelCompanyAgreePS value, QueryCondition queryCondition)
			throws Exception {
		
		JSONObject jsonObject = new JSONObject();	
		// 添加查询条件
		queryCondition.addCondition(new ConditionItem("DIM_CREATED_DT", RangeType.LESS2GREAT, value.getCREATE_DT_FROM(), value.getCREATE_DT_TO()));
		// 添加排序条件
		List<OrderBy> listOrder = new ArrayList<OrderBy>();
		listOrder.add(new OrderBy("AGREE_CUSTOMER_COUNT", Rank.DESC));
		queryCondition.setOrderBySet(listOrder);	
		
		queryCondition.setMaxQuantity(value.getPageSize());
		queryCondition.setStartIndex(value.getCurrentCount());

		SimpleResultSet<ThemeFunnelCompanyAgreePS> result = ThemeFunnelCompanyAgreePS.getTest(queryCondition);
		
		jsonObject.put("test", result);

		return jsonObject;

	}	
	/*
	 *  团队
	 */
	@RequestMapping(value = "/ThemeFunnelCompanyAgreeStructures")
	public @ResponseBody Object getThemeFunnelCompanyAgreeStructures(@RequestBody ThemeFunnelCompanyAgreeStructures value, QueryCondition queryCondition)
			throws Exception {
		
		JSONObject jsonObject = new JSONObject();	
		// 添加查询条件
		queryCondition.addCondition(new ConditionItem("DIM_CREATED_DT", RangeType.LESS2GREAT, value.getCREATE_DT_FROM(), value.getCREATE_DT_TO()));
		// 添加排序条件
		List<OrderBy> listOrder = new ArrayList<OrderBy>();
		listOrder.add(new OrderBy("AGREE_CUSTOMER_COUNT", Rank.DESC));
		queryCondition.setOrderBySet(listOrder);	
		
		queryCondition.setMaxQuantity(value.getPageSize());
		queryCondition.setStartIndex(value.getCurrentCount());

		SimpleResultSet<ThemeFunnelCompanyAgreeStructures> result = ThemeFunnelCompanyAgreeStructures.getTest(queryCondition);
		
		jsonObject.put("test", result);

		return jsonObject;

	}		
	
	/*=================================================确认合作客户(AFFIRM)=================================================*/
	/*
	 *  市场人员
	 */
	@RequestMapping(value = "/ThemeFunnelCompanyAffirmAccount")
	public @ResponseBody Object getThemeFunnelCompanyAffirmAccount(@RequestBody ThemeFunnelCompanyAffirmAccount value, QueryCondition queryCondition)
			throws Exception {
		
		JSONObject jsonObject = new JSONObject();	
		// 添加查询条件
		queryCondition.addCondition(new ConditionItem("DIM_CREATED_DT", RangeType.LESS2GREAT, value.getCREATE_DT_FROM(), value.getCREATE_DT_TO()));
		// 添加排序条件
		List<OrderBy> listOrder = new ArrayList<OrderBy>();
		listOrder.add(new OrderBy("AGREE_COUNT", Rank.DESC));
		queryCondition.setOrderBySet(listOrder);	
		
		queryCondition.setMaxQuantity(value.getPageSize());
		queryCondition.setStartIndex(value.getCurrentCount());

		SimpleResultSet<ThemeFunnelCompanyAffirmAccount> result = ThemeFunnelCompanyAffirmAccount.getTest(queryCondition);
		
		jsonObject.put("test", result);

		return jsonObject;

	}	
	/*
	 *  区域
	 */
	@RequestMapping(value = "/ThemeFunnelCompanyAffirmCity")
	public @ResponseBody Object getThemeFunnelCompanyAffirmCity(@RequestBody ThemeFunnelCompanyAffirmCity value, QueryCondition queryCondition)
			throws Exception {
		
		JSONObject jsonObject = new JSONObject();	
		// 添加查询条件
		queryCondition.addCondition(new ConditionItem("DIM_CREATED_DT", RangeType.LESS2GREAT, value.getCREATE_DT_FROM(), value.getCREATE_DT_TO()));
		// 添加排序条件
		List<OrderBy> listOrder = new ArrayList<OrderBy>();
		listOrder.add(new OrderBy("AGREE_COUNT", Rank.DESC));
		queryCondition.setOrderBySet(listOrder);	
		
		queryCondition.setMaxQuantity(value.getPageSize());
		queryCondition.setStartIndex(value.getCurrentCount());

		SimpleResultSet<ThemeFunnelCompanyAffirmCity> result = ThemeFunnelCompanyAffirmCity.getTest(queryCondition);
		
		jsonObject.put("test", result);

		return jsonObject;

	}		
	/*
	 *  性质
	 */
	@RequestMapping(value = "/ThemeFunnelCompanyAffirmCP")
	public @ResponseBody Object getThemeFunnelCompanyAffirmCP(@RequestBody ThemeFunnelCompanyAffirmCP value, QueryCondition queryCondition)
			throws Exception {
		
		JSONObject jsonObject = new JSONObject();	
		// 添加查询条件
		queryCondition.addCondition(new ConditionItem("DIM_CREATED_DT", RangeType.LESS2GREAT, value.getCREATE_DT_FROM(), value.getCREATE_DT_TO()));
		// 添加排序条件
		List<OrderBy> listOrder = new ArrayList<OrderBy>();
		listOrder.add(new OrderBy("AGREE_COUNT", Rank.DESC));
		queryCondition.setOrderBySet(listOrder);	
		
		queryCondition.setMaxQuantity(value.getPageSize());
		queryCondition.setStartIndex(value.getCurrentCount());

		SimpleResultSet<ThemeFunnelCompanyAffirmCP> result = ThemeFunnelCompanyAffirmCP.getTest(queryCondition);
		
		jsonObject.put("test", result);

		return jsonObject;

	}			
	/*
	 *  人数规模
	 */
	@RequestMapping(value = "/ThemeFunnelCompanyAffirmPS")
	public @ResponseBody Object getThemeFunnelCompanyAffirmPS(@RequestBody ThemeFunnelCompanyAffirmPS value, QueryCondition queryCondition)
			throws Exception {
		
		JSONObject jsonObject = new JSONObject();	
		// 添加查询条件
		queryCondition.addCondition(new ConditionItem("DIM_CREATED_DT", RangeType.LESS2GREAT, value.getCREATE_DT_FROM(), value.getCREATE_DT_TO()));
		// 添加排序条件
		List<OrderBy> listOrder = new ArrayList<OrderBy>();
		listOrder.add(new OrderBy("AGREE_COUNT", Rank.DESC));
		queryCondition.setOrderBySet(listOrder);	
		
		queryCondition.setMaxQuantity(value.getPageSize());
		queryCondition.setStartIndex(value.getCurrentCount());

		SimpleResultSet<ThemeFunnelCompanyAffirmPS> result = ThemeFunnelCompanyAffirmPS.getTest(queryCondition);
		
		jsonObject.put("test", result);

		return jsonObject;

	}	
	/*
	 *  团队
	 */
	@RequestMapping(value = "/ThemeFunnelCompanyAffirmStructures")
	public @ResponseBody Object getThemeFunnelCompanyAffirmStructures(@RequestBody ThemeFunnelCompanyAffirmStructures value, QueryCondition queryCondition)
			throws Exception {
		
		JSONObject jsonObject = new JSONObject();	
		// 添加查询条件
		queryCondition.addCondition(new ConditionItem("DIM_CREATED_DT", RangeType.LESS2GREAT, value.getCREATE_DT_FROM(), value.getCREATE_DT_TO()));
		// 添加排序条件
		List<OrderBy> listOrder = new ArrayList<OrderBy>();
		listOrder.add(new OrderBy("AGREE_COUNT", Rank.DESC));
		queryCondition.setOrderBySet(listOrder);	
		
		queryCondition.setMaxQuantity(value.getPageSize());
		queryCondition.setStartIndex(value.getCurrentCount());

		SimpleResultSet<ThemeFunnelCompanyAffirmStructures> result = ThemeFunnelCompanyAffirmStructures.getTest(queryCondition);
		
		jsonObject.put("test", result);

		return jsonObject;

	}			
	
	/*=================================================执行计划客户(EXECUTE)=================================================*/
	/*
	 *  市场人员
	 */
	@RequestMapping(value = "/ThemeFunnelCompanyExecuteAccount")
	public @ResponseBody Object getThemeFunnelCompanyExecuteAccount(@RequestBody ThemeFunnelCompanyExecuteAccount value, QueryCondition queryCondition)
			throws Exception {
		
		JSONObject jsonObject = new JSONObject();	
		// 添加查询条件
		queryCondition.addCondition(new ConditionItem("DIM_CREATED_DT", RangeType.LESS2GREAT, value.getCREATE_DT_FROM(), value.getCREATE_DT_TO()));
		// 添加排序条件
		List<OrderBy> listOrder = new ArrayList<OrderBy>();
		listOrder.add(new OrderBy("AFFIRM_COUNT", Rank.DESC));
		queryCondition.setOrderBySet(listOrder);	
		
		queryCondition.setMaxQuantity(value.getPageSize());
		queryCondition.setStartIndex(value.getCurrentCount());

		SimpleResultSet<ThemeFunnelCompanyExecuteAccount> result = ThemeFunnelCompanyExecuteAccount.getTest(queryCondition);
		
		jsonObject.put("test", result);

		return jsonObject;

	}	
	/*
	 *  区域
	 */
	@RequestMapping(value = "/ThemeFunnelCompanyExecuteCity")
	public @ResponseBody Object getThemeFunnelCompanyExecuteCity(@RequestBody ThemeFunnelCompanyExecuteCity value, QueryCondition queryCondition)
			throws Exception {
		
		JSONObject jsonObject = new JSONObject();	
		// 添加查询条件
		queryCondition.addCondition(new ConditionItem("DIM_CREATED_DT", RangeType.LESS2GREAT, value.getCREATE_DT_FROM(), value.getCREATE_DT_TO()));
		// 添加排序条件
		List<OrderBy> listOrder = new ArrayList<OrderBy>();
		listOrder.add(new OrderBy("AFFIRM_COUNT", Rank.DESC));
		queryCondition.setOrderBySet(listOrder);	
		
		queryCondition.setMaxQuantity(value.getPageSize());
		queryCondition.setStartIndex(value.getCurrentCount());

		SimpleResultSet<ThemeFunnelCompanyExecuteCity> result = ThemeFunnelCompanyExecuteCity.getTest(queryCondition);
		
		jsonObject.put("test", result);

		return jsonObject;

	}		
	/*
	 *  性质
	 */
	@RequestMapping(value = "/ThemeFunnelCompanyExecuteCP")
	public @ResponseBody Object getThemeFunnelCompanyExecuteCP(@RequestBody ThemeFunnelCompanyExecuteCP value, QueryCondition queryCondition)
			throws Exception {
		
		JSONObject jsonObject = new JSONObject();	
		// 添加查询条件
		queryCondition.addCondition(new ConditionItem("DIM_CREATED_DT", RangeType.LESS2GREAT, value.getCREATE_DT_FROM(), value.getCREATE_DT_TO()));
		// 添加排序条件
		List<OrderBy> listOrder = new ArrayList<OrderBy>();
		listOrder.add(new OrderBy("AFFIRM_COUNT", Rank.DESC));
		queryCondition.setOrderBySet(listOrder);	
		
		queryCondition.setMaxQuantity(value.getPageSize());
		queryCondition.setStartIndex(value.getCurrentCount());

		SimpleResultSet<ThemeFunnelCompanyExecuteCP> result = ThemeFunnelCompanyExecuteCP.getTest(queryCondition);
		
		jsonObject.put("test", result);

		return jsonObject;

	}			
	/*
	 *  人数规模
	 */
	@RequestMapping(value = "/ThemeFunnelCompanyExecutePS")
	public @ResponseBody Object getThemeFunnelCompanyExecutePS(@RequestBody ThemeFunnelCompanyExecutePS value, QueryCondition queryCondition)
			throws Exception {
		
		JSONObject jsonObject = new JSONObject();	
		// 添加查询条件
		queryCondition.addCondition(new ConditionItem("DIM_CREATED_DT", RangeType.LESS2GREAT, value.getCREATE_DT_FROM(), value.getCREATE_DT_TO()));
		// 添加排序条件
		List<OrderBy> listOrder = new ArrayList<OrderBy>();
		listOrder.add(new OrderBy("AFFIRM_COUNT", Rank.DESC));
		queryCondition.setOrderBySet(listOrder);	
		
		queryCondition.setMaxQuantity(value.getPageSize());
		queryCondition.setStartIndex(value.getCurrentCount());

		SimpleResultSet<ThemeFunnelCompanyExecutePS> result = ThemeFunnelCompanyExecutePS.getTest(queryCondition);
		
		jsonObject.put("test", result);

		return jsonObject;

	}	
	/*
	 *  团队
	 */
	@RequestMapping(value = "/ThemeFunnelCompanyExecuteStructures")
	public @ResponseBody Object getThemeFunnelCompanyExecuteStructures(@RequestBody ThemeFunnelCompanyExecuteStructures value, QueryCondition queryCondition)
			throws Exception {
		
		JSONObject jsonObject = new JSONObject();	
		// 添加查询条件
		queryCondition.addCondition(new ConditionItem("DIM_CREATED_DT", RangeType.LESS2GREAT, value.getCREATE_DT_FROM(), value.getCREATE_DT_TO()));
		// 添加排序条件
		List<OrderBy> listOrder = new ArrayList<OrderBy>();
		listOrder.add(new OrderBy("AFFIRM_COUNT", Rank.DESC));
		queryCondition.setOrderBySet(listOrder);	
		
		queryCondition.setMaxQuantity(value.getPageSize());
		queryCondition.setStartIndex(value.getCurrentCount());

		SimpleResultSet<ThemeFunnelCompanyExecuteStructures> result = ThemeFunnelCompanyExecuteStructures.getTest(queryCondition);
		
		jsonObject.put("test", result);

		return jsonObject;

	}		

	/*=================================================产单客户(PRODUCE)=================================================*/
	/*
	 *  市场人员
	 */
	@RequestMapping(value = "/ThemeFunnelCompanyProduceAccount")
	public @ResponseBody Object getThemeFunnelCompanyProduceAccount(@RequestBody ThemeFunnelCompanyProduceAccount value, QueryCondition queryCondition)
			throws Exception {
		
		JSONObject jsonObject = new JSONObject();	
		// 添加查询条件
		queryCondition.addCondition(new ConditionItem("DIM_CREATED_DT", RangeType.LESS2GREAT, value.getCREATE_DT_FROM(), value.getCREATE_DT_TO()));
		// 添加排序条件
		List<OrderBy> listOrder = new ArrayList<OrderBy>();
		listOrder.add(new OrderBy("EXECUTE_COUNT", Rank.DESC));
		queryCondition.setOrderBySet(listOrder);	
		
		queryCondition.setMaxQuantity(value.getPageSize());
		queryCondition.setStartIndex(value.getCurrentCount());

		SimpleResultSet<ThemeFunnelCompanyProduceAccount> result = ThemeFunnelCompanyProduceAccount.getTest(queryCondition);
		
		jsonObject.put("test", result);

		return jsonObject;

	}	
	/*
	 *  区域
	 */
	@RequestMapping(value = "/ThemeFunnelCompanyProduceCity")
	public @ResponseBody Object getThemeFunnelCompanyProduceCity(@RequestBody ThemeFunnelCompanyProduceCity value, QueryCondition queryCondition)
			throws Exception {
		
		JSONObject jsonObject = new JSONObject();	
		// 添加查询条件
		queryCondition.addCondition(new ConditionItem("DIM_CREATED_DT", RangeType.LESS2GREAT, value.getCREATE_DT_FROM(), value.getCREATE_DT_TO()));
		// 添加排序条件
		List<OrderBy> listOrder = new ArrayList<OrderBy>();
		listOrder.add(new OrderBy("EXECUTE_COUNT", Rank.DESC));
		queryCondition.setOrderBySet(listOrder);	
		
		queryCondition.setMaxQuantity(value.getPageSize());
		queryCondition.setStartIndex(value.getCurrentCount());

		SimpleResultSet<ThemeFunnelCompanyProduceCity> result = ThemeFunnelCompanyProduceCity.getTest(queryCondition);
		
		jsonObject.put("test", result);

		return jsonObject;

	}		
	/*
	 *  性质
	 */
	@RequestMapping(value = "/ThemeFunnelCompanyProduceCP")
	public @ResponseBody Object getThemeFunnelCompanyProduceCP(@RequestBody ThemeFunnelCompanyProduceCP value, QueryCondition queryCondition)
			throws Exception {
		
		JSONObject jsonObject = new JSONObject();	
		// 添加查询条件
		queryCondition.addCondition(new ConditionItem("DIM_CREATED_DT", RangeType.LESS2GREAT, value.getCREATE_DT_FROM(), value.getCREATE_DT_TO()));
		// 添加排序条件
		List<OrderBy> listOrder = new ArrayList<OrderBy>();
		listOrder.add(new OrderBy("EXECUTE_COUNT", Rank.DESC));
		queryCondition.setOrderBySet(listOrder);	
		
		queryCondition.setMaxQuantity(value.getPageSize());
		queryCondition.setStartIndex(value.getCurrentCount());

		SimpleResultSet<ThemeFunnelCompanyProduceCP> result = ThemeFunnelCompanyProduceCP.getTest(queryCondition);
		
		jsonObject.put("test", result);

		return jsonObject;

	}			
	/*
	 *  人数规模
	 */
	@RequestMapping(value = "/ThemeFunnelCompanyProducePS")
	public @ResponseBody Object getThemeFunnelCompanyProducePS(@RequestBody ThemeFunnelCompanyProducePS value, QueryCondition queryCondition)
			throws Exception {
		
		JSONObject jsonObject = new JSONObject();	
		// 添加查询条件
		queryCondition.addCondition(new ConditionItem("DIM_CREATED_DT", RangeType.LESS2GREAT, value.getCREATE_DT_FROM(), value.getCREATE_DT_TO()));
		// 添加排序条件
		List<OrderBy> listOrder = new ArrayList<OrderBy>();
		listOrder.add(new OrderBy("EXECUTE_COUNT", Rank.DESC));
		queryCondition.setOrderBySet(listOrder);	
		
		queryCondition.setMaxQuantity(value.getPageSize());
		queryCondition.setStartIndex(value.getCurrentCount());

		SimpleResultSet<ThemeFunnelCompanyProducePS> result = ThemeFunnelCompanyProducePS.getTest(queryCondition);
		
		jsonObject.put("test", result);

		return jsonObject;

	}	
	/*
	 *  团队
	 */
	@RequestMapping(value = "/ThemeFunnelCompanyProduceStructures")
	public @ResponseBody Object getThemeFunnelCompanyProduceStructures(@RequestBody ThemeFunnelCompanyProduceStructures value, QueryCondition queryCondition)
			throws Exception {
		
		JSONObject jsonObject = new JSONObject();	
		// 添加查询条件
		queryCondition.addCondition(new ConditionItem("DIM_CREATED_DT", RangeType.LESS2GREAT, value.getCREATE_DT_FROM(), value.getCREATE_DT_TO()));
		// 添加排序条件
		List<OrderBy> listOrder = new ArrayList<OrderBy>();
		listOrder.add(new OrderBy("EXECUTE_COUNT", Rank.DESC));
		queryCondition.setOrderBySet(listOrder);	
		
		queryCondition.setMaxQuantity(value.getPageSize());
		queryCondition.setStartIndex(value.getCurrentCount());

		SimpleResultSet<ThemeFunnelCompanyProduceStructures> result = ThemeFunnelCompanyProduceStructures.getTest(queryCondition);
		
		jsonObject.put("test", result);

		return jsonObject;

	}		
	
	/*=================================================客户漏斗主表=================================================*/
	@RequestMapping(value = "/ThemeFunnelCompanyCompany")
	public @ResponseBody Object getThemeFunnelStudent(@RequestBody ThemeFunnelCompany value, QueryCondition queryCondition)
			throws Exception {
		
		JSONObject jsonObject = new JSONObject();	
		// 添加查询条件
		queryCondition.addCondition(new ConditionItem("DIM_CREATED_DT", RangeType.LESS2GREAT, value.getCREATE_DT_FROM(), value.getCREATE_DT_TO()));

		SimpleResultSet<ThemeFunnelCompany> result = ThemeFunnelCompany.getTest(queryCondition);
		
		jsonObject.put("test", result);

		return jsonObject;

	}	
}
