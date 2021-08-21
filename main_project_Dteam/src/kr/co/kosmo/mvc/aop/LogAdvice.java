package kr.co.kosmo.mvc.aop;

import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import kr.co.kosmo.mvc.service.LogServiceInter;
import kr.co.kosmo.mvc.vo.AdminHitVO;
import kr.co.kosmo.mvc.vo.LogVO;
import kr.co.kosmo.mvc.vo.SearchLogVO;

@Component
@Aspect
public class LogAdvice {

	@Autowired
	private LogServiceInter logServiceInter;

	@Before("execution(* kr.co.kosmo.mvc.controller.*.getSrchList(..))")
	public void searchLog(JoinPoint jp) {
		
		SearchLogVO vo = new SearchLogVO();
		Object[] fd = jp.getArgs();
		
		if (fd[0] instanceof String) {
			vo.setSlog_word((String)fd[0]);
		}
		
		if (fd[1] instanceof HttpSession) {
			HttpSession session = (HttpSession) fd[1];
			if (session.getAttribute("sessionID") == null) {
				vo.setSlog_idn("non-member");
			} else {
				vo.setSlog_idn(session.getAttribute("sessionID").toString());
			}			
		}
		
		if (fd[2] instanceof HttpServletRequest) {
			HttpServletRequest request = (HttpServletRequest) fd[2];
			vo.setSlog_reip(request.getRemoteAddr());
			vo.setSlog_agent(request.getHeader("User-Agent"));
		}		
		logServiceInter.insertSearchLog(vo);
	}

	// �α��� �α�
	@After("execution(* kr.co.kosmo.mvc.controller.*.login(..))")
	public void log(JoinPoint jp) {
		LogVO logvo = new LogVO();
		HttpServletRequest request;
		Object[] fd = jp.getArgs(); // �Ű����� �޾ƿ���
		// String id="";
		if (fd[2] instanceof HttpSession) {
			HttpSession session = (HttpSession) fd[2];
			if (session.getAttribute("sessionID") != null) { // �α��λ���
				request = (HttpServletRequest) fd[1];
				SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss E����");
				Date time = new Date();
				String sstime = format1.format(time);
				logvo.setId(session.getAttribute("sessionID").toString());
				logvo.setStatus("login");
				logvo.setReip(request.getLocalAddr()); // ip
				logvo.setSstime(sstime);
				logServiceInter.addlog(logvo);
			}
		}
	}

	// �α׾ƿ� �α�
	@Before("execution(* kr.co.kosmo.mvc.controller.*.logout(..))")
	public void insertLogout1(JoinPoint jp) {
		LogVO logvo = new LogVO();
		HttpServletRequest request;
		Object[] fd = jp.getArgs(); // �Ű����� �޾ƿ���
		String id = "";

		if (fd[0] instanceof HttpSession) {
			HttpSession session = (HttpSession) fd[0];
			id = session.getAttribute("sessionID").toString();
			request = (HttpServletRequest) fd[1];
			SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			Date time = new Date();
			String sstime = format1.format(time);
			logvo.setId(id);
			logvo.setStatus("logout");
			logvo.setReip(request.getLocalAddr()); // ip
			logvo.setSstime(sstime);
			logServiceInter.addlog(logvo);
		}
	}

	// ��ǰ �� ���� �������� ��ȸ���� �� ��ȸ���� ���� ������ �����ϴ� aop
	   @After("execution(* kr.co.kosmo.mvc.controller.*.interest(..))")
	   public void productHitLog(JoinPoint jp) {
	      AdminHitVO vo = new AdminHitVO();
	      // �Ű������� �迭�� �޾ƿ���
	      Object[] fd=jp.getArgs();
	      // ��ȸ�� ��ǰ�� ��ȣ�� �޾ƿ���

	      if(fd[2] instanceof Integer) {
	         System.out.println("��ȸ�� ��ǰ ��ȣ:"+fd[2]);
	         vo.setPro_num((int)fd[2]);

	      }
	      // ���� ���̵� �޾ƿ���
	      if(fd[1] instanceof HttpSession) {
	         HttpSession session = (HttpSession) fd[1];
	         if(session.getAttribute("sessionID")==null) {
	            vo.setMem_id("nonmember");
	         } else {
	            String id = session.getAttribute("sessionID").toString();	            
	            vo.setMem_id(id);
	         }
	      }
	      SimpleDateFormat format1 = new SimpleDateFormat ("yyyy-MM-dd HH:mm:ss");
	      Date time = new Date();
	      String ctime = format1.format(time);
	      vo.setInt_time(ctime);
	      // ��ǰ��ȣ�� ���̵� ���� vo�� ���ڷ� �Ͽ� insert �޼��� ����
	      logServiceInter.productHitLog(vo);
	   }

}
