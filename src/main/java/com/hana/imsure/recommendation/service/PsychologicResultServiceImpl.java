package com.hana.imsure.recommendation.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hana.imsure.recommendation.mapper.PsychologicResultMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

/**
 * 심리학적 보험 추천 결과 정보와 관련된 비즈니스 로직 수행을 위한 Service 객체
 * 
 * @author 김홍기
 */
@Log4j
@Service
@AllArgsConstructor
public class PsychologicResultServiceImpl implements PsychologicResultService{
	
	@Setter(onMethod_ = @Autowired)
	private PsychologicResultMapper mapper;

	//심리학적 보험 추천 결과 저장하기
	@Override
	public boolean savePsychologicResult(String userId, String extraversion, String agreeableness,
			String conscientiousness, String neuroticism, String openness, String insuranceId, String insuranceId2, String insuranceId3) {
		
		log.info("Saving PsychologicResult..." + userId);
		
		if (mapper.create(userId, extraversion, agreeableness, conscientiousness, neuroticism, openness, insuranceId, insuranceId2, insuranceId3) == 1) {
			return true;
		}
		return false;
	}

	//심리학적 보험 추천 결과 상세보기
	@Override
	public void psychologicResultDetail(String insuranceId) {
		log.info("View PsychologicResult..." + insuranceId);
		
		mapper.read(insuranceId);
	}
}
