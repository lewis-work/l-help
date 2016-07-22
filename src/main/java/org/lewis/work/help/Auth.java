package org.lewis.work.help;

import java.util.Hashtable;

import javax.naming.Context;
import javax.naming.NamingException;
import javax.naming.directory.DirContext;
import javax.naming.directory.InitialDirContext;

import org.apache.log4j.Logger;

public class Auth {
	private static final Logger logger = Logger.getLogger(Auth.class);

	private static String ldapURL = "LDAP://HQDC02.SF.COM:389";

	/**
	 * AD验证
	 * 
	 * @param userName
	 * @param passWord
	 * @return
	 */
	public static boolean adAuth(String userName, String passWord) {
		Hashtable<String, String> env = new Hashtable<String, String>();

		String adUserName = "sf\\" + userName;

		env.put(Context.INITIAL_CONTEXT_FACTORY, "com.sun.jndi.ldap.LdapCtxFactory");
		env.put(Context.PROVIDER_URL, ldapURL);
		env.put(Context.SECURITY_AUTHENTICATION, "simple"); // LDAP访问安全级别
		env.put(Context.SECURITY_PRINCIPAL, adUserName);
		env.put(Context.SECURITY_CREDENTIALS, passWord);
		DirContext ctx = null;

		boolean authFlag = false;

		try {
			ctx = new InitialDirContext(env);
			logger.info("AD认证成功");
			authFlag = true;
		} catch (NamingException e) {
			logger.error("AD认证失败", e);
		} catch (Exception e) {
			logger.error("AD认证出错", e);
		}

		// 关闭ldap，释放资源
		if (ctx != null) {
			try {
				ctx.close();
			} catch (NamingException e) {
				logger.error("关闭LDAP出错", e);
			}
		}

		return authFlag;
	}

}
