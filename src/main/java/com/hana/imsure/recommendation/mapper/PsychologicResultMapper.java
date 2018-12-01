package com.hana.imsure.recommendation.mapper;

import com.hana.imsure.recommendation.domain.PsychologicResult;

/**
 * 심리학적 보험 추천 결과 정보와 관련된 Mapper 인터페이스
 * 
 * @author 김홍기
 */
public interface PsychologicResultMapper {
	//심리학적 보험 추천 결과 저장하기
	public void create(PsychologicResult psychologicResult);
}
