<%@ page language="java" contentType="text/html; charset=utf-8"%>
<link rel="stylesheet" type="text/css"
  href="resources/css/recommendation/recommendation.common.css">
<link rel="stylesheet" type="text/css"
  href="resources/css/recommendation/recommendation.index.css">
<link rel="stylesheet" type="text/css"
  href="resources/css/recommendation/recommendation.psychologic.css">
<link rel="stylesheet" type="text/css"
  href="resources/css/recommendation/recommendation.psychologic-result.css">

<!-- header -->
<jsp:include page="../../includes/header.jsp" />

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

<!-- 알고리즘 설명 모달 -->
<div class="modal fade" id="algorithmDescriptionModal" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <span class="modal-title">Why sure : &#8544'M SURE은 어떻게 확신할 수 있는가?</span>
        <button type="button" class="close" data-dismiss="modal"
          style="width: 5%; margin-right: 0.5%">&times;</button>
      </div>
      <div class="modal-body">
        <div class="containner" id="modal-top">
          
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn" data-dismiss="modal">닫기</button>
      </div>
    </div>
  </div>
</div>

<!-- 보험 상세 모달 -->
<div class="modal fade" id="insuranceDetailModal" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <span class="modal-title">보험상품 상세보기</span>
        <button type="button" class="close" data-dismiss="modal"
          style="width: 5%; margin-right: 0.5%">&times;</button>
      </div>
      <div class="modal-body">
        <div class="containner" id="modal-top">
          <img src="resources/img/recommendation/hana_logo_small.png" width="20%" height="20%"> 
          <span>(무)행복knowhowTop3건강보험(보장성)</span>
        </div>

        <div class="containner" id="modal-bottom">
          <div class='insurance-group'>
            <label>보험종류</label><div>질병보장보험</div>
          </div>
          <div class='insurance-group'>
            <label>가입나이</label><div>0~12세</div>
          </div>
          <div class='insurance-group'>
            <label>보장내용</label><div>고액암, 일반암, 교통장해, 일반장해, 입원비, 수술비 등등등등등등등등등등등ㄹ등</div>
          </div>
          <div class='insurance-group'>
            <label>보험종류</label><div>질병보장보험</div>
          </div>
          <div class='insurance-group'>
            <label>보험종류</label><div>질병보장보험</div>
          </div>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn" data-dismiss="modal">닫기 </button>
      </div>
    </div>
  </div>
</div>

<!-- JavaScript -->
<!-- <script src="resources/js/recommendation/PsychologicTest.js"></script>
<script src="resources/js/recommendation/psychologic.js"></script>
 -->
<script src="resources/js/common/Chart.js"></script>
<script>
	var ctx = document.getElementById("myChart");
	var data = {
		labels : [ '외향성', '친화성', '성실성', '신경성', '개방성' ],
		datasets : [ {
			label : '성격지표',
			data : [ -3, -6, 8, 6, 2 ],
			fill : true,
			backgroundColor : 'rgba(255, 0, 87, 0.2)',
			borderColor : '#ff0057',
			pointBackgroundColor : '#ff0057',
			pointBorderColor : '#fff',
			pointHoverBackgroundColor : '#fff',
			pointHoverBorderColor : '#ff0057',
		} ]
	}
	var options = {
		scale : {

			angleLines : {
				display : false
			},
			ticks : {
				beginAtZero : true,
				min : -10,
				max : 10,
				stepSize : 5
			},
			pointLabels : {
				fontSize : 13,
				fontColor : "black",
				padding : '5px'

			}
		},
		legend : {
			padding : "100"
		}

	}

	var myRadarChart = new Chart(ctx, {
		type : 'radar',
		data : data,
		options : options
	});
</script>