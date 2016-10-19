package com.eenet.basequery.pri.dao;

import java.util.List;
import java.util.Map;

import com.eenet.base.SimpleResultSet;
import com.eenet.base.dao.BaseDAOService;
import com.eenet.base.query.QueryCondition;
import com.eenet.basequery.pri.PriTree;

public interface PriTreeDaoService extends BaseDAOService{

	public SimpleResultSet<PriTree> getLearnCenterPriTree(QueryCondition condition);

	public SimpleResultSet<PriTree> getChanelPriTree(QueryCondition condition);

	public SimpleResultSet<PriTree> getStaffPriTree(QueryCondition condition);

	public SimpleResultSet<PriTree> getNetWorkPriTree(QueryCondition condition);

	public SimpleResultSet<PriTree> getAreaPriTree(QueryCondition condition);

	public int saveAreaPriTree(String uid, String[] addIds);

	public int saveNetWorkPriTree(String uid, String[] addIds);

	public int saveStaffPriTree(String uid, String[] addIds);

	public int saveChanelPriTree(String uid, String[] addIds);
	
	public int saveLearnCenterPriTree(String uid, String[] addIds);

	public int removeAreaPriTree(String uid, String[] removeIds);

	public int removeNetWorkPriTree(String uid, String[] removeIds);

	public int removeStaffPriTree(String uid, String[] removeIds);

	public int removeChanelPriTree(String uid, String[] removeIds);

	public int removeLearnCenterPriTree(String uid, String[] removeIds);

	public List<String> getMyPriTree(String uid, String pid, int type);

	public Map<String, List<String>> getWholePri(String uid);

	public List<String> getMyPriTree(String uid, int type);

}
