<%@ page language="java" contentType="text/html; charset=utf-8" %>
<link rel="stylesheet" type="text/css" href="resources/css/recommendation/recommendation.common.css">
<link rel="stylesheet" type="text/css" href="resources/css/recommendation/recommendation.index.css">

<!-- header -->
<jsp:include page="../../includes/header.jsp"/>

<article class="container ng-scope" >
    <section id="recommend" class="wrapper row">
        <div class="forms step-area">
            <div class="bgChange">
                <ul class="nav nav-tabs tabType2">
                <!-- 선택했을때 이벤트 처리! -->
                    <li class="btn-tab01 on">1 STEP</li>
                    <li class="btn-tab02 shadow">2 STEP</li>
                    <li class="btn-tab03 shadow">3 STEP</li>
                    <li class="btn-tab02 shadow">4 STEP</li>
                    <li class="btn-tab02 shadow">5 STEP</li>
                </ul>
                <div class="form-area on">
                  <h1 class="likert-header">This is a Likert Scale survey</h1>
                  <form action="">
                    <label class="statement">This HTML Likert scale is easy to use.</label>
                    <ul class='likert'>
                      <li>
                        <input type="radio" name="likert" value="strong_agree">
                        <label>Strongly agree</label>
                      </li>
                      <li>
                        <input type="radio" name="likert" value="strong_agree">
                        <label>Agree</label>
                      </li>
                      <li>
                        <input type="radio" name="likert" value="strong_agree">
                        <label>Neutral</label>
                      </li>
                      <li>
                        <input type="radio" name="likert" value="disagree">
                        <label>Disagree</label>
                      </li>
                      <li>
                        <input type="radio" name="likert" value="strong_agree">
                        <label>Strongly disagree</label>
                      </li>
                    </ul>
                    <label class="statement">It's clear that this is a responsive design.</label>
                    <ul class='likert'>
                      <li>
                        <input type="radio" name="likert" value="strong_agree">
                        <label>Strongly agree</label>
                      </li>
                      <li>
                        <input type="radio" name="likert" value="strong_agree">
                        <label>Agree</label>
                      </li>
                      <li>
                        <input type="radio" name="likert" value="strong_agree">
                        <label>Neutral</label>
                      </li>
                      <li>
                        <input type="radio" name="likert" value="disagree">
                        <label>Disagree</label>
                      </li>
                      <li>
                        <input type="radio" name="likert" value="strong_agree">
                        <label>Strongly disagree</label>
                      </li>
                    </ul>
                    <label class="statement">Codepen.io is an excellent tool for prototyping.</label>
                    <ul class='likert'>
                      <li>
                        <input type="radio" name="likert" value="strong_agree">
                        <label>Strongly agree</label>
                      </li>
                      <li>
                        <input type="radio" name="likert" value="strong_agree">
                        <label>Agree</label>
                      </li>
                      <li>
                        <input type="radio" name="likert" value="strong_agree">
                        <label>Neutral</label>
                      </li>
                      <li>
                        <input type="radio" name="likert" value="disagree">
                        <label>Disagree</label>
                      </li>
                      <li>
                        <input type="radio" name="likert" value="strong_agree">
                        <label>Strongly disagree</label>
                      </li>
                    </ul>
                    <label class="statement">Pete Fecteau is incredibly smart and handsome.</label>
                    <ul class='likert'>
                      <li>
                        <input type="radio" name="likert" value="strong_agree">
                        <label>Strongly agree</label>
                      </li>
                      <li>
                        <input type="radio" name="likert" value="strong_agree">
                        <label>Agree</label>
                      </li>
                      <li>
                        <input type="radio" name="likert" value="strong_agree">
                        <label>Neutral</label>
                      </li>
                      <li>
                        <input type="radio" name="likert" value="disagree">
                        <label>Disagree</label>
                      </li>
                      <li>
                        <input type="radio" name="likert" value="strong_agree">
                        <label>Strongly disagree</label>
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
    </section>
</article>

<style>
h1.likert-header {
  padding-left:4.25%;
  margin:20px 0 0;
}
form .statement {
  display:block;
  font-size: 14px;
  font-weight: bold;
  padding: 30px 0 0 4.25%;
  margin-bottom:10px;
}
form .likert {
  list-style:none;
  width:100%;
  margin:0;
  padding:0 0 35px;
  display:block;
  border-bottom:2px solid #efefef;
}
form .likert:last-of-type {border-bottom:0;}
form .likert:before {
  content: '';
  position:relative;
  top:11px;
  left:9.5%;
  display:block;
  background-color:#efefef;
  height:4px;
  width:78%;
}
form .likert li {
  display:inline-block;
  width:19%;
  text-align:center;
  vertical-align: top;
}
form .likert li input[type=radio] {
  display:block;
  position:relative;
  top:0;
  left:50%;
  margin-left:-6px;
  
}
form .likert li label {width:100%;}
form .buttons {
  margin:30px 0;
  padding:0 4.25%;
  text-align:right
} 
form .buttons button {
  padding: 5px 10px;
  background-color: #67ab49;
  border: 0;
  border-radius: 3px;
}
form .buttons .clear {background-color: #e9e9e9;}
form .buttons .submit {background-color: #67ab49;} 
form .buttons .clear:hover {background-color: #ccc;}
form .buttons .submit:hover {background-color: #14892c;} 
</style>