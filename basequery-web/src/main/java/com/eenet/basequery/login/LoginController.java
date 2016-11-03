package com.eenet.basequery.login;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.eenet.authen.AccessToken;
import com.eenet.authen.AdminUserLoginAccount;
import com.eenet.authen.AdminUserSignOnBizService;
import com.eenet.authen.SignOnGrant;
import com.eenet.authen.extension.web.GatherAppNUserIdentifierFilter;
import com.eenet.authen.request.AppAuthenRequest;
import com.eenet.base.SimpleResponse;
import com.eenet.base.SimpleResultSet;
import com.eenet.base.query.QueryCondition;
import com.eenet.baseinfo.user.AdminUserInfo;
import com.eenet.basequery.authen.Constant;
import com.eenet.basequery.increment.Increment;
import com.eenet.basequery.increment.IncrementService;
import com.eenet.util.EEBeanUtils;
import com.eenet.util.cryptography.EncryptException;
import com.eenet.util.cryptography.RSAEncrypt;
import com.eenet.util.cryptography.RSAUtil;

@Controller
public class LoginController {
	
	@Autowired
	private IncrementService incrementService;
	@Autowired
	private AdminUserSignOnBizService adminUserSignOnBizService;
	@Autowired
	private AppAuthenRequest appAuthenIdentifier;
	@Autowired
	private RSAEncrypt TransferRSAEncrypt;
	
	@RequestMapping(value="/login")
	public String login(HttpServletResponse response,HttpSession session,String loginAccount,String password,RedirectAttributes redirectAttributes){
		SimpleResponse errResponse = new SimpleResponse();
		errResponse.setSuccessful(false);
		
		if(EEBeanUtils.isNULL(loginAccount) || EEBeanUtils.isNULL(password)){
			errResponse.addMessage("账号或密码参数丢失");
			redirectAttributes.addFlashAttribute("errResponse", errResponse);
			redirectAttributes.addFlashAttribute("errMsg", errResponse.getStrMessage());
			return "redirect:/";
		}
		try{
			//获取授权码（等于验证用户账号密码）
			SignOnGrant grantCode = adminUserSignOnBizService.getSignOnGrant(appAuthenIdentifier.getAppId(), appAuthenIdentifier.getRedirectURI(), loginAccount, RSAUtil.encrypt(TransferRSAEncrypt,password+"##"+System.currentTimeMillis()));
			if(!grantCode.isSuccessful()){
				errResponse.addMessage(grantCode.getRSBizCode().toString());
				redirectAttributes.addFlashAttribute("errResponse", errResponse);
				redirectAttributes.addFlashAttribute("errMsg", errResponse.getStrMessage());
				return "redirect:/";
			}
			/*获取令牌*/
			AccessToken  accessToken = adminUserSignOnBizService.getAccessToken(appAuthenIdentifier.getAppId(), RSAUtil.encrypt(TransferRSAEncrypt, appAuthenIdentifier.getAppSecretKey()+"##"+System.currentTimeMillis()), grantCode.getGrantCode());
			if(!accessToken.isSuccessful()){
				errResponse.addMessage(accessToken.getRSBizCode().toString());
				redirectAttributes.addFlashAttribute("errResponse", errResponse);
				redirectAttributes.addFlashAttribute("errMsg", errResponse.getStrMessage());
				return "redirect:/";
			}
			/*获取登录用户信息*/
			AdminUserLoginAccount adminUserLoginAccount = new AdminUserLoginAccount();
			adminUserLoginAccount.setUserInfo((AdminUserInfo)accessToken.getUserInfo());
			adminUserLoginAccount.setLoginAccount(loginAccount);
			
			session.setAttribute(Constant.adminUserLoginInfoSession, adminUserLoginAccount);
			response.addCookie(new Cookie(GatherAppNUserIdentifierFilter.UserId_PARAM_TAG, adminUserLoginAccount.getUserInfo().getAtid()));
			response.addCookie(new Cookie(GatherAppNUserIdentifierFilter.UserAccessToken_PARAM_TAG, accessToken.getAccessToken()));
			response.addCookie(new Cookie(GatherAppNUserIdentifierFilter.UserType_PARAM_TAG, "adminUser"));
			
			return "redirect:/main"; 
		}catch(EncryptException e){
			errResponse.addMessage("系统错误，密码加密失败，请联系管理员");
			redirectAttributes.addFlashAttribute("errResponse", errResponse);
			redirectAttributes.addFlashAttribute("errMsg", errResponse.getStrMessage());
			return "redirect:/";
		}
		
//			String code = AuthenUtils.loginUserGrantCode(loginAccount, password);
//			if("".equals(code)){
//				errResponse.addMessage("账号或密码输入错误");
//				redirectAttributes.addFlashAttribute("errResponse", errResponse);
//				redirectAttributes.addFlashAttribute("errMsg", errResponse.getStrMessage());
//				return "redirect:/";
//			}
//			HashMap<String,String> tokenMap = AuthenUtils.grantToken(code);//获取令牌
//			AdminUserLoginAccount adminUserLoginAccount = AuthenUtils.getAdminUserInfo(tokenMap.get("userId"),tokenMap.get("accessToken"));//获取个人信息
//			if(adminUserLoginAccount!=null){
//				adminUserLoginAccount.setLoginAccount(loginAccount);
//				session.setAttribute(Constant.adminUserLoginInfoSession, adminUserLoginAccount);
//				
////				response.addCookie(new Cookie(GatherAppNUserIdentifierFilter.AppID_PARAM_TAG, Constant.appId));
////				response.addCookie(new Cookie(GatherAppNUserIdentifierFilter.AppSecretKey_PARAM_TAG, AuthenUtils.encrypt(Constant.appSecretKey + "##" + System.currentTimeMillis())));
////				response.addCookie(new Cookie(GatherAppNUserIdentifierFilter.RedirectURI_PARAM_TAG, Constant.appDomain));
//				response.addCookie(new Cookie(GatherAppNUserIdentifierFilter.UserId_PARAM_TAG, adminUserLoginAccount.getUserInfo().getAtid()));
//				response.addCookie(new Cookie(GatherAppNUserIdentifierFilter.UserAccessToken_PARAM_TAG, tokenMap.get("accessToken")));
//				response.addCookie(new Cookie(GatherAppNUserIdentifierFilter.UserType_PARAM_TAG, "adminUser"));
//				
//				
//				
//				
//				   return "redirect:/main"; 
//			}
		
	}
	
	@RequestMapping(value="/logout")
	public String logout(HttpSession session){
		session.removeAttribute(Constant.adminUserLoginInfoSession);
		return "redirect:/";
	}
	
	@RequestMapping(value="/main")
	public String main(){
		//显示后台整体框架
		
		return "main";
	}
	
	@RequestMapping(value="/index")
	public String index(QueryCondition queryCondition,Model model){
		SimpleResultSet<Increment>  result =  incrementService.getIncrement(queryCondition);
		model.addAttribute("resultMap", result);
		return "index";
	}
	
}
