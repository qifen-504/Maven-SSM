package cn.xdl.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.xdl.bean.Emp;
import cn.xdl.service.EmpService;

@Controller
public class EmpController {
	@Autowired
	private EmpService service;
	@RequestMapping("/toReg.do")
	public String toReg() {
		return "reg";
	}

	@RequestMapping("/reg.do")
	@ResponseBody
	public boolean reg(Emp e) {
        System.out.println(e);
		int sum = service.reg(e);
		if(sum==1) {
			return true;
		}else {
			return false;
		}
	}
	@RequestMapping("toLogin.do")
	public String Login(){
		return "login";
	}
	@RequestMapping("/login.do")
	public String login(String no,String password,HttpServletRequest req) {
		Emp e = service.Login(no, password);
		if(e==null) {
			req.setAttribute("msg", "��½ʧ��");
			return "login";
		}else {
			req.getSession().setAttribute("emp", e);
			return  "main";
		}
	}
	@RequestMapping("/toMain.do")
	public String toMain(){
		return "main";
	}
	@RequestMapping("/emplist.do")
	@ResponseBody
	public  List<Emp>  mainList() {
		List<Emp> data = service.empList();
		return data;
	}
}
