package com.eenet.basequery.frontend.pri;

import com.eenet.base.SimpleResponse;
import com.eenet.base.SimpleResultSet;
import com.eenet.base.query.QueryCondition;

public interface PriMeunService {

	/**
	 * 新增或更新菜单信息
	 * @param m
	 * @return
	 */
	public PriMeun save(PriMeun m);
	
	/**
	 * 获得单个菜单信息
	 * @param pk
	 * @return
	 */
	public PriMeun get(String pk);
	
	/**
	 * 删除菜单信息
	 * @param pk
	 * @return
	 */
	public SimpleResponse delete(String... pk);
	
	/**
	 * 查询菜单信息
	 * @param condition
	 * @return
	 */
	public SimpleResultSet<PriMeun> query (QueryCondition condition);
	
}
