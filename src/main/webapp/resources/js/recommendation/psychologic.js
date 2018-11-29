/**
 * 심리 추천 시 필요한 JavaScript 파일
 * 
 * @author 이승은
 */
// 질문과 응답 관련 엘리먼트를 동적으로 생성
PsychologicTest.addPossibleAnswers();
PsychologicTest.addQuestionsAndSteps();

// 첫 번째 탭 CSS 적용 및 내용 표시
stepTabEvent($('.step-tab:first-child'));

// step에 따른 버튼 생성 함수


// 탭 클릭 이벤트 처리 함수
function stepTabEvent(clickedTab) {
	$('.step-tab').removeClass('on').addClass('shadow');
	$(clickedTab).removeClass('shadow').addClass('on');
	var index = $(clickedTab).index();
	$('.form-area').removeClass('on');
	$('.form-area').eq(index).addClass('on');
}

$('.step-tab').click(function(){
	stepTabEvent(this);
});