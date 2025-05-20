package com.test.dao;

import java.util.List;



import com.test.model.EmpModel;
import com.test.model.LoginModel;



public interface EmpDao
{
	
	public List<EmpModel> doLogin(LoginModel lm);
	  public void saveEmp(EmpModel em);
	  public void updateEmp(EmpModel em);
	  public void deleteEmp(int id);
	  public EmpModel getEmpById(int id);
	  public List<EmpModel> getAllEmp();
}
