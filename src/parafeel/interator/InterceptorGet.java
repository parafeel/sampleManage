package parafeel.interator;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

public class InterceptorGet implements Interceptor {

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
		// 测试过滤get方法
		/*
		String method = ServletActionContext.getRequest().getMethod();
		if(method.equalsIgnoreCase("POST")){
			return arg0.invoke();
		}
		
		*/
		return null;
	}

}
