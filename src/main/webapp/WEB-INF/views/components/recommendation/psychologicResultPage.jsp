<%@ page language="java" contentType="text/html; charset=utf-8"%>
<link rel="stylesheet" type="text/css"
  href="resources/css/recommendation/recommendation.common.css">
<link rel="stylesheet" type="text/css"
  href="resources/css/recommendation/recommendation.index.css">
<link rel="stylesheet" type="text/css"
  href="resources/css/recommendation/recommendation.psychologic.css">

<!-- header -->
<jsp:include page="../../includes/header.jsp" />

<div class="container ng-scope">
  <div id="recommend" class="wrapper row">
    <div class="forms step-area">
      <h1 class="likert-header">심리 검사 결과</h1>
      
        <div class="container-fluid">
          <div class="row">
            <div class="col-sm-6" style="">
              <div class="container ">
                <div>그래프</div>
              </div>
            </div>
            <div class="col-sm-6">
              <div class="container">
                <div class="row">
                  <h2>하나생명 상품추천</h2>
                  <div class="row text-center">
                    <div class="col-sm-4">
                      <div class="thumbnail bg-warning">
                        <p>
                          <strong>상품명1</strong>
                        </p>
                        <p>Friday 27 November 2015</p>
                        <button class="btn" data-toggle="modal"
                          data-target="#myModal">상세보기</button>
                      </div>
                    </div>
                    <div class="col-sm-4">
                      <div class="thumbnail bg-warning">
                        <p>
                          <strong>상품명2</strong>
                        </p>
                        <p>Saturday 28 November 2015</p>
                        <button class="btn" data-toggle="modal"
                          data-target="#myModal">상세보기</button>
                      </div>
                    </div>
                    <div class="col-sm-4">
                      <div class="thumbnail bg-warning">

                        <p>
                          <strong>상품명3</strong>
                        </p>
                        <p>Sunday 29 November 2015</p>
                        <button class="btn" data-toggle="modal"
                          data-target="#myModal">상세보기</button>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

          <!-- JavaScript -->
          <!--<script src="resources/js/recommendation/PsychologicTest.js"></script>
          <script src="resources/js/recommendation/psychologic.js"></script>-->