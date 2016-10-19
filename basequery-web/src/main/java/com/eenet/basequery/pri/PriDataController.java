package com.eenet.basequery.pri;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.eenet.base.SimpleResultSet;
import com.eenet.base.query.ConditionItem;
import com.eenet.base.query.QueryCondition;
import com.eenet.base.query.RangeType;
import com.eenet.basequery.page.Pagination;
import com.eenet.common.OPOwner;
import com.eenet.util.EEBeanUtils;

@Controller
public class PriDataController {
	@Autowired
	private UserInfoService userInfoService;
	
	@Autowired
	private PriTreeService priTreeService;
	
	
	@RequestMapping(value="/userList")
	public String userList(QueryCondition queryCondition,Pagination pagination ,Model model){
		queryCondition.setMaxQuantity(pagination.getPageSize());
		queryCondition.setStartIndex(pagination.getIndexCurrent());
		SimpleResultSet<UserInfo>  result =  userInfoService.getUserInfo(queryCondition);
		model.addAttribute("resultMap", result);
		pagination.setTotal(result.getCount());
		model.addAttribute("pagination", pagination);
		return "pri/userList";
	}
	
	
	@RequestMapping(value="/saveUser")
	@ResponseBody
	public UserInfo saveUser(UserInfo userInfo,Model model){
		return userInfoService.save(userInfo);
	}
	
	
	
	
	
	
	
	@RequestMapping(value="/setPri")
	public String setPri(String id,Model model){
		UserInfo userInfo = userInfoService.getUserInfoByPK(id);
		model.addAttribute("resultMap", userInfo);
		return "pri/setPri";
	}
	
	
	@RequestMapping(value="/getPri")
	@ResponseBody
	public List<PriTree> getPri(String id,int type){
		QueryCondition queryCondition = new QueryCondition();
		ConditionItem item  =null;
		if (EEBeanUtils.isNULL(id)) {
			switch (type) {
			case 1:
				item  = new ConditionItem("pId", RangeType.EQUAL, "100000000", null);
				id =  "100000000";
				break;
			case 2:
				item  = new ConditionItem("pId", RangeType.ISNULL, null, null);
				id =  "ISNULL";
				break;
			case 3:
				item  = new ConditionItem("pId", RangeType.ISNULL, null, null);
				id =  "ISNULL";
				break;
			case 4:
				item  = new ConditionItem("pId", RangeType.ISNULL, null, null);
				id =  "ISNULL";
				break;
			case 5:
				item  = new ConditionItem("pId", RangeType.ISNULL, null, null);
				id =  "ISNULL";
				break;
		}
		}else{
			item  = new ConditionItem("pId", RangeType.EQUAL, id.trim(), null);
		}
		
		queryCondition.addCondition(item);
		queryCondition.setMaxQuantity(-1);
		SimpleResultSet<PriTree>  result =  priTreeService.getPriTree(queryCondition,type);
		return  result.getResultSet();
	}
	
	@RequestMapping(value="/getMyPri")
	@ResponseBody
	public List<String> getMyPri(String userId,String id,int type){
		if (EEBeanUtils.isNULL(id)) {	
			switch (type) {
				case 1:
					id =  "100000000";
					break;
				case 2:
					id =  "ISNULL";
					break;
				case 3:
					id =  "ISNULL";
					break;
				case 4:
					id =  "ISNULL";
					break;
				case 5:
					id =  "ISNULL";
					break;
			}
		}
		List<String>  myPriTree = priTreeService.getMyPriTree(userId,id,type);
		return  myPriTree;
	}
	
	@RequestMapping(value="/savePri")
	@ResponseBody
	public String setPri(String uid,String pId,String addIds,String removeIds,int type){
		
		if (EEBeanUtils.isNULL(pId)) {	
			switch (type) {
				case 1:
					pId =  "100000000";
					break;
				case 2:
					pId =  "ISNULL";
					break;
				case 3:
					pId =  "ISNULL";
					break;
				case 4:
					pId =  "ISNULL";
					break;
				case 5:
					pId =  "ISNULL";
					break;
			}
		}
		
		if (!EEBeanUtils.isNULL(addIds)) {
			priTreeService.savePri(uid,pId,addIds,type);
		}
		if(!EEBeanUtils.isNULL(removeIds)){
			priTreeService.removePri(uid,pId,removeIds,type);
		}
			
		return "";
	}
	
	
	@RequestMapping(value="/getPriTree")
	@ResponseBody
	public List<String> getPriTree(String uid,int type){
		
		return priTreeService.getPriTreeByType(uid, type);
	}
}
