<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<link rel="stylesheet" type="text/css" href="resources/css/recommendation/recommendation.common.css">
<link rel="stylesheet" type="text/css" href="resources/css/recommendation/recommendation.index.css">


<!-- header -->
<jsp:include page="../../includes/header.jsp"/>

<div class="container ng-scope">
  <div id="recommend" class="wrapper row">
    <div class="col-sm-12" id="result-part">
      <div class="row">
        <div class="col-sm-6">
          <h4 class="recommendation-title">심리검사 결과</h4>
          <div class="graph">
            <canvas id="myChart" class="chartjs" width="600"
              height="400"></canvas>
          </div>
          <div class="graph">
            <canvas id="myChart" class="chartjs" width="600"
              height="400"></canvas>
          </div>
          <div class="graph">
            <canvas id="myChart" class="chartjs" width="600"
              height="400"></canvas>
          </div>
        </div>
        <div class="col-sm-6">
          <div class="title-wrapper">
            <h4 class="recommendation-header">
              <span class="application-name">&#8544'M SURE</span>에서 확신하는 <span class="recommendation-highlight">추천</span> 생명보험은?
            </h4>
            <button type="button" class="btn" data-toggle="modal" data-target="#algorithmDescriptionModal">Why SURE ?</button>
          </div>
          <!-- 추천 결과가 표시되는 영역 start -->
          <div class="recommendation-list">
            <div class="insurance-card" data-toggle="modal" data-target="#insuranceDetailModal">
              <input type="hidden" id="insuranceId" value="1">
              <div class="img-wrapper">
                <img alt="하나생명" src="resources/img/recommendation/hana_logo_small.png">
              </div>
              <div class="contents-wrapper">
                <h5 class="insurance-name">(무)행복knowhowTop3건강보험(보장성)</h5>
                <p class="insurance-type">질병보장보험</p>
              </div>
            </div>
          </div>
          <!-- 추천 결과가 표시되는 영역 end -->
        </div>
      </div>
    </div>
  </div>
</div>


<!-- JavaScript -->
<!-- Plugins -->



