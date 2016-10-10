package com.eenet.basequery.sqlquery.dao.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import com.eenet.base.dao.BaseDAOImpl;
import com.eenet.basequery.sqlquery.dao.QuerySqlDaoService;

public class QuerySqlDaoServiceImpl extends BaseDAOImpl implements QuerySqlDaoService {
	
	private String getNamespace(){
		return "com.eenet.basequery.frontend.query.querySql";
	}

	@Override
	public Map<String, List> queryBySql(Map<String, String> sqlMap) {
		List<String> columnList = new ArrayList<String>();
		Map<String,List> resultMap = new HashMap<String,List>();
		if(sqlMap.get("sql").indexOf("limit")>0?true:false){
			sqlMap.put("isCLimit", "Y");
		}
		Integer total = this.getBatisSession().selectOne(this.getNamespace()+".queryCount",genCountSql(sqlMap.get("sql")));
		List<HashMap<String, String>> list = this.getBatisSession().selectList(this.getNamespace()+".querySql", sqlMap);
		if(list!=null &&!list.isEmpty()){
			HashMap<String, String> columnMap = list.get(0);
			Set<String> keyset = columnMap.keySet();
			Iterator<String> iterator = keyset.iterator();
			while(iterator.hasNext()){
				columnList.add((String)iterator.next());
			}
		}
		List totalList = new ArrayList(); 
		totalList.add(total);
		resultMap.put("totalList", totalList);
		resultMap.put("resultList", list);
		resultMap.put("columnList", columnList);
		return resultMap;
	}
	
	private String genCountSql(String sql){
		return " select count(*) "+sql.substring(sql.indexOf("from"));
	}

}
