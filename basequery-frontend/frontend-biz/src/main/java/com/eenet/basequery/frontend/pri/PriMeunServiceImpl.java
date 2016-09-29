package com.eenet.basequery.frontend.pri;

import com.eenet.base.SimpleResultSet;
import com.eenet.base.biz.SimpleBizImpl;
import com.eenet.base.query.QueryCondition;

public class PriMeunServiceImpl extends SimpleBizImpl implements PriMeunService{

	@Override
	public PriMeun save(PriMeun m) {
		return super.save(m);
	}

	@Override
	public PriMeun get(String pk) {
		return super.get(pk);
	}

	@Override
	public SimpleResultSet<PriMeun> query(QueryCondition condition) {
		return super.query(condition);
	}

	@Override
	public  Class<PriMeun> getPojoCLS() {
		return PriMeun.class;
	}

}
