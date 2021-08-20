package kr.co.kosmo.mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import kr.co.kosmo.mvc.dao.SellerDaoInter;
import kr.co.kosmo.mvc.vo.SellerVO;

@Service
public class SellerService implements SellerServiceInter {
	@Autowired
	private SellerDaoInter sellerDaoInter;
	
	public SellerVO getSellerOne(int sel_num) {
		return sellerDaoInter.getSellerOne(sel_num);
	}

}
