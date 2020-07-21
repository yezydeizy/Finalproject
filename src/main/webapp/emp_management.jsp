<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>직원정보 수정</title>
<script>
$(document).ready(function() {

    
    var readURL = function(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('.avatar').attr('src', e.target.result);
            }
    
            reader.readAsDataURL(input.files[0]);
        }
    }
    

    $(".file-upload").on('change', function(){
        readURL(this);
    });
});
</script>
<style>
</style>
  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom fonts for this template -->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

  <!-- Custom styles for this template -->
  <link href="css/clean-blog.min.css" rel="stylesheet">

</head>

<body>
<!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
    <div class="container">
      <a class="navbar-brand" href="index.html">직원 전용 web</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        Menu
        <i class="fas fa-bars"></i>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive" style="margin-left:900px;">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="index.html"  style="font-size: 22px;">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="about.html" style="font-size: 22px;">마이페이지</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="post.html" style="font-size: 22px;">실적 관리</a>
          </li>
           <li class="nav-item">
            <a class="nav-link" href="post.html" style="font-size: 22px;">업체조회</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="contact.html" style="font-size: 22px;">로그아웃</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  
  <!-- Page Header -->
  <header class="masthead"  style="background-image: url('resources/img/emp_main.png');">
    <div class="overlay"></div>
    <div class="container">
      <div class="row">;//
        <div class="col-lg-8 col-md-10 mx-auto">
          <div class="page-heading">
            <h1>마이페이지</h1>
            <span class="subheading"></span>
          </div>
        </div>
      </div>
    </div>
  </header>
  
  
  
  <div class="alert alert-secondary" role="alert" style="float:left; width:170px; height: 800px; margin-left: 250px;" >
			 <a href="update.do">정보 수정</a>
  </div>
<div class="tab-content" id="pills-tabContent">
<!-- -직원정보수정 시작 -->
  <div class="tab-pane fade show active" id="pills-mypage" role="tabpanel" aria-labelledby="pills-mypage-tab"><!-- Main Content -->
  <div class="container">
    <div class="row">
      <div class="col-lg-8 col-md-10 mx-auto">
        <p><h2>직원 정보 수정</h2></p>
        <!-- Contact Form - Enter your email address on line 19 of the mail/contact_me.php file to make this form work. -->
        <!-- WARNING: Some web hosts do not allow emails to be sent through forms to common mail hosts like Gmail or Yahoo. It's recommended that you use a private domain email address! -->
        <!-- To use the contact form, your site must be on a live web host with PHP! The form will not work locally! -->
        <form name="sentMessage" id="contactForm" novalidate>
        <div class="text-center">
        <img src="http://ssl.gstatic.com/accounts/ui/avatar_2x.png" class="avatar img-circle img-thumbnail" alt="avatar">
        <h6>프로필 사진</h6>
        <input type="file" class="text-center center-block file-upload">
      </div><br>
          <div class="control-group">
            <div class="form-group floating-label-form-group controls">
              <label>ID</label>
              <input type="text" class="form-control" id="id" value="20151293">
              <p class="help-block text-danger"></p>
            </div>
          </div>
          <div class="control-group">
            <div class="form-group floating-label-form-group controls">
              <label>이름</label>
              <input type="text" class="form-control" id="name" required data-validation-required-message="이름을 입력해주세요." value="이정민">
              <p class="help-block text-danger"></p>
            </div>
          </div>
          <div class="control-group">
            <div class="form-group col-xs-12 floating-label-form-group controls">
              <label>PWD</label>
              <input type="password" class="form-control" placeholder="비밀번호" id="pwd" required data-validation-required-message="비밀번호 입력을 해주세요.">
              <p class="help-block text-danger"></p>
            </div>
          </div>
          <div class="control-group">
            <div class="form-group floating-label-form-group controls">
              <label>PWD 확인</label>
              <input type="password" class="form-control" placeholder="비밀번호 확인" id="pwdcheck" required data-validation-required-message="비밀번호 확인을 해주세요.">
              <p class="help-block text-danger"></p>
            </div>
          </div>
           <div class="control-group">
            <div class="form-group floating-label-form-group controls">
              <label>연락처</label>
				<input type="tel" class="form-control" id="pwd" required data-validation-required-message="연락처를 입력해 주세요." value="010-7376-1733"><p class="help-block text-danger"></p>
            </div>
             <div class="control-group">
            <div class="form-group floating-label-form-group controls">
              <label>이메일</label>
				<input type="email" class="form-control" id="pwd" required data-validation-required-message="이메일을 입력해 주세요." value="ccmljh0211@gmail.com"><p class="help-block text-danger"></p>
            </div>
          </div>
          </div>
          <br>
          <div id="success"></div>
          <button type="submit" class="btn btn-primary" id="sendMessageButton">수정하기</button>
        </form>
      </div>
    </div>
  </div>
</div>
<!-- 정보수정페이지끝 -->

<!-- 직원실적관리 시작 -->
  <div class="tab-pane fade" id="pills-record" role="tabpanel" aria-labelledby="pills-record-tab">실적조회페이지</div>
  <!-- 직원 실적관리 끝 -->
  <div class="tab-pane fade" id="pills-blog" role="tabpanel" aria-labelledby="pills-blog-tab"></div>

  <hr>

  <!-- Footer -->
  <footer>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <ul class="list-inline text-center">
            <li class="list-inline-item">
              <a href="#">
                <span class="fa-stack fa-lg">
                  <i class="fas fa-circle fa-stack-2x"></i>
                  <i class="fab fa-twitter fa-stack-1x fa-inverse"></i>
                </span>
              </a>
            </li>
            <li class="list-inline-item">
              <a href="#">
                <span class="fa-stack fa-lg">
                  <i class="fas fa-circle fa-stack-2x"></i>
                  <i class="fab fa-facebook-f fa-stack-1x fa-inverse"></i>
                </span>
              </a>
            </li>
            <li class="list-inline-item">
              <a href="#">
                <span class="fa-stack fa-lg">
                  <i class="fas fa-circle fa-stack-2x"></i>
                  <i class="fab fa-github fa-stack-1x fa-inverse"></i>
                </span>
              </a>
            </li>
          </ul>
          <p class="copyright text-muted">Copyright &copy; Your Website 2020</p>
        </div>
      </div>
    </div>
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Contact Form JavaScript -->
  <script src="js/jqBootstrapValidation.js"></script>
  <script src="js/contact_me.js"></script>

  <!-- Custom scripts for this template -->
  <script src="js/clean-blog.min.js"></script>

</body>

</html>
