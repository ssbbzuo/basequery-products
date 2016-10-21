package com.eenet.basequery.pri.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.eenet.base.SimpleResultSet;
import com.eenet.base.dao.BaseDAOImpl;
import com.eenet.base.query.QueryCondition;
import com.eenet.basequery.pri.PriTree;
import com.eenet.basequery.pri.PrivilegeType;
import com.eenet.basequery.pri.dao.PriTreeDaoService;
import com.eenet.common.exception.DBOPException;

public class PriTreeDaoServiceImpl extends BaseDAOImpl implements PriTreeDaoService {
	@Override
	public SimpleResultSet<PriTree> getAreaPriTree(QueryCondition condition) {
		SimpleResultSet<PriTree> resultSet;
		try {
			resultSet = super.query(condition, PriTree.class, "com.eenet.basequery.pri.PriTree.getAreaPriTreeMap",
					"com.eenet.basequery.pri.PriTree.getAreaPriTree");
		} catch (DBOPException e) {
			resultSet = new SimpleResultSet<PriTree>();
			e.printStackTrace();
		}
		return resultSet;
	}

	@Override
	public SimpleResultSet<PriTree> getNetWorkPriTree(QueryCondition condition) {
		SimpleResultSet<PriTree> resultSet;
		try {
			resultSet = super.query(condition, PriTree.class, "com.eenet.basequery.pri.PriTree.getNetWorkPriTreeMap",
					"com.eenet.basequery.pri.PriTree.getNetWorkPriTree");
		} catch (DBOPException e) {
			resultSet = new SimpleResultSet<PriTree>();
			e.printStackTrace();
		}
		return resultSet;
	}

	@Override
	public SimpleResultSet<PriTree> getStaffPriTree(QueryCondition condition) {
		SimpleResultSet<PriTree> resultSet;
		try {
			resultSet = super.query(condition, PriTree.class, "com.eenet.basequery.pri.PriTree.getStaffPriTreeMap",
					"com.eenet.basequery.pri.PriTree.getStaffPriTree");
		} catch (DBOPException e) {
			resultSet = new SimpleResultSet<PriTree>();
			e.printStackTrace();
		}
		return resultSet;
	}

	@Override
	public SimpleResultSet<PriTree> getChanelPriTree(QueryCondition condition) {
		SimpleResultSet<PriTree> resultSet;
		try {
			resultSet = super.query(condition, PriTree.class, "com.eenet.basequery.pri.PriTree.getChanelPriTreeMap",
					"com.eenet.basequery.pri.PriTree.getChanelPriTree");
		} catch (DBOPException e) {
			resultSet = new SimpleResultSet<PriTree>();
			e.printStackTrace();
		}
		return resultSet;
	}

	@Override
	public SimpleResultSet<PriTree> getLearnCenterPriTree(QueryCondition condition) {
		SimpleResultSet<PriTree> resultSet;
		try {
			resultSet = super.query(condition, PriTree.class,
					"com.eenet.basequery.pri.PriTree.getLearnCenterPriTreeMap",
					"com.eenet.basequery.pri.PriTree.getLearnCenterPriTree");
		} catch (DBOPException e) {
			resultSet = new SimpleResultSet<PriTree>();
			e.printStackTrace();
		}
		return resultSet;
	}

	@Override
	public int saveAreaPriTree(String uid, String[] addIds) {
		Map<String, Object> map = new HashMap<>();
		map.put("uid", uid);
		map.put("addIds", addIds);

		return getBatisSession().insert("com.eenet.basequery.pri.PriTree.saveAreaPriTree", map);
	}

	@Override
	public int saveNetWorkPriTree(String uid, String[] addIds) {
		Map<String, Object> map = new HashMap<>();
		map.put("uid", uid);
		map.put("addIds", addIds);
		return getBatisSession().insert("com.eenet.basequery.pri.PriTree.saveNetWorkPriTree", map);
	}

	@Override
	public int saveStaffPriTree(String uid, String[] addIds) {
		Map<String, Object> map = new HashMap<>();
		map.put("uid", uid);
		map.put("addIds", addIds);
		return getBatisSession().insert("com.eenet.basequery.pri.PriTree.saveStaffPriTree", map);
	}

