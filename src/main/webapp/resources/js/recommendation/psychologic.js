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
function addStepButtons(index) {
	var buttonFormat = '';
	if (index) {
		buttonFormat += '<button type="button" class="btn btn-prev">이전 단계</button>';
	}
	if (index === (PsychologicTest.steps.length - 1)) {
		buttonFormat += '<button type="button" class="btn btn-search">내게 맞는 보험 찾기</button>';
	} else {
		buttonFormat += '<button type="button" class="btn btn-next">다음 단계</button>';
	}
	$('.btn-block').html(buttonFormat);
}

// 탭 클릭 이벤트 처리 함수
function stepTabEvent(clickedTab) {
	// 탭 관련 처리
	$('.step-tab').removeClass('on').addClass('shadow');
	$(clickedTab).removeClass('shadow').addClass('on');
	// 탭에 대한 내용 표시
	var index = $(clickedTab).index();
	$('.form-area').removeClass('on');
	$('.form-area').eq(index).addClass('on');
	// 단계 관련 버튼 표시
	addStepButtons(index);
}

$('.step-tab').click(function(){
	stepTabEvent(this);
});