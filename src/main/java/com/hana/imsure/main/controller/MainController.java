package com.hana.imsure.main.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class MainController {
	
	@GetMapping("/")
	public String home() {
		
		log.debug("index.jsp called");
		
		return "index";
	}
	
	@GetMapping("/mainPage")
	public String mainPage() {
		
		log.debug("mainPage.jsp called");
		
		return "components/main/mainPage";
	}
	
	@GetMapping("/demographicPage")
	public String demographicPage() {
		
		log.debug("demographicPage.jsp called");
		
		return "components/recommendation/demographicPage";
	}
	
	@GetMapping("/demographicResultPage")
	public String demographicResultPage() {
		
		log.debug("demographicResultPage.jsp called");
		
		return "components/recommendation/demographicResultPage";
	}
		
	@GetMapping("/psychologicPage")
	public String psychologicPage() {
		
		log.debug("psychologicPage.jsp called");
		
		return "components/recommendation/psychologicPage";
	}
	
	@GetMapping("/psychologicResultPage")
	public String psychologicResultPage() {
		
		log.debug("psychologicResultPage.jsp called");
		
		return "components/recommendation/psychologicResultPage";
	}
	
	@PostMapping(value= "/user/recommend-based-on-psychological-features",
			consumes = "application/json; charset=UTF-8",
			produces = { MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<List<Map<String, String>>> psychologicFeatures(@RequestBody String email) {
		
		System.out.println("여기는 오나?");
		System.out.println("받은 이메일 : " + email );
		Map<String, String> map = new HashMap<>();
		List<Map<String, String>> result = new ArrayList<>();
		map.put("insuranceId", "26");
		map.put("insuranceName", "(무)행복knowhow연금보험 1형(기본형)");
		map.put("insuranceType", "연금보험");
		result.add(map);
		
		map.put("insuranceId", "27");
		map.put("insuranceName", "(무)행복knowhow연금보험 2형(무사망급부형");
		map.put("insuranceType", "연금보험");
		result.add(map);
		
		map.put("insuranceId", "26");
		map.put("insuranceName", "(무)행복knowhow즉시연금보험");
		map.put("insuranceType", "연금보험");
		result.add(map);

		//String jsonStr = new Gson().toJson(result);
		
		//System.out.println(jsonStr);
		System.out.println(result.toString());
		
		return new ResponseEntity<>(result, HttpStatus.OK);
	}
}
