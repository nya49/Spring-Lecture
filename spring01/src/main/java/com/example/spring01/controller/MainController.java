package com.example.spring01.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.example.spring01.model.dto.ProductDTO;


@Controller
public class MainController {
	
	// URL pattern mapping 으로 get이나 post방식 모두 가능
	@RequestMapping("/")
	public String main(Model model) {
		// model : 데이터를 담을 그릇 역할, map(키, 값)
		// model.addAttribute("변수", "값")
		model.addAttribute("message", "저의 홈페이지 입니다.");
		return "main";
	}
	
	@RequestMapping(value="gugu.do", method=RequestMethod.GET)
	public String gugu(int dan, Model model) {
		String result = "";
		for(int i=1; i<=9; i++) {
			result += dan + "X" + i + "=" + (dan*i) + "<br>";
		}
		model.addAttribute("result", result);
		return "test/gugu";
	}
	/*public String gugu(Model model) {
		int dan = 7;
		String result = "";
		for(int i=1; i<=9; i++) {
			result += dan + "X" + i + "=" + (dan*i) + "<br>";
		}
		model.addAttribute("result", result);
		return "test/gugu";
	}*/
	
	@RequestMapping("test")
	// void 면 리턴타입 RequestMapping과 동일한 페이지로 이동
	public void test() {
		
	}
	
	// test/doA 매핑시키기
	@RequestMapping("test/doA")
	public String doA(Model model) {
		model.addAttribute("message","홈페이지 방문을 환영합니다.");
		return "test/doB";
	}
	
	@RequestMapping("test/doB")
	public void doB() {
		System.out.println("하이");
	}
	
	// ModelAndView 로 객체와 출력 페이지를 함께 가지고 전달
	// Model : 데이터 저장소, view : 출력 화면
	// 데이터와 포워드할 정보를 함께 전달
	// redirect : 주소가 바뀌면서 소량의 데이터 전달, get 방식
	// forward : 주소가 그래도 화면 전환, 대량의 데이터 전달
	
	@RequestMapping("test/doC")
	public ModelAndView doC() {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("product", new ProductDTO("샤프", 1000));
		return new ModelAndView("test/doC", "map", map);
	}
}
