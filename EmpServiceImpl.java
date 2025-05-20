package com.test.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.dao.EmpDao;
import com.test.model.EmpModel;
import com.test.model.LoginModel;

import jakarta.transaction.Transactional;

@Service
public class EmpServiceImpl implements Empservice
{
	@Autowired
	EmpDao dao;

    @Transactional
	@Override
	public List<EmpModel> doLogin(LoginModel lm) {
		// TODO Auto-generated method stub
		return dao.doLogin(lm);
	}

    @Transactional
	@Override
	public void saveEmp(EmpModel em) 
    {
		// TODO Auto-generated method stub
	
    	dao.saveEmp(em);
	}

	@Transactional
    @Override
	public void updateEmp(EmpModel em)
	{
		// TODO Auto-generated method stub
	  dao.updateEmp(em);	
	}

	@Transactional
	@Override
	public void deleteEmp(int id) 
	{
		// TODO Auto-generated method stub
	
		dao.deleteEmp(id);
	}

	@Transactional
	@Override
	public EmpModel getEmpById(int id) {
		// TODO Auto-generated method stub
		return dao.getEmpById(id);
	}

	@Transactional
	@Override
	public List<EmpModel> getAllEmp()
	{
		// TODO Auto-generated method stub
		return dao.getAllEmp();
	}
}