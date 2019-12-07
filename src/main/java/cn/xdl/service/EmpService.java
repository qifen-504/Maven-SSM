package cn.xdl.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.xdl.bean.Emp;
import cn.xdl.mapper.EmpDao;

@Service("empService")
public class EmpService {
	@Autowired
	private EmpDao dao;
	public Emp Login(String no,String password) {
		return dao.findByNoAndPass(no, password); 
	}
	public int reg(Emp e) {
		try {
			return dao.insertEmp(e);
		} catch (Exception e1) {
		    e1.printStackTrace();
		}
		return  0;
	}
	public List<Emp> empList(){
		return dao.findAll();
	}
}
