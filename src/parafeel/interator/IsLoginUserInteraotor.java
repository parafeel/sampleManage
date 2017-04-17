package parafeel.interator;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

import parafeel.pojo.User;

public class IsLoginUserInteraotor implements Interceptor {

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

	@Override
	public void init() {
		// TODO Auto-generated method stub

	}

	@Override
	public String intercept(ActionInvocation arg0) throws Exception {
		// TODO Auto-generated method stub
		ActionContext actionContext = ActionContext.getContext();  
		Map<String, Object> session = actionContext.getSession();
		User currentUser = (User) session.get("currentUser");
		String m = arg0.getProxy().getMethod();
        if(currentUser != null && currentUser.getUserName()!= null && !"".equals(currentUser.getUserName())){
            arg0.invoke();//相当于chain.doFilter（）；
            return null;
        }else{
            if("login".equals(m)){
                return arg0.invoke();
            }else{
            	ActionContext.getContext().put("Message", "您还未登录,请先登陆!");
                return "unlogin";
            }
        }
	}

}
