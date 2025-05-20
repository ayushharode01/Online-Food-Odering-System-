package com.test.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.test.model.EmpModel;
import com.test.model.LoginModel;
import com.test.service.Empservice;

@RestController
@CrossOrigin
public class MainController
{
	@Autowired
	Empservice service;
  @GetMapping("/hi")
  public String getResponse()
  {
	  return "welcome is spring boot";
  }
  
  @PostMapping("save")
  public void save(@RequestBody EmpModel model)
  {
	 service.saveEmp(model);
  }
  
  @GetMapping("getemps")
  public List<EmpModel> getAllEmp()
  {
	  return service.getAllEmp();
	  
  }
  
  @PostMapping("update")
  public void update(@RequestBody EmpModel em)
  {
	  service.updateEmp(em);
  }
  @DeleteMapping("delete/{id}")
  public void delete(@PathVariable int id)
  {
	  System.out.println("id:"+id);
	  service.deleteEmp(id);
  }
  @GetMapping("getuserbyid/{id}")
  public EmpModel getuserbyId(@PathVariable int id)
  {
	  return service.getEmpById(id);
  }
  
  @GetMapping("/nullexception")
  public void getexception()
  {
	  String s=null;
	  System.out.println("length of string"+s.length());
  }
  
	/*
	 * @ExceptionHandler(NullPointerException.class) public
	 * ResponseEntity<String>Handlenullpointe(NullPointerException ex) { return new
	 * ResponseEntity<>("Exception:Null Pointer"+ex.getMessage(),HttpStatus.
	 * HTTP_VERSION_NOT_SUPPORTED); }
	 */
  @PostMapping("saveuser")
  public ResponseEntity<String>  saveuser(@RequestBody EmpModel model)
  {
	 service.saveEmp(model);
	 return ResponseEntity.ok("success");
	 
  }
  
  @PostMapping("dologin")
  public ResponseEntity<String> dologin(@RequestBody LoginModel lm)
  {
	  List<EmpModel> list=service.doLogin(lm);
	  if(list!=null)
	  {
	        return ResponseEntity.ok("success");
	    } 
	  else 
	  {
		  return ResponseEntity.ok("error");
	    }
	  
  }
  @GetMapping("userdetails")
  public List<EmpModel> userdetails()
  {
	  return service.getAllEmp();
	  
  }
  @DeleteMapping("deleteuser/{id}")
  public ResponseEntity<String> deleteuser(@PathVariable int id)
  {
	  System.out.println("id:"+id);
	  service.deleteEmp(id);
	  return ResponseEntity.ok("deleted");
  }
  
  @GetMapping("edituser/{id}")
  public EmpModel edituser(@PathVariable int id)
  {
	  return service.getEmpById(id);
  }

  @PostMapping("userupdate")
  public ResponseEntity<String> userupdate(@RequestBody EmpModel em)
  {
	  service.updateEmp(em);
	  return ResponseEntity.ok("success");
  }
  
  
}
