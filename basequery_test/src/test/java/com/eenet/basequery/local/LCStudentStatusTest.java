package com.eenet.basequery.local;

import org.junit.Test;

import com.eenet.base.query.ConditionItem;
import com.eenet.base.query.QueryCondition;
import com.eenet.base.query.RangeType;
import com.eenet.basequery.learncenter.LCStudentStatusService;
import com.eenet.basequery.local.env.SpringEnv;
import com.eenet.util.EEBeanUtils;

public class LCStudentStatusTest extends SpringEnv {

	@Test
	public void crud(){
		LCStudentStatusService service = (LCStudentStatusService)super.getContext().getBean("LCStudentStatusService");		
		QueryCondition queryCondition = new QueryCondition();
		queryCondition.setMaxQuantity(10);
		queryCondition.setStartIndex(0);
		String result = EEBeanUtils.object2Json(service.getLCStudentStatus(queryCondition));
		System.out.println("result----"+result);
		
		queryCondition.addCondition(new ConditionItem("gradeName", RangeType.INCLUDE, "国开企业现场管理专项能力认证培训通关班201611期",""));
		result = EEBeanUtils.object2Json(service.getLCStudentStatus(queryCondition));
		System.out.println("result----"+result);
	}
}
