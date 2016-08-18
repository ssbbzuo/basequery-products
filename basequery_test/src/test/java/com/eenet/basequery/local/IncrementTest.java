package com.eenet.basequery.local;

import org.junit.Test;

import com.eenet.base.query.QueryCondition;
import com.eenet.basequery.increment.IncrementService;
import com.eenet.basequery.local.env.SpringEnv;
import com.eenet.util.EEBeanUtils;

public class IncrementTest extends SpringEnv {

	@Test
	public void crud(){
		IncrementService service = (IncrementService)super.getContext().getBean("incrementService");		
		QueryCondition queryCondition = new QueryCondition();
		queryCondition.setMaxQuantity(10);
		queryCondition.setStartIndex(0);
		String result = EEBeanUtils.object2Json(service.getIncrement(queryCondition));
		System.out.println("result----"+result);
	}
}
