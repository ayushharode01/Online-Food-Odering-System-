package com.test.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.mvc.method.annotation.ResponseEntityExceptionHandler;

@ControllerAdvice
public class ExceptionHandlerClass extends ResponseEntityExceptionHandler
{
	@ExceptionHandler(Exception.class)
	public ResponseEntity<String> handlerException(Exception e)
	{
		return new ResponseEntity<>("An unexpected error occured:"+e.getMessage(),HttpStatus.INTERNAL_SERVER_ERROR);
	}

}
