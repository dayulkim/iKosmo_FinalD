package kr.co.kosmo.mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.kosmo.mvc.dao.SellerDao;
import kr.co.kosmo.mvc.vo.SellerVO;

@Service
public class SellerService {
	@Autowired
	private SellerDao dao;
	
	public SellerVO getSellerOne(int sel_num) {
		return dao.getSellerOne(sel_num);
	}

}
