package com.test.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.test.model.EmpModel;
import com.test.model.LoginModel;

import jakarta.persistence.EntityManager;


@Repository
public class EmpDaoImpl implements EmpDao
{
	@Autowired
	private EntityManager ema;
	

	public EntityManager getEma() {
		return ema;
	}

	public void setEma(EntityManager ema) {
		this.ema = ema;
	}

	@Override
	public List<EmpModel> doLogin(LoginModel lm)
	{
		// TODO Auto-generated method stub
		String hql="From EmpModel E where E.email='"+lm.getEmail()+"' and E.password='"+lm.getPassword()+"'";
		
		Session session=ema.unwrap(Session.class);
		Query query=session.createQuery(hql);
		List<EmpModel> list=query.list();
		List<EmpModel> list1=list.size()>0?list:null;
		return list1;
		
		
	}

	@Override
	public void saveEmp(EmpModel em)
	{
		// TODO Auto-generated method stub
		Session session=ema.unwrap(Session.class);
		session.save(em);
		
		
	}

	@Override
	public void updateEmp(EmpModel em)
	{
		// TODO Auto-generated method stub
		Session session=ema.unwrap(Session.class);
		session.saveOrUpdate(em);
		
	}

	@Override
	public void deleteEmp(int id) 
	{
		// TODO Auto-generated method stub
	  Session session=ema.unwrap(Session.class);
	  EmpModel emp=session.get(EmpModel.class,id );
	  session.delete(emp);
		
	}

	@Override
	public EmpModel getEmpById(int id) {
		// TODO Auto-generated method stub
		Session session=ema.unwrap(Session.class);
	return	session.get(EmpModel.class, id);
		
		
		
	}

	@Override
	public List<EmpModel> getAllEmp() {
		// TODO Auto-generated method stub
		Session session=ema.unwrap(Session.class);
		return session.createQuery("from EmpModel").list();
	}
	

}
