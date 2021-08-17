package kr.co.kosmo.mvc.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.kosmo.mvc.service.FriendsServiceInter;
import kr.co.kosmo.mvc.vo.FriendsVO;

@Controller
public class FriendsController {
	
//	@Autowired
//	private FriendsServiceInter friendsServiceInter;
//	@RequestMapping
//	public String getFriendsList(Model m, HttpSession session) {
//		int mem_num = Integer.parseInt(session.getAttribute("sessionNum").toString());
//		List<FriendsVO> list = friendsServiceInter.getFriednsList(mem_num);
//		m.addAttribute("frilist", list);
//		return "member/friends_List";
//	}

}
