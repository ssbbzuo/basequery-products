package com.eenet.basequery.tag;

import java.io.IOException;
import java.util.List;

import javax.servlet.jsp.JspWriter;

import org.springframework.web.servlet.tags.RequestContextAwareTag;

import com.eenet.base.SimpleResultSet;
import com.eenet.basequery.sys.SysData;
import com.eenet.basequery.sys.SysDataService;

public class SysDataTag extends RequestContextAwareTag  {
	
	private static final long serialVersionUID = 1L;
	private String typeCode;
	private String curValue;
	
	public String getTypeCode() {
		return typeCode;
	}

	public void setTypeCode(String typeCode) {
		this.typeCode = typeCode;
	}

	public String getCurValue() {
		return curValue;
	}

	public void setCurValue(String curValue) {
		this.curValue = curValue;
	}

	@Override
	protected int doStartTagInternal()  {
		StringBuffer out = new StringBuffer();
		out.append("<option value=''>全部</option>");
		
		SysDataService sysDataService = (SysDataService)this.getRequestContext().getWebApplicationContext().getBean("sysDataService");
		SimpleResultSet<SysData> result = sysDataService.getByTypeCode(typeCode);
		if(result!=null && result.getCount()>0){
			List<SysData> resultList = result.getResultSet();
			for(SysData data : resultList){
				out.append("<option ");
				if(data.getCodeValue().equals(curValue))out.append(" selected ");
				out.append(" value='"+data.getCodeValue()+"'>"+data.getCodeName()+"</option>");
			}
		}
		JspWriter jspwriter = this.pageContext.getOut();
		try {
			jspwriter.print(out.toString());
		} catch (IOException e) {
			e.printStackTrace();
		}
		return EVAL_BODY_INCLUDE ;
	}

}
