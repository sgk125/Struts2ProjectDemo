package com.interview.empManage;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class LoggingInterceptor extends AbstractInterceptor {
	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		System.out.println("Request intercepted: " + invocation.getAction().getClass().getName());
		return invocation.invoke();
	}

}
