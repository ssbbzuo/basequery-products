package com.eenet.basequery.pri;

import java.io.Serializable;

import com.eenet.base.BaseEntity;

public class PriTree extends BaseEntity implements Serializable {
	private static final long serialVersionUID = 3767987628821022465L;
	private String id ;
	private String pId;
	private String name;
	private boolean isParent;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPId() {
		return pId;
	}
	public void setPId(String pId) {
		this.pId = pId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public boolean isParent() {
		return isParent;
	}
	public void setParent(boolean isParent) {
		this.isParent = isParent;
	}

	

}
