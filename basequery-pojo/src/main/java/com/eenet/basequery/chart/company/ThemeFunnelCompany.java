package com.eenet.basequery.chart.company;

import java.awt.font.NumericShaper;
import java.util.Date;

import com.eenet.base.BaseEntity;

public class ThemeFunnelCompany extends BaseEntity{

	
	private static final long serialVersionUID = 5866891569541028742L;
	private Date DIM_CREATED_DT;//时间
	private String FUNNEL_WILL_COUNT;//阶段一单数
	private String FUNNEL_AGREE_COUNT;//阶段二单数
	private String FUNNEL_AFFIRM_COUNT;//阶段三单数
	private String FUNNEL_EXECUTE_COUNT;//阶段四单数
	private String FUNNEL_PRODUCE_COUNT;//阶段五单数
	
	private String FUNNEL_WILL_PER;//阶段一百分比
	private String FUNNEL_AGREE_PER;//阶段二百分比
	private String FUNNEL_AFFIRM_PER;//阶段三百分比
	private String FUNNEL_EXECUTE_PER;//阶段四百分比	
	private String FUNNEL_PRODUCE_PER;//阶段五百分比
	
	private String FUNNEL_WILL_WANT;//阶段一意向
	private String FUNNEL_WILL_SUCCESS;//阶段一成功
	private String FUNNEL_WILL_LOST;//阶段一流失	
	
	private String FUNNEL_AGREE_WANT;//阶段二意向
	private String FUNNEL_AGREE_SUCCESS;//阶段二成功
	private String FUNNEL_AGREE_LOST;//阶段二流失
	
	private String FUNNEL_AFFIRM_WANT;//阶段三意向
	private String FUNNEL_AFFIRM_SUCCESS;//阶段三成功
	private String FUNNEL_AFFIRM_LOST;//阶段三流失	
	
	private String FUNNEL_EXECUTE_WANT;//阶段四意向
	private String FUNNEL_EXECUTE_SUCCESS;//阶段四成功
	private String FUNNEL_EXECUTE_LOST;//阶段四流失
	
	private String FUNNEL_PRODUCE_WANT;//阶段五意向
	private String FUNNEL_PRODUCE_SUCCESS;//阶段五成功
	private String FUNNEL_PRODUCE_LOST;//阶段五流失	
	
	private String CREATE_DT_FROM;//统计开始时间
	private String CREATE_DT_TO;//统计结束时间

