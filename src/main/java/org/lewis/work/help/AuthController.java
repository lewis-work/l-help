package org.lewis.work.help;

import java.sql.SQLException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/auth")
public class AuthController {

	@RequestMapping("/success")
	public String success(Model model) {
		return "success";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String testConn(@RequestParam(value = "sn") String sn, @RequestParam(value = "pwd") String pwd)
			throws ClassNotFoundException, SQLException {
		Auth.adAuth(sn, pwd);

		return "redirect:/success.jsp";
	}

}