	@Override
	public int saveChanelPriTree(String uid, String[] addIds) {
		Map<String, Object> map = new HashMap<>();
		map.put("uid", uid);
		map.put("addIds", addIds);
		return getBatisSession().insert("com.eenet.basequery.pri.PriTree.saveChanelPriTree", map);
	}

	@Override
	public int saveLearnCenterPriTree(String uid, String[] addIds) {
		Map<String, Object> map = new HashMap<>();
		map.put("uid", uid);
		map.put("addIds", addIds);
		return getBatisSession().insert("com.eenet.basequery.pri.PriTree.saveLearnCenterPriTree", map);
	}

	@Override
	public int removeAreaPriTree(String uid, String[] removeIds) {
		Map<String, Object> map = new HashMap<>();
		map.put("uid", uid);
		map.put("addIds", removeIds);
		return getBatisSession().insert("com.eenet.basequery.pri.PriTree.removeAreaPriTree", map);
	}

	@Override
	public int removeNetWorkPriTree(String uid, String[] removeIds) {
		Map<String, Object> map = new HashMap<>();
		map.put("uid", uid);
		map.put("addIds", removeIds);
		return getBatisSession().insert("com.eenet.basequery.pri.PriTree.removeNetWorkPriTree", map);
	}

	@Override
	public int removeStaffPriTree(String uid, String[] removeIds) {
		Map<String, Object> map = new HashMap<>();
		map.put("uid", uid);
		map.put("addIds", removeIds);
		return getBatisSession().insert("com.eenet.basequery.pri.PriTree.removeStaffPriTree", map);
	}

	@Override
	public int removeChanelPriTree(String uid, String[] removeIds) {
		Map<String, Object> map = new HashMap<>();
		map.put("uid", uid);
		map.put("addIds", removeIds);
		return getBatisSession().insert("com.eenet.basequery.pri.PriTree.removeChanelPriTree", map);
	}

	@Override
	public int removeLearnCenterPriTree(String uid, String[] removeIds) {
		Map<String, Object> map = new HashMap<>();
		map.put("uid", uid);
		map.put("addIds", removeIds);
		return getBatisSession().insert("com.eenet.basequery.pri.PriTree.removeLearnCenterPriTree", map);
	}

	@Override
	public List<String> getMyPriTree(String uid, String pid, int type) {
		Map<String, Object> map = new HashMap<>();
		map.put("uid", uid);
		map.put("pid", pid);
		map.put("type", type);
		return getBatisSession().selectList("com.eenet.basequery.pri.PriTree.getMyPriTree", map);
	}

	@Override
	public Map<String, List<String>> getWholePri(String uid) {
		HashMap<String, List<String>> result = new HashMap<String, List<String>>();
		List<String> list;

		Map<String, Object> map = new HashMap<>();
		map.put("uid", uid);
		
		map.put("type", 1);
		list = getBatisSession().selectList("com.eenet.basequery.pri.PriTree.getMyWholePri", map);
		result.put(PrivilegeType.AREAPRI.name(), cleanData(list));
		
		map.put("type", 2);
		list = getBatisSession().selectList("com.eenet.basequery.pri.PriTree.getMyWholePri", map);
		result.put(PrivilegeType.NETWORKPRI.name(), cleanData(list));
		
		map.put("type", 3);
		list = getBatisSession().selectList("com.eenet.basequery.pri.PriTree.getMyWholePri", map);
		result.put(PrivilegeType.STAFFPRI.name(), cleanData(list));
		
		map.put("type", 4);
		list = getBatisSession().selectList("com.eenet.basequery.pri.PriTree.getMyWholePri", map);
		result.put(PrivilegeType.CHANELPRI.name(), cleanData(list));
		
		map.put("type", 5);
		list = getBatisSession().selectList("com.eenet.basequery.pri.PriTree.getMyWholePri", map);
		result.put(PrivilegeType.LEARNCENTERPRI.name(), cleanData(list));

		return result;
	}
	
	@Override
	public List<String> getMyPriTree(String uid,int type) {
		Map<String, Object> map = new HashMap<>();
		map.put("uid", uid);
		map.put("type", type);
		return getBatisSession().selectList("com.eenet.basequery.pri.PriTree.getMyPriTreeStr", map);
	}
	
	
	
	
	
	
	
	

	private List<String> cleanData(List<String> list) {
		if (list.size() > 0) {
			return list;
		}
		return list;

	}

}
