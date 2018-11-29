/**
 * 동적으로 심리 검사 관련 화면을 그려주기 위한 JavScript 파일
 * 
 * @author 이승은
 */
// 객체 선언
var PsychologicTest = {};
// 각 STEP 형식
// STEP
PsychologicTest.steps = [
	{
		'stepName' : '1 STEP',
		'stepQuestion' : 'EXTRAVERSION'
	},
	{
		'stepName' : '2 STEP',
		'stepQuestion' : 'EXTRAVERSION'
	},
	{
		'stepName' : '3 STEP',
		'stepQuestion' : 'EXTRAVERSION'
	},
	{
		'stepName' : '4 STEP',
		'stepQuestion' : 'EXTRAVERSION'
	},
	{
		'stepName' : '5 STEP',
		'stepQuestion' : 'EXTRAVERSION'
	},
];
// 질문 형식
PsychologicTest.questionFormat = 
	'<label class="statement"><span class="question-number">###questionNumber###</span> ###questionText### </label>' +
    '<ul class="likert">' +
    	'###possibleAnswers###' +
    '</ul>';
// 응답 형식
PsychologicTest.answerFormat =
	'<li>' +
		'<label>' +
			'<input type="radio" name="###questionName###" value="###answerValue###">' +
			'<span></span>###answerText###' +
		'</label>' +
	'</li>';
// 가능한 응답 목록 (모든 질문에 대한 가능 응답 동일)
PsychologicTest.possibleAnswers = [
	{
		'answerValue' : '2',
		'answerText' : '매우 그렇다'
	},
	{
		'answerValue' : '1',
		'answerText' : '그렇다'
	},
	{
		'answerValue' : '0',
		'answerText' : '보통'
	},
	{
		'answerValue' : '-1',
		'answerText' : '그렇지 않다'
	},
	{
		'answerValue' : '-2',
		'answerText' : '전혀 그렇지 않다'
	},
];
// 기본 질문 형식에 가능한 응답을 붙여주는 함수
PsychologicTest.addPossibleAnswers = function addPossibleAnswers() {
	
	var possibleAnswers = PsychologicTest.possibleAnswers;
	var answers = '';
	
	for (var index in possibleAnswers) {
		
		var answerFormat = PsychologicTest.answerFormat;
		var answer = possibleAnswers[index];
		
		for ( var key in answer) {
			
			// 값을 변화시켜주기 위한 정규표현식
			var regExp = new RegExp('###' + key + '###', 'gm');
			answerFormat = answerFormat.replace(regExp, answer[key]);
		
		}

		answers += answerFormat;
		
	}
	
	var regExp = new RegExp('###possibleAnswers###', 'gm');
	PsychologicTest.questionFormat = PsychologicTest.questionFormat.replace(regExp, answers);
};
PsychologicTest.addQuestions = function addQuestions() {
	
}