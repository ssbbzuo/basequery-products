package com.eenet.basequery.pri;

import java.util.List;
import java.util.Map;

import com.eenet.base.SimpleResultSet;
import com.eenet.base.query.QueryCondition;

public interface PriTreeService {
	/**
	 * 获取树
	 * @param condition
	 * @param type 
	 * @return
	 */
	public SimpleResultSet<PriTree> getPriTree(QueryCondition condition, int type);

	public int savePri(String uid, String pId,  String addIds, int type);

	public int removePri(String uid, String pId, String removeIds, int type);

	public List<String> getMyPriTree(String userId, String pid, PrivilegeType type);

	public  Map<String, List<String>> getWholePri(String uid);

	public List<String> getPriTreeByType(String uid, PrivilegeType type);
}
