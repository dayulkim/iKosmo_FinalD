package kr.co.kosmo.mvc.aop;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.kosmo.mvc.service.LogServiceInter;
import kr.co.kosmo.mvc.vo.SearchLogVO;

@Component
@Aspect
public class LogAdvice {
	
	@Autowired
	private LogServiceInter logServiceInter;

	@Before("execution(* kr.co.kosmo.mvc.controller.*.search(..))")
	public void insertLogout(JoinPoint jp) {
		SearchLogVO vo = new SearchLogVO();
		Object[] fd = jp.getArgs();
		if(fd[0] instanceof String) {
			vo.setSlog_word((String)fd[0]);
		}
		if(fd[1] instanceof HttpSession) {
			HttpSession session = (HttpSession) fd[1];
//			vo.setSlog_idn(session.getAttribute("sessionID").toString());
			vo.setSlog_idn("test");
		}
		if(fd[2] instanceof HttpServletRequest) {
			HttpServletRequest request = (HttpServletRequest) fd[2];
			vo.setSlog_reip(request.getRemoteAddr());
			vo.setSlog_agent(request.getHeader("User-Agent"));
		}
		logServiceInter.insertSearchLog(vo);
	}
}
