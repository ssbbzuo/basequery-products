package com.eenet.basequery.sqlquery;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.eenet.base.biz.SimpleBizImpl;
import com.eenet.basequery.sqlquery.dao.QuerySqlDaoService;

public class QuerySqlServiceImpl extends SimpleBizImpl implements QuerySqlService{
	
	private QuerySqlDaoService querySqlDaoService;

	public QuerySqlDaoService getQuerySqlDaoService() {
		return querySqlDaoService;
	}

	public void setQuerySqlDaoService(QuerySqlDaoService querySqlDaoService) {
		this.querySqlDaoService = querySqlDaoService;
	}

	@Override
	public Map<String,List> getDataBySql(String sql,int index,int pageSize) {
		Map<String,String> queryMap = new HashMap<String,String>();
		queryMap.put("sql", sql);
		queryMap.put("index", Integer.toString(index));
		queryMap.put("pageSize", Integer.toString(pageSize));
		return querySqlDaoService.queryBySql(queryMap);
	}

	@Override
	public <M> Class<M> getPojoCLS() {
		// TODO Auto-generated method stub
		return null;
	}

}
