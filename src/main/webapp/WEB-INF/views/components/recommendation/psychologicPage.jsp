<%@ page language="java" contentType="text/html; charset=utf-8" %>
<link rel="stylesheet" type="text/css" href="resources/css/recommendation/recommendation.common.css">
<link rel="stylesheet" type="text/css" href="resources/css/recommendation/recommendation.index.css">
<link rel="stylesheet" type="text/css" href="resources/css/recommendation/recommendation.psychologic.css">

<!-- header -->
<jsp:include page="../../includes/header.jsp"/>

<div class="container ng-scope" >
    <div id="recommend" class="wrapper row">
        <div class="forms step-area">
            <h1 class="likert-header">심리 검사하기</h1>
            <div class="bgChange">
                <ul class="nav nav-tabs tabType2">
                <!-- 선택했을때 이벤트 처리! -->
                    <li class="btn-tab01 step-tab on">1 STEP</li>
                    <li class="btn-tab02 step-tab shadow">2 STEP</li>
                    <li class="btn-tab03 step-tab shadow">3 STEP</li>
                    <li class="btn-tab04 step-tab shadow">4 STEP</li>
                    <li class="btn-tab05 step-tab shadow">5 STEP</li>
                </ul>
                <div class="form-area on">
                  <form action="">
                    <label class="statement"><span class="question-number">01</span> 나는 항상 타인에게 다정하게 대한다. </label>
                    <ul class='likert'>
                      <li>
                        <label>
                          <input type="radio" name="extraversion1" value="2">
                          <span></span>매우 그렇다
                        </label>
                      </li>
                      <li>
                        <label>
                          <input type="radio" name="extraversion1" value="1">
                          <span></span>그렇다
                        </label>
                      </li>
                      <li>
                        <label>
                          <input type="radio" name="extraversion1" value="0">
                          <span></span>보통
                        </label>
                      </li>
                      <li>
                        <label>
                          <input type="radio" name="extraversion1" value="-1">
                          <span></span>그렇지 않다
                        </label>
                      </li>
                      <li>
                        <label>
                          <input type="radio" name="extraversion1" value="-2">
                          <span></span>전혀 그렇지 않다
                        </label>
                      </li>
                    </ul>
                    <label class="statement"><span class="question-number">02</span> 나는 다른 사람들과 잘 어울린다. </label>
                    <ul class='likert'>
                      <li>
                        <label>
                          <input type="radio" name="extraversion2" value="2">
                          <span></span>매우 그렇다
                        </label>
                      </li>
                      <li>
                        <label>
                          <input type="radio" name="extraversion2" value="1">
                          <span></span>그렇다
                        </label>
                      </li>
                      <li>
                        <label>
                          <input type="radio" name="extraversion2" value="0">
                          <span></span>보통
                        </label>
                      </li>
                      <li>
                        <label>
                          <input type="radio" name="extraversion2" value="-1">
                          <span></span>그렇지 않다
                        </label>
                      </li>
                      <li>
                        <label>
                          <input type="radio" name="extraversion2" value="-2">
                          <span></span>전혀 그렇지 않다
                        </label>
                      </li>
                    </ul>
                    <label class="statement"><span class="question-number">03</span> 나는 항상 좋은 쪽으로 생각하기 위해 노력한다. </label>
                    <ul class='likert'>
                      <li>
                        <label>
                          <input type="radio" name="extraversion3" value="2">
                          <span></span>매우 그렇다
                        </label>
                      </li>
                      <li>
                        <label>
                          <input type="radio" name="extraversion3" value="1">
                          <span></span>그렇다
                        </label>
                      </li>
                      <li>
                        <label>
                          <input type="radio" name="extraversion3" value="0">
                          <span></span>보통
                        </label>
                      </li>
                      <li>
                        <label>
                          <input type="radio" name="extraversion3" value="-1">
                          <span></span>그렇지 않다
                        </label>
                      </li>
                      <li>
                        <label>
                          <input type="radio" name="extraversion3" value="-2">
                          <span></span>전혀 그렇지 않다
                        </label>
                      </li>
                    </ul>
                    <label class="statement"><span class="question-number">04</span> 나는 항상 좋은 쪽으로 생각하기 위해 노력한다. </label>
                    <ul class='likert'>
                      <li>
                        <label>
                          <input type="radio" name="extraversion1" value="2">
                          <span></span>매우 그렇다
                        </label>
                      </li>
                      <li>
                        <label>
                          <input type="radio" name="extraversion1" value="1">
                          <span></span>그렇다
                        </label>
                      </li>
                      <li>
                        <label>
                          <input type="radio" name="extraversion1" value="0">
                          <span></span>보통
                        </label>
                      </li>
                      <li>
                        <label>
                          <input type="radio" name="extraversion1" value="-1">
                          <span></span>그렇지 않다
                        </label>
                      </li>
                      <li>
                        <label>
                          <input type="radio" name="extraversion1" value="-2">
                          <span></span>전혀 그렇지 않다
                        </label>
                      </li>
                    </ul>
                    <label class="statement"><span class="question-number">03</span> 나는 항상 좋은 쪽으로 생각하기 위해 노력한다. </label>
                    <ul class='likert'>
                      <li>
                        <label>
                          <input type="radio" name="extraversion1" value="2">
                          <span></span>매우 그렇다
                        </label>
                      </li>
                      <li>
                        <label>
                          <input type="radio" name="extraversion1" value="1">
                          <span></span>그렇다
                        </label>
                      </li>
                      <li>
                        <label>
                          <input type="radio" name="extraversion1" value="0">
                          <span></span>보통
                        </label>
                      </li>
                      <li>
                        <label>
                          <input type="radio" name="extraversion1" value="-1">
                          <span></span>그렇지 않다
                        </label>
                      </li>
                      <li>
                        <label>
                          <input type="radio" name="extraversion1" value="-2">
                          <span></span>전혀 그렇지 않다
                        </label>
                      </li>
                    </ul>
                    <div class="buttons">
                      <button class="clear">Clear</button>
                      <button class="submit">Submit</button>
                    </div>
                  </form>
                </div>
                <div class="form-area step-2">
                    <form class="form-horizontal ng-pristine ng-valid ng-valid-maxlength" role="form">
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="user" style="width:10%;">이름</label>
                            <div style="width:70%;float:right" class="col-sm-10 input-area" >
                                <input type="text"  class="form-control ng-pristine ng-untouched ng-valid ng-not-empty ng-valid-maxlength" id="user" ng-model="inName" maxlength="12" ng-maxlength="12" placeholder="이름을 입력하세요" kr-input="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" style="width:10%;">성별</label>
                            <ul class="col-sm-10 sex" style="width:70%;float:right">
                                <li  style="width:50%;float:left">
                                    <label for="male" class="radio male" style="width:95%">남자</label>
                                    <input type="radio"  id="male" name="gender"  value="남자" class="ng-pristine ng-untouched ng-valid ng-not-empty">
                                </li>
                                <li  style="width:50%;float:right">
                                    <label for="female" class="radio female" style="width:95%" >여자</label>
                                    <input type="radio"  id="female" name="gender"  value="여자" class="ng-pristine ng-untouched ng-valid ng-not-empty">
                                </li>
                            </ul>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="birth-d" style="width:10%;">생년월일</label>
                            <div class="col-sm-10 input-area" style="width:70%;float:right">
                                <input type="text" class="form-control onlyNumber ng-pristine ng-untouched ng-valid ng-not-empty ng-valid-maxlength" id="birth-d" ng-model="inAge" maxlength="8" placeholder="예) 1990212" ng-blur="ageCheck()">
                                <p class="notice is-pl">
                                    <small>
                                        주민등록상의 생년월일을 입력하세요<br>
                                    </small>
                                </p>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" style="width:10%;">결혼여부</label>
                            <ul class="col-sm-10 recommend-chk" style="width:70%;float:right">
                                <li class="radio-inline" style="width:50%;float:left">
                                    <label for="married" class="radio type2 married" ng-class="{on:inMarry=='기혼'}">기혼</label>
                                    <input type="radio" id="married" name="marry" ng-model="inMarry" value="기혼" class="ng-pristine ng-untouched ng-valid ng-not-empty">
                                </li>
                                <li class="radio-inline" style="width:50%;float:right">
                                    <label for="single" class="radio type2 single on" ng-class="{on:inMarry=='미혼'}">미혼</label>
                                    <input type="radio" id="single" name="marry" ng-model="inMarry" value="미혼" class="ng-pristine ng-untouched ng-valid ng-not-empty">
                                </li>
                            </ul>
                        </div>
                        <div class="form-group sub-radio married" id="married_div" style="display: none;">
                            <div class="in-sub">
                                <p class="control-label col-sm-2">자녀유무</p>
                                <ul class="col-sm-10 recommend-chk">
                                    <li class="radio-inline">
                                        <label for="child-has" class="radio type3 addOn" ng-class="{on:inChild=='유'}">유</label>
                                        <input type="radio" id="child-has" name="child" ng-model="inChild" value="유" ng-checked="inChild=='유'" class="ng-pristine ng-untouched ng-valid ng-not-empty">
                                    </li>
                                    <li class="radio-inline">
                                        <label for="child-none" class="radio type3 addNot on" ng-class="{on:inChild=='무'}">무</label>
                                        <input type="radio" id="child-none" name="child" ng-model="inChild" value="무" ng-checked="inChild=='무'" class="ng-pristine ng-untouched ng-valid ng-not-empty" checked="checked">
                                    </li>
                                </ul>
                            </div>
                            <div class="add-area ng-hide" ng-show="inChild=='유'" id="child_list">
                                <ul class="childInfo">
                                    <!-- ngRepeat: child in childList -->
                                </ul>
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
                        <div class="form-group sub-radio single on" id="single_div" style="display: block;">
                            <div class="in-sub">
                                <p class="control-label col-sm-2 notice">부양가족
                                    <small>(부모,형제,조부모 등)</small>
                                </p>
                                <ul class="col-sm-10 recommend-chk">
                                    <li class="radio-inline">
                                        <label for="fam-has" class="radio type3 addOn" ng-class="{on:inFamily=='유'}">유</label>
                                        <input type="radio" id="fam-has" name="family" ng-model="inFamily" value="유" class="ng-pristine ng-untouched ng-valid ng-not-empty">
                                    </li>
                                    <li class="radio-inline">
                                        <label for="fam-none" class="radio type3 addNot on" ng-class="{on:inFamily=='무'}">무</label>
                                        <input type="radio" id="fam-none" name="family" ng-model="inFamily" value="무" class="ng-pristine ng-untouched ng-valid ng-not-empty">
                                    </li>
                                    
                                </ul>
                            </div>
                            <div class="add-area infamily ng-hide" ng-show="inFamily=='유'" id="family_input">
                                <label class="control-label col-sm-5" for="fam-use">부양가족을 위한 생활비로 얼마를 지출하십니까?</label>
                                <div class="col-sm-7 input-area">
                                    <input type="text" class="form-control onlyNumber ng-pristine ng-untouched ng-valid ng-empty ng-valid-maxlength" id="fam-use" ng-model="inExpense" ng-change="disableRemove()" placeholder="예) 120" maxlength="4">
                                    <span>만원</span>
                                </div>
                            </div>
                            <p class="notice type2">
                                <small>매월 생활비로 드리는 금액을 만단위로 입력해 주세요.</small>
                            </p>
                        </div>

                    </form>
                    <div class="btn-block btn-input">
                        <p class="notice errormsg" style="display: none;">
                            <small class="ng-binding" style="color: rgb(255, 0, 0);"></small>
                        </p>
                        <button class="btn btn-next next" ng-readonly="next1Check()">다음 단계</button>
                    </div>
                </div>
                <div class="form-area step-3">
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
                        <div class="form-group">
                            <label class="control-label col-sm-4 type2" for="employment">최초입사년도/<br>국민연급 가입시기</label>
                            <div class="col-sm-8 input-area">
                                <input type="text" class="form-control onlyNumber ng-pristine ng-untouched ng-valid ng-not-empty ng-valid-maxlength" id="employment" ng-model="inEmployment" maxlength="4" placeholder="예) 1990" ng-blur="jobStartCheck()">
                                <span>년도</span>
                                <p class="notice">
                                    <small>최초 근로소득 또는 사업소득이 발생한 년도를 기입하세요.</small>
                                </p>
                            </div>
                        </div>
                        <div class="form-group type-height">
                            <p class="control-label is-pl">직업군</p>
                            <ul class="jobs">
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
                        <p class="notice errormsg" style="display: none;">
                            <small class="ng-binding" style="color: rgb(255, 0, 0);"></small>
                        </p>
                        <button class="btn btn-prev">이전 단계</button>
                        <button class="btn btn-search" ng-click="sendSugarResult()" ng-readonly="next2Checek()" ng-attr-title="{{next2buttonTitle}}" title="">내게 맞는 보험 찾기
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<!-- JavaScript -->
<script src="resources/js/recommendation/PsychologicTest.js"></script>
<script src="resources/js/recommendation/psychologic.js"></script>