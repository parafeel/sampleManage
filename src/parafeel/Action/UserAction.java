package parafeel.Action;


import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.opensymphony.xwork2.ActionContext;

import parafeel.dao.SampleImpl;
import parafeel.dao.UserImpl;
import parafeel.pojo.Sample;
import parafeel.pojo.User;

@Service
public class UserAction  implements SessionAware{
	@Autowired
	UserImpl userImpl;
	@Autowired
	SampleImpl sampleImpl;
	
	User user;
	String isLoginFlag;
	String loginMessage;
	List<Sample> samples;
	
	private Map session; 
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	public String getIsLoginFlag() {
		return isLoginFlag;
	}

	public void setIsLoginFlag(String isLoginFlag) {
		this.isLoginFlag = isLoginFlag;
	}

	public String getLoginMessage() {
		return loginMessage;
	}

	public void setLoginMessage(String loginMessage) {
		this.loginMessage = loginMessage;
	}

	public List<Sample> getSamples() {
		return samples;
	}

	public void setSamples(List<Sample> samples) {
		this.samples = samples;
	}

	public String login() {
		User currentUser = (User) session.get("currentUser");
		if(currentUser != null && currentUser.getUserName() != null && !"".equals(currentUser.getUserName())) {
			loginMessage ="用户 " + currentUser.getUserName() +  " 已登录过！";
			isLoginFlag = "YES";
			samples = sampleImpl.queryAllSample();
			return "alreadylogin";
		}
		return "goToLoginJsp";
	}
	
	public String userLogin() {
		User currentUser = (User) session.get("currentUser");
		if(currentUser != null && currentUser.getUserName() != null && !"".equals(currentUser.getUserName())) {
			isLoginFlag = "YES";
			samples = sampleImpl.queryAllSample();
			return "alreadylogin";
		}
		if(user == null) {
			loginMessage = "登录失败，请输入账号密码！";
			return "loginFailure";
		} else {
			boolean flag = userImpl.Login(user);
			if(flag == true) {
				session.put("currentUser", user);
				loginMessage ="当前登录用户： " + user.getUserName() +  " ！";
				session.put("loginMessage", loginMessage);
				isLoginFlag = "YES";
				samples = sampleImpl.queryAllSample();
				return "loginSuccess";
			} else {
				loginMessage = "用户 " + user.getUserName() +" 登录失败，账号或密码错误！";
				isLoginFlag = "NO";
				return "loginFailure";
			}
		}
	}
	
	public String loginOut() {
		
		User currentUser = (User) session.get("currentUser");
		if(currentUser == null || currentUser.getUserName() == null || "".equals(currentUser.getUserName())) {
			isLoginFlag = "NO";
			samples = sampleImpl.queryAllSample();
			return "loginOutFailure";
		} else {
			session.remove("currentUser");
			session.remove("loginMessage");
			isLoginFlag = "NO";
			samples = sampleImpl.queryAllSample();
			return "loginOutSuccess";
		}
	}
	
	//之前使用的是ActionContext actionContext = ActionContext.getContext（）；  
	//Map session = actionContext.getSession（）；  来获取session，进而判断
	//当前有无用户，而在使用注解之后，无法用这种方式了 （原因存疑），改用继承
	//sessionAware接口来获得session
	@Override
	public void setSession(Map<String, Object> session) {
		// TODO Auto-generated method stub
		this.session = session;
	}
	
}
