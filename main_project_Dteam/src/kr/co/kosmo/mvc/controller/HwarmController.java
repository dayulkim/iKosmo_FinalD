package kr.co.kosmo.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HwarmController {
	
	@RequestMapping("/hwarm_write")
	public String housewarming_write() {
		return "housewarming/hwarm_write";
	}

}
