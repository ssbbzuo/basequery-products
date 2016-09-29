package com.eenet.basequery.pri;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class PriMeunController {
	
	@RequestMapping(value="/getMeun")
	public String getMeun(){
		
		return "pri/list";
	}

}
