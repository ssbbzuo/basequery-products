package com.eenet.basequery.biz.area;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.eenet.base.SimpleResultSet;
import com.eenet.basequery.sys.Area;
import com.eenet.basequery.sys.AreaService;
import com.eenet.util.EEBeanUtils;

@Controller
@RequestMapping("/area")
public class AreaController {
	
	@Autowired
	private AreaService AreaService;
	
	@ResponseBody
	@RequestMapping(value="/getProvinces", produces = {"application/json;charset=UTF-8"})
	public String getProvinces(){
		SimpleResultSet<Area>  result =  AreaService.getProvinces();
		return EEBeanUtils.object2Json(result);
	}
	
	@ResponseBody
	@RequestMapping(value="/getByPCode", produces = {"application/json;charset=UTF-8"})
	public String getByPCode(String pCode ,Model model){
		SimpleResultSet<Area>  result =  AreaService.getByPCode(pCode);
		
		return EEBeanUtils.object2Json(result);
	}
	
}
