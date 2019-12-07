package cn.xdl.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.xdl.bean.Emp;

public interface EmpDao {
	
	/**
	 * �����˺������ѯ����
	 */
	Emp findByNoAndPass(@Param("no") String no, @Param("password") String password);
	/**
	 * ����һ��Ա������
	 */
	int insertEmp(Emp e);
	/**
	 * ��ѯ����
	 */
	List<Emp> findAll();
}
