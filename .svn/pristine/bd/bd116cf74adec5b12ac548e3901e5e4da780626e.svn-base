package com.hrm.service;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.hrm.pojo.Account;
import com.hrm.pojo.Group;


@Component
@Transactional
public class ShiroDbRealm extends AuthorizingRealm{

	@Autowired
	private AccountService accountService;
	
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {

		//当前登录的用户名
		String username = (String) principalCollection.fromRealm(getName()).iterator().next();
		//根据登录的用户名找到对应Account对象
		Account account = accountService.findByName(username);
		if(account != null) {
			SimpleAuthorizationInfo authorizationInfo = new SimpleAuthorizationInfo();
			//设置Account具有的角色
			authorizationInfo.setRoles(account.getGroupNames());
			
			Group g = account.getGroup();
			//设置Account具有的权限
			authorizationInfo.addStringPermissions(g.getPermissionNames());
			
			return authorizationInfo;
		}
		return null;
	}

	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(
			AuthenticationToken authenticationToken) throws AuthenticationException {
		//使用用户名或密码认证方式
				UsernamePasswordToken token = (UsernamePasswordToken) authenticationToken;
				Account account = accountService.findByName(token.getUsername());
				
				if(account != null) {
					return new SimpleAuthenticationInfo(account.getUsername(),account.getPassword(),getName());
				}
		return null;
	}

}
