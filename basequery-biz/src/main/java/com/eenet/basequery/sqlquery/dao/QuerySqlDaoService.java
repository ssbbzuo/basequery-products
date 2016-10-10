package com.eenet.basequery.sqlquery.dao;

import java.util.List;
import java.util.Map;

public interface QuerySqlDaoService {
	
	public Map<String,List> queryBySql(Map<String,String> sqlMap);

}
