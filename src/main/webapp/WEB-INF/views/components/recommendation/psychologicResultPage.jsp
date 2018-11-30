<%@ page language="java" contentType="text/html; charset=utf-8"%>
<link rel="stylesheet" type="text/css"
  href="resources/css/recommendation/recommendation.common.css">
<link rel="stylesheet" type="text/css"
  href="resources/css/recommendation/recommendation.index.css">
<link rel="stylesheet" type="text/css"
  href="resources/css/recommendation/recommendation.psychologic.css">
<link rel="stylesheet" type="text/css"
  href="resources/css/recommendation/recommendation.custom.css">

<!-- header -->
<jsp:include page="../../includes/header.jsp" />

<div class="container ng-scope">
  <div id="recommend" class="wrapper row">

    <div class="col-sm-12" id="result-part">
      <div class="row">
        <div class="col-sm-6">
          <h4>심리검사 결과</h4>
          <div class="graph">
            <canvas id="myChart" class="chartjs" width="600"
              height="400"></canvas>
          </div>
        </div>
        <div class="col-sm-6">
          <h4>
            I'M SURE <span class="suggest-highlight">추천</span> 보험은?
          </h4>

          <button class="btn" data-toggle="modal" data-target="#myModal">상세보기</button>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="myModal" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <span class="modal-title">상품상세보기</span>
        <button type="button" class="close" data-dismiss="modal"
          style="width: 5%; margin-right: 0.5%">×</button>
      </div>
      <div class="modal-body">
        <div class="containner" id="modal-top">
          <img src="resources/img/recommendation/hana_logo_small.png" width="20%" height="20%"> 
          <span>(무)행복knowhowTop3건강보험(보장성)</span>
        </div>

        <div class="containner" id="modal-bottom">
          <div class='insurance-group'>
            <label>보험종류</label><span>질병보장보험</span>
          </div>
          <div class='insurance-group'>
            <label>보험종류</label><span>질병보장보험</span>
          </div>
          <div class='insurance-group'>
            <label>보험종류</label><span>질병보장보험</span>
          </div>
          <div class='insurance-group'>
            <label>보험종류</label><span>질병보장보험</span>
          </div>
          <div class='insurance-group'>
            <label>보험종류</label><span>질병보장보험</span>
          </div>
        </div>


      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger"
          data-dismiss="modal">
          <span class="glyphicon glyphicon-remove"></span> Cancel
        </button>
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