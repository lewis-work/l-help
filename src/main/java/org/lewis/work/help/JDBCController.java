package org.lewis.work.help;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/jdbc")
public class JDBCController {

	@RequestMapping("/success")
	public String success(Model model) {
		return "success";
	}

	@RequestMapping(value = "/testConn", method = RequestMethod.GET)
	public String upload() {
		return "testConn";
	}

	@RequestMapping(value = "/testConn", method = RequestMethod.POST)
	public String testConn(@RequestParam(value = "driver") String driver, @RequestParam(value = "url") String url,
			@RequestParam(value = "user") String user, @RequestParam(value = "password") String password)
					throws ClassNotFoundException, SQLException {
		// 1.实例话驱动类
		Class.forName(driver);
		// 2.建立到数据库的连接
		Connection conn = DriverManager.getConnection(url, user, password);
		// 3.将数据发送到数据库中
		conn.createStatement();
		return "redirect:/success.jsp";
	}

}
