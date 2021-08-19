<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- Body-->
    
      <!-- Page Title-->
      <div class="page-title-overlap pt-4"  style="margin-top: 8rem; background-color:#F2F3F4;">
        <div class="container d-lg-flex justify-content-center py-2 py-lg-3">
          <div class="order-lg-1 pe-lg-4 text-center text-lg-start">
            <h1 class="h3 mb-0" style="font-family: NANUMSQUARE_ACL;" align="center">질문과 답변</h1>
          </div>
          
        </div>
        <!-- 검색바 -->
          <div class="row">
               <div class="col-md-3 mb-3">
                  <select class="form-select" id="searching" name="search">
                     <option value="0">키워드</option>
					 <option value="1">제목 + 내용</option>
                  </select>
               </div>
               <div class="col-md-8 mb-3">
                  <input class="form-control" type="text" id="key" name="key" placeholder="제목/타이틀, 키워드를 검색해보세요!" required>
               </div>
            </div>
      </div>

	
    <!-- Back To Top Button--><a class="btn-scroll-top" href="#top" data-scroll><span class="btn-scroll-top-tooltip text-muted fs-sm me-2">Top</span><i class="btn-scroll-top-icon ci-arrow-up">   </i></a>
    <!-- Vendor scrits: js libraries and plugins-->
    <script src="vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="vendor/simplebar/dist/simplebar.min.js"></script>
    <script src="vendor/tiny-slider/dist/min/tiny-slider.js"></script>
    <script src="vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
    <!-- Main theme script-->
    <script src="js/theme.min.js"></script>