	private Integer currentCount;
	private Integer pageSize;

	
	public Integer getCurrentCount() {
		return currentCount;
	}
	public void setCurrentCount(Integer currentCount) {
		this.currentCount = currentCount;
	}
	public Integer getPageSize() {
		return pageSize;
	}
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}

	public Date getDIM_CREATED_DT() {
		return DIM_CREATED_DT;
	}
	public void setDIM_CREATED_DT(Date dIM_CREATED_DT) {
		DIM_CREATED_DT = dIM_CREATED_DT;
	}

	public String getFUNNEL_WILL_COUNT() {
		return FUNNEL_WILL_COUNT;
	}
	public void setFUNNEL_WILL_COUNT(String fUNNEL_WILL_COUNT) {
		FUNNEL_WILL_COUNT = fUNNEL_WILL_COUNT;
	}
	public String getFUNNEL_AGREE_COUNT() {
		return FUNNEL_AGREE_COUNT;
	}
	public void setFUNNEL_AGREE_COUNT(String fUNNEL_AGREE_COUNT) {
		FUNNEL_AGREE_COUNT = fUNNEL_AGREE_COUNT;
	}
	public String getFUNNEL_AFFIRM_COUNT() {
		return FUNNEL_AFFIRM_COUNT;
	}
	public void setFUNNEL_AFFIRM_COUNT(String fUNNEL_AFFIRM_COUNT) {
		FUNNEL_AFFIRM_COUNT = fUNNEL_AFFIRM_COUNT;
	}
	public String getFUNNEL_EXECUTE_COUNT() {
		return FUNNEL_EXECUTE_COUNT;
	}
	public void setFUNNEL_EXECUTE_COUNT(String fUNNEL_EXECUTE_COUNT) {
		FUNNEL_EXECUTE_COUNT = fUNNEL_EXECUTE_COUNT;
	}
	public String getFUNNEL_PRODUCE_COUNT() {
		return FUNNEL_PRODUCE_COUNT;
	}
	public void setFUNNEL_PRODUCE_COUNT(String fUNNEL_PRODUCE_COUNT) {
		FUNNEL_PRODUCE_COUNT = fUNNEL_PRODUCE_COUNT;
	}

	public String getFUNNEL_WILL_PER() {
		return FUNNEL_WILL_PER;
	}
	public void setFUNNEL_WILL_PER(String fUNNEL_WILL_PER) {
		FUNNEL_WILL_PER = fUNNEL_WILL_PER;
	}
	public String getFUNNEL_AGREE_PER() {
		return FUNNEL_AGREE_PER;
	}
	public void setFUNNEL_AGREE_PER(String fUNNEL_AGREE_PER) {
		FUNNEL_AGREE_PER = fUNNEL_AGREE_PER;
	}
	public String getFUNNEL_AFFIRM_PER() {
		return FUNNEL_AFFIRM_PER;
	}
	public void setFUNNEL_AFFIRM_PER(String fUNNEL_AFFIRM_PER) {
		FUNNEL_AFFIRM_PER = fUNNEL_AFFIRM_PER;
	}
	public String getFUNNEL_EXECUTE_PER() {
		return FUNNEL_EXECUTE_PER;
	}
	public void setFUNNEL_EXECUTE_PER(String fUNNEL_EXECUTE_PER) {
		FUNNEL_EXECUTE_PER = fUNNEL_EXECUTE_PER;
	}
	public String getFUNNEL_PRODUCE_PER() {
		return FUNNEL_PRODUCE_PER;
	}
	public void setFUNNEL_PRODUCE_PER(String fUNNEL_PRODUCE_PER) {
		FUNNEL_PRODUCE_PER = fUNNEL_PRODUCE_PER;
	}
	public String getFUNNEL_WILL_WANT() {
		return FUNNEL_WILL_WANT;
	}
	public void setFUNNEL_WILL_WANT(String fUNNEL_WILL_WANT) {
		FUNNEL_WILL_WANT = fUNNEL_WILL_WANT;
	}
	public String getFUNNEL_WILL_SUCCESS() {
		return FUNNEL_WILL_SUCCESS;
	}
	public void setFUNNEL_WILL_SUCCESS(String fUNNEL_WILL_SUCCESS) {
		FUNNEL_WILL_SUCCESS = fUNNEL_WILL_SUCCESS;
	}
	public String getFUNNEL_WILL_LOST() {
		return FUNNEL_WILL_LOST;
	}
	public void setFUNNEL_WILL_LOST(String fUNNEL_WILL_LOST) {
		FUNNEL_WILL_LOST = fUNNEL_WILL_LOST;
	}
	public String getFUNNEL_AGREE_WANT() {
		return FUNNEL_AGREE_WANT;
	}
	public void setFUNNEL_AGREE_WANT(String fUNNEL_AGREE_WANT) {
		FUNNEL_AGREE_WANT = fUNNEL_AGREE_WANT;
	}
	public String getFUNNEL_AGREE_SUCCESS() {
		return FUNNEL_AGREE_SUCCESS;
	}
	public void setFUNNEL_AGREE_SUCCESS(String fUNNEL_AGREE_SUCCESS) {
		FUNNEL_AGREE_SUCCESS = fUNNEL_AGREE_SUCCESS;
	}
	public String getFUNNEL_AGREE_LOST() {
		return FUNNEL_AGREE_LOST;
	}
	public void setFUNNEL_AGREE_LOST(String fUNNEL_AGREE_LOST) {
		FUNNEL_AGREE_LOST = fUNNEL_AGREE_LOST;
	}
	public String getFUNNEL_AFFIRM_WANT() {
		return FUNNEL_AFFIRM_WANT;
	}
	public void setFUNNEL_AFFIRM_WANT(String fUNNEL_AFFIRM_WANT) {
		FUNNEL_AFFIRM_WANT = fUNNEL_AFFIRM_WANT;
	}
	public String getFUNNEL_AFFIRM_SUCCESS() {
		return FUNNEL_AFFIRM_SUCCESS;
	}
	public void setFUNNEL_AFFIRM_SUCCESS(String fUNNEL_AFFIRM_SUCCESS) {
		FUNNEL_AFFIRM_SUCCESS = fUNNEL_AFFIRM_SUCCESS;
	}
	public String getFUNNEL_AFFIRM_LOST() {
		return FUNNEL_AFFIRM_LOST;
	}
	public void setFUNNEL_AFFIRM_LOST(String fUNNEL_AFFIRM_LOST) {
		FUNNEL_AFFIRM_LOST = fUNNEL_AFFIRM_LOST;
	}
	public String getFUNNEL_EXECUTE_WANT() {
		return FUNNEL_EXECUTE_WANT;
	}
	public void setFUNNEL_EXECUTE_WANT(String fUNNEL_EXECUTE_WANT) {
		FUNNEL_EXECUTE_WANT = fUNNEL_EXECUTE_WANT;
	}
	public String getFUNNEL_EXECUTE_SUCCESS() {
		return FUNNEL_EXECUTE_SUCCESS;
	}
	public void setFUNNEL_EXECUTE_SUCCESS(String fUNNEL_EXECUTE_SUCCESS) {
		FUNNEL_EXECUTE_SUCCESS = fUNNEL_EXECUTE_SUCCESS;
	}
	public String getFUNNEL_EXECUTE_LOST() {
		return FUNNEL_EXECUTE_LOST;
	}
	public void setFUNNEL_EXECUTE_LOST(String fUNNEL_EXECUTE_LOST) {
		FUNNEL_EXECUTE_LOST = fUNNEL_EXECUTE_LOST;
	}
	public String getFUNNEL_PRODUCE_WANT() {
		return FUNNEL_PRODUCE_WANT;
	}
	public void setFUNNEL_PRODUCE_WANT(String fUNNEL_PRODUCE_WANT) {
		FUNNEL_PRODUCE_WANT = fUNNEL_PRODUCE_WANT;
	}
	public String getFUNNEL_PRODUCE_SUCCESS() {
		return FUNNEL_PRODUCE_SUCCESS;
	}
	public void setFUNNEL_PRODUCE_SUCCESS(String fUNNEL_PRODUCE_SUCCESS) {
		FUNNEL_PRODUCE_SUCCESS = fUNNEL_PRODUCE_SUCCESS;
	}
	public String getFUNNEL_PRODUCE_LOST() {
		return FUNNEL_PRODUCE_LOST;
	}
	public void setFUNNEL_PRODUCE_LOST(String fUNNEL_PRODUCE_LOST) {
		FUNNEL_PRODUCE_LOST = fUNNEL_PRODUCE_LOST;
	}
	public String getCREATE_DT_FROM() {
		return CREATE_DT_FROM;
	}
	public void setCREATE_DT_FROM(String cREATE_DT_FROM) {
		CREATE_DT_FROM = cREATE_DT_FROM;
	}
	public String getCREATE_DT_TO() {
		return CREATE_DT_TO;
	}
	public void setCREATE_DT_TO(String cREATE_DT_TO) {
		CREATE_DT_TO = cREATE_DT_TO;
	}
	
	
	
	
	
}
