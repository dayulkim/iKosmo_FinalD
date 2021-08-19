<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- Body-->
    
      <!-- Page Title-->
      <div class="page-title-overlap pt-4"  style="margin-top: 8rem; background-color:#F2F3F4;">
        <div class="container d-lg-flex justify-content-between py-2 py-lg-3">
          <div class="order-lg-2 mb-3 mb-lg-0 pt-lg-2">
            <nav aria-label="breadcrumb">
              <ol class="breadcrumb flex-lg-nowrap justify-content-center justify-content-lg-start">
                <li class="breadcrumb-item"><a class="text-nowrap" href="index.html"><i class="fas fa-address-card opacity-60"></i>&nbsp;&nbsp;마이페이지</a></li>
              </ol>
            </nav>
          </div>
          <div class="order-lg-1 pe-lg-4 text-center text-lg-start">
            <h1 class="h3 mb-0" style="font-family: NanumGothic-Bold;">마이페이지</h1>
          </div>
        </div>
      </div>
      <div class="container pb-5 mb-2 mb-md-4">
        <div class="row">
          <!-- Sidebar-->
          <aside class="col-lg-4 pt-4 pt-lg-0 pe-xl-5">
            <div class="bg-white rounded-3 shadow-lg pt-1 mb-5 mb-lg-0">
              <div class="d-md-flex justify-content-between align-items-center text-center text-md-start p-4">
                <div class="d-md-flex align-items-center">
                  <div class="img-thumbnail rounded-circle position-relative flex-shrink-0 mx-auto mb-2 mx-md-0 mb-md-0" style="width: 3rem;"><img class="rounded-circle" src="${memvo.mem_profile}" alt="${memvo.mem_id}"></div>
                  <div class="ps-md-3">
                    <h3 class="fs-base mb-0">${memvo.mem_name}</h3><span class="text-accent fs-sm">${memvo.mem_id}</span>
                  </div>
                </div><a class="btn btn-primary d-lg-none mb-2 mt-3 mt-md-0" href="#account-menu" data-bs-toggle="collapse" aria-expanded="false"><i class="fas fa-user-circle"></i>&nbsp;&nbsp;마이페이지 메뉴</a>
              </div>
              <div class="d-lg-block collapse" id="account-menu">
              	<div class="bg-secondary px-4 py-3">
                  <h3 class="fs-sm mb-0 text-muted">MY정보</h3>
                </div>
                <ul class="list-unstyled mb-0">
                  <li class="border-bottom mb-0"><a class="nav-link-style d-flex align-items-center px-4 py-3" href="mypage"><i class="fas fa-info-circle opacity-60"></i>&nbsp;&nbsp;기본정보</a></li>
                  <li class="border-bottom mb-0"><a class="nav-link-style d-flex align-items-center px-4 py-3" href="survey"><i class="fas fa-poll opacity-60"></i>&nbsp;&nbsp;추가정보</a></li>
                </ul>
                <div class="bg-secondary px-4 py-3">
                  <h3 class="fs-sm mb-0 text-muted">MY쇼핑</h3>
                </div>
                <ul class="list-unstyled mb-0">
                  <li class="border-bottom mb-0"><a class="nav-link-style d-flex align-items-center px-4 py-3" href="cart"><i class="fas fa-shopping-cart opacity-60"></i>&nbsp;&nbsp;장바구니</a></li>
                  <li class="border-bottom mb-0"><a class="nav-link-style d-flex align-items-center px-4 py-3" href="orders"><i class="far fa-credit-card opacity-60"></i>&nbsp;&nbsp;구매내역</a></li>
                </ul>
                <div class="bg-secondary px-4 py-3">
                  <h3 class="fs-sm mb-0 text-muted">MY커뮤니티</h3>
                </div>
                <ul class="list-unstyled mb-0">
                  <li class="border-bottom mb-0"><a class="nav-link-style d-flex align-items-center px-4 py-3" href="scrapbook"><i class="fas fa-bookmark opacity-60"></i>&nbsp;&nbsp;스크랩북</a></li>
                  <li class="border-bottom mb-0"><a class="nav-link-style d-flex align-items-center px-4 py-3" href="myqna"><i class="fas fa-question-circle opacity-60"></i>&nbsp;&nbsp;나의 질문과 답변</a></li>
                </ul>
                <div class="bg-secondary px-4 py-3">
                  <h3 class="fs-sm mb-0 text-muted">MY친구</h3>
                </div>
                <ul class="list-unstyled mb-0">
                  <li class="border-bottom mb-0"><a class="nav-link-style d-flex align-items-center px-4 py-3" href="friends_queue"><i class="fas fa-user-clock opacity-60"></i>&nbsp;&nbsp;친구 대기 목록</a></li>
                  <li class="border-bottom mb-0"><a class="nav-link-style d-flex align-items-center px-4 py-3" href="friends_list"><i class="fas fa-user-friends opacity-60"></i>&nbsp;&nbsp;나의 친구 목록</a></li>
                </ul>
              </div>
            </div>
          </aside>
          <!-- Content  -->
          <section class="col-lg-8">
			<ul class="nav nav-tabs justify-content-center" role="tablist">
			  <li class="nav-item">
			    <a href="#" class="nav-link" data-bs-toggle="tab" role="tab"><i class="fas fa-couch"></i>&nbsp;&nbsp;상품</a>
			  </li>
			  <li class="nav-item">
			    <a href="#" class="nav-link" data-bs-toggle="tab" role="tab"><i class="fas fa-edit"></i>&nbsp;&nbsp;집들이</a>
			  </li>
			</ul>
			
                <!-- Product-->
                <div class="d-block d-sm-flex align-items-center py-4 border-bottom"><a class="d-block position-relative mb-3 mb-sm-0 me-sm-4 ms-sm-0 mx-auto" href="marketplace-single.html" style="width: 12.5rem;"><img class="rounded-3" src="img/marketplace/products/th02.jpg" alt="Product"><span class="btn btn-icon btn-danger position-absolute top-0 end-0 py-0 px-1 m-2" data-bs-toggle="tooltip" title="Remove from Favorites"><i class="ci-trash"></i></span></a>
                  <div class="text-center text-sm-start">
                    <h3 class="h6 product-title mb-2"><a href="marketplace-single.html">UI Isometric Devices Pack (PSD)</a></h3>
                    <div class="d-inline-block text-accent">$23.<small>00</small></div><a class="d-inline-block text-accent fs-ms border-start ms-2 ps-2" href="marketplace-vendor.html">by uidesigner</a>
                    <div class="d-sm-flex align-items-center pt-2">
                      <select class="form-select form-select-sm my-1 me-2">
                        <option>Standard license</option>
                        <option>Extended license</option>
                      </select>
                      <button class="btn btn-primary btn-sm mx-auto mx-sm-0 my-2" type="button"><i class="ci-cart me-1"></i>Add to Cart</button>
                    </div>
                  </div>
                </div>
                <!-- Product-->
                <div class="d-block d-sm-flex align-items-center py-4 border-bottom"><a class="d-block position-relative mb-3 mb-sm-0 me-sm-4 ms-sm-0 mx-auto" href="marketplace-single.html" style="width: 12.5rem;"><img class="rounded-3" src="img/marketplace/products/th06.jpg" alt="Product"><span class="btn btn-icon btn-danger position-absolute top-0 end-0 py-0 px-1 m-2" data-bs-toggle="tooltip" title="Remove from Favorites"><i class="ci-trash"></i></span></a>
                  <div class="text-center text-sm-start">
                    <h3 class="h6 product-title mb-2"><a href="marketplace-single.html">Project Devices Showcase (PSD)</a></h3>
                    <div class="d-inline-block text-accent">$18.<small>00</small></div><a class="d-inline-block text-accent fs-ms border-start ms-2 ps-2" href="marketplace-vendor.html">by pixels</a>
                    <div class="d-sm-flex align-items-center pt-2">
                      <select class="form-select form-select-sm my-1 me-2">
                        <option>Standard license</option>
                        <option>Extended license</option>
                      </select>
                      <button class="btn btn-primary btn-sm mx-auto mx-sm-0 my-2" type="button"><i class="ci-cart me-1"></i>Add to Cart</button>
                    </div>
                  </div>
                </div>
                <!-- Product-->
                <div class="d-block d-sm-flex align-items-center py-4 border-bottom"><a class="d-block position-relative mb-3 mb-sm-0 me-sm-4 ms-sm-0 mx-auto" href="marketplace-single.html" style="width: 12.5rem;"><img class="rounded-3" src="img/marketplace/products/th01.jpg" alt="Product"><span class="btn btn-icon btn-danger position-absolute top-0 end-0 py-0 px-1 m-2" data-bs-toggle="tooltip" title="Remove from Favorites"><i class="ci-trash"></i></span></a>
                  <div class="text-center text-sm-start">
                    <h3 class="h6 product-title mb-2"><a href="marketplace-single.html">Top View Smartwatch 3D Render</a></h3>
                    <div class="d-inline-block text-accent">$19.<small>00</small></div><a class="d-inline-block text-accent fs-ms border-start ms-2 ps-2" href="marketplace-vendor.html">by modello</a>
                    <div class="d-sm-flex align-items-center pt-2">
                      <select class="form-select form-select-sm my-1 me-2">
                        <option>Standard license</option>
                        <option>Extended license</option>
                      </select>
                      <button class="btn btn-primary btn-sm mx-auto mx-sm-0 my-2" type="button"><i class="ci-cart me-1"></i>Add to Cart</button>
                    </div>
                  </div>
                </div>
                <!-- Product-->
                <div class="d-block d-sm-flex align-items-center pt-4 pb-2"><a class="d-block position-relative mb-3 mb-sm-0 me-sm-4 ms-sm-0 mx-auto" href="marketplace-single.html" style="width: 12.5rem;"><img class="rounded-3" src="img/marketplace/products/th07.jpg" alt="Product"><span class="btn btn-icon btn-danger position-absolute top-0 end-0 py-0 px-1 m-2" data-bs-toggle="tooltip" title="Remove from Favorites"><i class="ci-trash"></i></span></a>
                  <div class="text-center text-sm-start">
                    <h3 class="h6 product-title mb-2"><a href="marketplace-single.html">Gravity Devices UI Mockup (PSD)</a></h3>
                    <div class="d-inline-block text-accent">$15.<small>00</small></div><a class="d-inline-block text-accent fs-ms border-start ms-2 ps-2" href="marketplace-vendor.html">by pixels</a>
                    <div class="d-sm-flex align-items-center pt-2">
                      <select class="form-select form-select-sm my-1 me-2">
                        <option>Standard license</option>
                        <option>Extended license</option>
                      </select>
                      <button class="btn btn-primary btn-sm mx-auto mx-sm-0 my-2" type="button"><i class="ci-cart me-1"></i>Add to Cart</button>
                    </div>
                  </div>
                </div>
			
		  </section>
        </div>
      </div>
    </main>

    <!-- Back To Top Button--><a class="btn-scroll-top" href="#top" data-scroll><span class="btn-scroll-top-tooltip text-muted fs-sm me-2">Top</span><i class="btn-scroll-top-icon ci-arrow-up">   </i></a>
    <!-- Vendor scrits: js libraries and plugins-->
    <script src="vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="vendor/simplebar/dist/simplebar.min.js"></script>
    <script src="vendor/tiny-slider/dist/min/tiny-slider.js"></script>
    <script src="vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
    <!-- Main theme script-->
    <script src="js/theme.min.js"></script>