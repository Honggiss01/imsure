package com.hana.imsure.recommendation.controller;

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

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

/**
 * 심리학적 보험 추천 결과 정보와 관련된 기능을 위한 컨트롤러
 * 
 * @author 김홍기
 */
@Controller
@Log4j
@AllArgsConstructor
public class PsychologicResultController {

	//심리학적 보험 추천 페이지
	@GetMapping("/psychologicPage")
	public String psychologicPage() {
		
		log.debug("psychologicPage.jsp called");
		
		return "components/recommendation/psychologicPage";
	}
	
	//심리학적 보험 추천 결과 페이지
	@GetMapping("/psychologicResultPage")
	public String psychologicResultPage() {
		
		log.debug("psychologicResultPage.jsp called");
		
		return "components/recommendation/psychologicResultPage";
	}
	
	//심리학적 보험 추천 결과 저장하기
	@PostMapping(value= "/user/recommend-based-on-psychological-features",
			consumes = "application/json; charset=UTF-8",
			produces = { MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<List<Map<String, String>>> psychologicFeatures(@RequestBody String userId) {
		
		log.debug("사용자 번호 : " + userId);
		
		//파이썬으로 부터 전달 받은 데이터
		Map<String, String> map = new HashMap<>();
		List<Map<String, String>> result = new ArrayList<>();
		
		map.put("insuranceId", "26");
		map.put("insuranceName", "(무)행복knowhow연금보험 1형(기본형)");
		map.put("insuranceType", "연금보험");
		result.add(0, map);
		
		map.put("insuranceId", "27");
		map.put("insuranceName", "(무)행복knowhow연금보험 2형(무사망급부형");
		map.put("insuranceType", "연금보험");
		result.add(1, map);
		
		map.put("insuranceId", "28");
		map.put("insuranceName", "(무)행복knowhow즉시연금보험");
		map.put("insuranceType", "연금보험");
		
		return new ResponseEntity<>(result, HttpStatus.OK);
	}
}
