<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<link rel="stylesheet" type="text/css" href="resources/css/recommendation/recommendation.common.css">
<link rel="stylesheet" type="text/css" href="resources/css/recommendation/recommendation.index.css">
<link rel="stylesheet" type="text/css" href="resources/css/recommendation/recommendation.themes.css">
<link rel="stylesheet" type="text/css" href="resources/css/recommendation/recommendation.custom.css">


<!-- header -->
<jsp:include page="../../includes/header.jsp"/>

<article class="container ng-scope" >
    <section id="recommend" class="wrapper row">
        <div class="col-sm-6 forms step-area" style="min-height: 589px;">
            <div class="bgChange">
                <ul class="nav nav-tabs tabType2">
                <!-- 선택했을때 이벤트 처리! -->
                    <li class="btn-tab01 shadow">1 STEP</li>
                    <li class="btn-tab02 on">2 STEP</li>
                </ul>
                <div class="form-area on">
                    <form class="form-horizontal ng-pristine ng-valid ng-valid-maxlength" role="form">
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="user" >이름</label>
                            <div class="col-sm-10 input-area" >
                                <input type="text"  class="form-control ng-pristine ng-untouched ng-valid ng-not-empty ng-valid-maxlength" id="user" ng-model="inName" maxlength="12" ng-maxlength="12" placeholder="이름을 입력하세요" kr-input="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" >성별</label>
                            <ul class="col-sm-10 sex" >
                                <li class="custom-li-left" >
                                    <input type="radio" id="male"name="gender" value="남자">
                                    <label for="male" >남자</label>
                                </li>
                                <li class="custom-li-right">
                                    <input type="radio" id="female"name="gender" value="여자">
                                    <label for="female" >여자</label>
                                </li>

                            </ul>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="birth-d">생년월일</label>
                            <div class="col-sm-10 input-area">
                                <input type="text" class="form-control onlyNumber ng-pristine ng-untouched ng-valid ng-not-empty ng-valid-maxlength" id="birth-d" ng-model="inAge" maxlength="8" placeholder="예) 1990212" ng-blur="ageCheck()">
                                <p class="notice is-pl">
                                    <small>
                                        주민등록상의 생년월일을 입력하세요<br>
                                    </small>
                                </p>
                            </div>
                        </div>
                        <!-- style="display: none;"추가 -->
                       <div class="form-group">
                            <div class="form-group">
                              <label class="control-label col-sm-2" >결혼여부</label>
                              <ul class="col-sm-10 recommend-chk" >
                                <li class="custom-li-left">
                                  <input type="radio" id="married" name="marry" value="기혼">
                                  <label for="married" >기혼</label>
                                  </li>
                                <li class="custom-li-right">
                                  <input type="radio" id="single" name="marry" value="미혼">
                                  <label for="single" >미혼</label>
                                  </li>
                              </ul>
                            </div>
                            <!-- 결혼 '유' 선택했을 경우 추가 -->
                            <div class="form-group">
                              <label class="control-label col-sm-2" >자녀유무</label>
                              <ul class="col-sm-10 recommend-chk">
                                <li class="custom-li-left">
                                  <input type="radio" id="child-has" name="child" value="유">
                                  <label for="child-has" >유</label>
                                  </li>
                                <li class="custom-li-right">
                                  <input type="radio" id="child-none" name="child" value="무">
                                  <label for="child-none" >무</label>
                                  </li>
                              </ul>
                            </div>
                            <div class="form-group">
                                <div class="addBox">
                                    <select class="selectbox ng-pristine ng-untouched ng-valid ng-empty" ng-model="selectSex">
                                        <option value="" selected="selected">성별</option>
                                        <option value="남아">남아</option>
                                        <option value="여아">여아</option>
                                    </select>
                                    <input type="text" placeholder="예) 1990212" maxlength="8" ng-model="newAge" class="onlyNumber ng-pristine ng-untouched ng-valid ng-empty ng-valid-maxlength" ng-blur="addChild(selectSex, newAge)">
                                    <button>자녀추가</button>
                                </div>
                            </div>
                        </div>
                        <!-- 결혼 무 -->
                        <!-- style="display: block;"추가 -->
                        <div class="form-group" >
                            <div class="form-group">
                                <label class="control-label col-sm-2" >부양가족
                                    
                                </label>
                                <ul class="col-sm-10 recommend-chk">
                                    <li class="custom-li-left">
                                        <input type="radio" id="fam-has" name="family" value="유">
                                        <label for="fam-has" >유</label>
                                    </li>
                                    <li class="custom-li-right">
                                        <input type="radio" id="fam-none" name="family" value="무">
                                        <label for="fam-none" >무</label>
                                    </li>  
                                </ul>
                            </div>
                        </div> 
                    </form>
                    
                    <div class="btn-block btn-input">
                    <!-- style="display: none;" -->
                        <p class="notice errormsg" >
                            <small class="ng-binding" style="color: rgb(255, 0, 0);"></small>
                        </p>
                        <button class="btn btn-next next" ng-readonly="next1Check()">다음 단계</button>
                    </div>
                </div>
                
                
                <!-- step-2 -->
                <div class="form-area on">
                    <form class="form-horizontal form-type2 ng-pristine ng-valid ng-valid-maxlength" role="form">
                        <div class="form-group">
                            <label class="control-label col-sm-4" for="salary">월소득</label>
                            <div class="col-sm-8 input-area">
                                <input type="text" class="form-control onlyNumber ng-pristine ng-untouched ng-valid ng-not-empty ng-valid-maxlength" id="salary" ng-model="inSalary" maxlength="4" placeholder="예) 220">
                                <span>만원</span>
                                <p class="notice">
                                    <small>세금을 제외한 통장에 들어오는 금액을 만원 단위로 입력해 주세요.</small>
                                </p>
                            </div>
                        </div>
                        <!-- 암가족력이 있는지 물어보는거 추가 -->
                        <div class="form-group type-height">
                            <p class="control-label is-pl">직업군</p>
                            <ul class="jobs">
                                <li class="custom-li-left">
                                    <input type="radio" id="salarymen" name="joblist" value="근로소득자">
                                    <label for="salarymen" >근로소득자</label>
                                </li>
                                <li class="custom-li-left">
                                    <input type="radio" id="business" name="joblist" value="개인사업자">
                                    <label for="business" >개인사업자</label>
                                </li>
                                <li class="custom-li-left">
                                    <input type="radio" id="salarymen" name="joblist" value="근로소득자">
                                    <label for="salarymen" >근로소득자</label>
                                </li>
                                <li class="custom-li-left">
                                    <input type="radio" id="salarymen" name="joblist" value="근로소득자">
                                    <label for="salarymen" >근로소득자</label>
                                </li>
                                <li class="col-sm-6" ng-click="searchDisableRemove()">
                                    <label for="salarymen" class="radio type4 salarymen">근로소득자</label>
                                    <input type="radio" id="salarymen" name="joblist" ng-model="inJob" value="근로소득자" class="ng-pristine ng-untouched ng-valid ng-not-empty">
                                </li>
                                <li class="col-sm-6" ng-click="searchDisableRemove()">
                                    <label for="business" class="radio type4 business notice on">개인사업자<br>
                                        <small>(국민연금 지역가입자)</small>
                                    </label>
                                    <input type="radio" id="business" name="joblist" ng-model="inJob" value="개인사업자" class="ng-pristine ng-untouched ng-valid ng-not-empty">
                                </li>
                                <li class="col-sm-6" ng-click="searchDisableRemove()">
                                    <label for="housewife" class="radio type4 housewife">전업주부</label>
                                    <input type="radio" id="housewife" name="joblist" ng-model="inJob" value="전업주부" class="ng-pristine ng-untouched ng-valid ng-not-empty">
                                </li>
                                <li class="col-sm-6" ng-click="searchDisableRemove()">
                                    <label for="otherjobs" class="radio type4 otherjobs notice">공무원,교사,군인
                                        <small>(특수직역연금 가입자)</small>
                                    </label>
                                    <input type="radio" id="otherjobs" name="joblist" ng-model="inJob" value="공무원" class="ng-pristine ng-untouched ng-valid ng-not-empty">
                                </li>
                            </ul>
                            <p class="notice">
                                <small>보험상품, 보장금액, 기간산정을 위하여 필요한 정보입니다.</small>
                            </p>

                        </div>

                    </form>
                    <div class="btn-block btn-input">
                    <!-- style="display: none;" -->
                        <p class="notice errormsg" >
                            <small class="ng-binding" style="color: rgb(255, 0, 0);"></small>
                        </p>
                        <button class="btn btn-prev">이전 단계</button>
                        <button class="btn btn-search" ng-click="sendSugarResult()" ng-readonly="next2Checek()" ng-attr-title="{{next2buttonTitle}}" title="">내게 맞는 보험 찾기
                        </button>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-6 forms output step-txt" style="min-height: 589px;">
            <form role="form" class="ng-pristine ng-valid">
                <div class="form-txt-board">
                    <p class="txt-board">
                        <span class="info-txt typeName ng-binding">김땡땡</span> 님은<br>
                        <span class="info-txt ng-binding">여자</span> 이며,<br class="txt-board-br">
                        <span class="info-txt ng-binding">60</span> 세의,<br>
                        <span class="info-txt ng-binding">개인사업자</span> 이며,<br class="txt-board-br">
                        <span class="info-txt ng-binding">미혼</span> 입니다.
                    </p>
                    <div class="btn-block btn-output">
                        <button class="btn btn-search" id="btn-right-search" ng-click="sendSugarResult()" ng-readonly="next2Checek()" ng-attr-title="{{next2buttonTitle}}" title="" style="display: none;">내게 맞는 보험 찾기
                        </button>
                    </div>
                </div>
            </form>
            
        </div>
    </section>
</article>


<!-- JavaScript -->
<!-- Plugins -->


<script src="jquery-3.3.1.min.js">
$(document).ready(function(){
	console.log("여기 들어옴?")

	$('.ng-pristine ng-untouched ng-valid ng-not-emptygender').on('click', function(){
		var value = $(this).val;
		console.log(value);
	});

});
</script>
