package com.eenet.basequery.frontend.query;

import java.util.List;
import java.util.Map;

public interface QuerySqlService {

	public  Map<String,List> getDataBySql(String sql,int index,int pageSize);
}
