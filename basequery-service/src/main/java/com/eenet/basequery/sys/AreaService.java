package com.eenet.basequery.sys;


import com.eenet.base.SimpleResultSet;
import com.eenet.base.query.QueryCondition;
/**
 * 区域（省、市、区、街道）信息管理服务
 * @author lhb
 *
 */
public interface AreaService {	
	/**
	 * 获取所有省份信息
	 * @return
	 */
	public SimpleResultSet<Area> getProvinces();
	
	/**
	 * 根据父区域编码获取下级区域信息
	 * @param pCode
	 * @return
	 */
	public SimpleResultSet<Area> getByPCode(String pCode );
	
	/**
	 * 获得区域信息
	 * @param pk
	 * @return
	 */
	public Area get(String pk);
	
	/**
	 * 查询区域信息
	 * @param condition
	 * @return
	 */	
	public SimpleResultSet<Area> query (QueryCondition condition);
}
