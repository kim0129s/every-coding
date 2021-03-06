<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>ECO_SIGNUP</title>

    <link href="resources/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    <link href="resources/css/sb-admin-2.min.css" rel="stylesheet">
      <!-- JS, Popper.js, and jQuery -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
    integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
    integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
    crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
    integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
    crossorigin="anonymous"></script>
<style>
	@media screen and (max-width:995px){
		.leftSigninfo{
			width:100% !important;
			float:auto;
		}
		.rightSigninfo{
			width:100% !important;
			float:auto;
		}
	}
</style>
</head>
<body class="sidebar-toggled" style="background:#002266;">
	
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-xl-10 col-lg-12 col-md-9">
                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <div class="row text-center">
                            <div class="col-lg-6" style="max-width: 100%; flex: 0 0 100%;">
                            	<div class="p-4">
                            		<!-- ?????? ????????? -->
                            		<div class="text-center"><a href="/main"><img src="resources/img/logo3.png" style="width:170px"></a></div>
                            	</div>
                            	
                                <div class="p-3" style="text-align:center;">
                                    <!-- ???????????? ??? ?????? -->
                                    <form class="user" name="signupForm" action="processSignUp" method="post" style="width:100%;">
                                    	<div class="leftSigninfo" style="float:left; width:45%;">
                                    			<div class="form-group" style="display:flex;">
                                        	<!-- ????????? ?????? -->
                                            		<input type="text" class="form-control form-control-user" name="id" id="id" onkeydown="inputIdCheck()" placeholder="?????????">
                                        			<div style="float:right; width:20%; margin-left:3%; margin-top:1%; text-align:center;">
                                        				<input type="button" class="btn btn-primary" value="??????" onclick="confirmId(this.form)">
                                        				<input type="hidden" name="idDuplication" value="idUncheck">
                                        			</div>
                                        		</div>
                                    		<div style="font-size:12px; text-align:left;">?????????????????? ??????, ??????, ??????????????? ????????? 7?????????????????? ??????????????????.</div>
                                        	<div class="form-group" style="display:flex;">
                                        	<!-- ???????????? ?????? -->
                                            	<input type="password" class="form-control form-control-user" name="pw" id="pw" placeholder="????????????">
                                            	<input type="password" class="form-control form-control-user" name="pw_check" id="pw_check" placeholder="??????????????????">
                                        	</div>
                                        	<!-- ?????? ?????? -->
                                        	<div class="form-group">
                                        		<input type="text" class="form-control form-control-user" name="name" id="name" placeholder="??????">
                                        	</div>
                                        	<!-- ????????? ?????? -->
                                        	<div class="form-group" style="display:flex;">
                                        		<input type="text" class="form-control form-control-user" name="nickname" id="nickname" onkeydown="inputNickCheck()" placeholder="?????????">
                                        		<div style="float:right; width:20%; margin-left:3%; margin-top:1%; text-align:center;">
                                        			<input type="button" class="btn btn-primary" value="??????" onclick="confirmNick(this.form)">
                                        			<input type="hidden" name="NickDuplication" value="NickUncheck">
                                        		</div>
                                        	</div>                                     
                                    	</div>
                                    	<div class="rightSigninfo" style="float:right; width:45%;">
                                        	<div class="form-group" style="margin-top:1%; display:flex;">
                                        		<div style="margin-top:2%;">???</div>
                                        		<div style="margin-top:2%;">???</div>
                                        		<div>&nbsp;</div>
                                        		<select name="year" id="year" title="??????" class="custom-select" onChange=setMonthBox()></select>
												<select name="month" id="month" title="???" class="custom-select" onChange="setDay()"></select>
												<select name="day" id="day" title="???" class="custom-select"></select>
                                        	</div>
                                        	<div class="form-group" style="display:flex;">
                                        		<input type="text" style="margin-top:2%; border-radius:50px; height:50px; font-size:12px;" class="form-control " name="email1" id="email1" placeholder="?????????">
                                        		<div>&nbsp;</div>
                                        		<h5 style="margin-top:5%;">@</h5>
                                        		<div>&nbsp;</div>
                                        		<input type="text" style="margin-top:2%; border-radius:50px; height:50px; font-size:12px;" class="form-control " name="email2" id="email2">
                                        		<select class="form-control" style="margin-top:2%; border-radius:50px; height:50px; font-size:12px;"  name="email_select" id="email_select" onChange="checkemailaddy();">
                                        			<option value="1" selected>????????????</option>
    												<option value="naver.com">naver.com</option>
    												<option value="kyonggi.ac.kr">kyonggi.ac.kr</option>
    												<option value="hanmail.com">hanmail.com</option>
    												<option value="gmail.com">gmail.com</option>
                                        		</select>
                                        	</div>
                                        	<div class="form-group">
                                        		<textarea style="rows:100%; text-align:left; resize:none;" id="intro_text" class="form-control form-control-user" name="intro" placeholder="???????????? ???????????????"></textarea>
                                        		(<strong id="intro_len">0</strong><span>/70???</span>)
                                        	</div>                                        
                                        </div>
                                      <div style="float:right; width:100%;">
                                      	<input type="button" class="btn btn-user btn-block" value="??????" onclick="location.href='loginPage' " style="margin-bottom:3%;float:left; display: inline; width : 45%; background:#002266; color:white">                                    
                                    	<input type="button" class="btn btn-user btn-block" value="????????????" onclick="checkSignup()" style="margin-top:0; float:right; display: inline; width : 45%; background:#002266; color:white;">                                                                              	
                                     </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <script src="js/sb-admin-2.min.js"></script>

	<script>
  		$(document).ready(function () {
    		setDateBox();
  		});
  		
  		function f_leapyear(yy)  //?????? ??????
  		{
  		 if (yy%4==0 && yy%100!=0 || yy%400==0)
  			return 1;
  		 else
  			return 0;
  		}
  		function setDay(){
  			var day;
  			var leafday;
    		var select_year = document.getElementById("year").value;
  			var select_month = document.getElementById("month").value;
  			var leafplus = f_leapyear(select_year);
  			
  			if(select_month == 1 || select_month == 3 || select_month == 5 || select_month == 7 ||
  					select_month == 8 || select_month == 10 || select_month == 12){
  				leafday = 31;
  			}else if(select_month == 4 || select_month == 6 || select_month == 9 || select_month == 11){
  				leafday = 30;
  			}else if(select_month == 2){
  				leafday = 28 + leafplus;
  			}
  			
  			$('#day').children('option:not(:first)').remove();
  			$("#day").append("<option value='' disabled selected hidden>???</option>");
  		 	for (var i = 1; i <= leafday; i++) {
      			$("#day").append("<option value='" + i + "'>" + i + " ???" + "</option>");
    		}
    		
  		}
  		
  		function setMonthBox(){
  			$('#day').children('option:not(:first)').remove();
  			$("#day").append("<option value='' disabled selected hidden>???</option>");
  			$('#month').children('option:not(:first)').remove();
  			$("#month").append("<option value='' disabled selected hidden>???</option>");
  			for (var i = 1; i <= 12; i++) {
      			$("#month").append("<option value='" + i + "'>" + i + " ???" + "</option>");
    		}
  		}
  		// select box ?????? , ??? ??????
  		function setDateBox() {
    		var dt = new Date();
    		var year = "";
   		    var com_year = dt.getFullYear();
   		    
   			 $("select option[value*='head_explain']").prop('disabled',true);
    		// ?????? ????????????
    		$("#year").append("<option value='' disabled selected hidden>???</option>");
    		// ?????? ???????????? ????????????  -100???????????? ????????????.
    		for (var y = (com_year); y >= (com_year - 100); y--) {
      			$("#year").append("<option value='" + y + "'>" + y + " ???" + "</option>");
    		}
    		
    		// ??? ????????????(1????????? 12???)
    		var month;
    		$("#month").append("<option value='' disabled selected hidden>???</option>");
    		//for (var i = 1; i <= 12; i++) {
      		//	$("#month").append("<option value='" + i + "'>" + i + " ???" + "</option>");
    		//}
    		// ??? ????????????(1????????? 31???)
    		var day;
    		$("#day").append("<option value='' disabled selected hidden>???</option>");
   		    //for (var i = 1; i <= 31; i++) {
      		//	$("#day").append("<option value='" + i + "'>" + i + " ???" + "</option>");
    		//}
  		}
  		
  		function checkemailaddy(){
          	if (email_select.value == '1') {
              email2.readOnly = false;
              email2.value = '';
              email2.focus();
          	}
          	else {
              email2.readOnly = true;
              email2.value = email_select.value;
          	}
   		}
  		
		function checkSignup(){
			var form = document.signupForm;
			
			//?????????
			if(form.idDuplication.value != "idCheck"){
				alert("????????? ??????????????? ????????????.");
				return false;
			}
			//??????
			var regPw = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{7,20}$/;
			if(form.pw.value==""){
				alert("??????????????? ??????????????????.");
				form.pw.focus();
				return false;
			}
			else if(form.pw.value.length>20 || form.pw.value.length<7){
				alert("??????????????? 7~20??? ????????? ?????????????????????.");
				form.pw.focus();
				return false;
			}
			else if(!regPw.test(form.pw.value)){
				alert("??????????????? ??????, ??????, ??????????????? ????????????????????????.");
				form.pw.focus();
				return false;
			}
			//return false ?????? -> else if ??????x
			if(form.pw.value!=form.pw_check.value){
				alert("??????????????? ??????????????????");
				form.pw.focus();
				return false;
			}
			//??????
			if(form.name.value==""){
				alert("????????? ??????????????????.");
				form.name.focus();
				return false;
			}
			else if(form.name.value.length>20){
				alert("????????? 20?????? ????????? ?????????????????????.");
				form.name.focus();
				return false;
			}
			//?????????
			if(form.NickDuplication.value != "NickCheck"){
				alert("????????? ??????????????? ????????????.");
				return false;
			}
			//????????????
			if(form.year.value=="" || form.month.value=="" || form.day.value==""){
				alert("??????????????? ??????????????????.");
				return false;
			}
			
			//?????????_?????? ??? ????????????
			var regEmail1 = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])/i;
			var regEmail2 = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
			if(form.email1.value=="" || form.email2.value=="" 
					|| !regEmail1.test(form.email1.value) || !regEmail2.test(form.email2.value)){
				alert("???????????? ??????????????????.");
				form.email1.focus();
				return false;
			}
			if(form.email1.value.length>20){
				alert("???????????? 20?????? ????????? ??????????????????");
				form.email1.focus();
				return;				
			}
			if(form.email2.value.length>20){
				alert("???????????? 20?????? ????????? ??????????????????");
				form.email2.focus();
				return;				
			}			
			
			if(form.intro.value.length>70){
				alert("???????????? 70?????? ????????? ??????????????????");
				return;
			}
			
			alert("???????????? ??????!");
			form.submit();
		}
		
		function inputIdCheck(){
			document.signupForm.idDuplication.value="idUncheck";
		}
		
		function confirmId(){
			var form = document.signupForm;
			if(form.id.value==""){
				alert("???????????? ??????????????????.");
				form.id.focus();
				return false;
			}
			else if(form.id.value.length>20 || form.id.value.length<4){
				alert("???????????? 4~20?????? ????????? ?????????????????????.");
				form.id.focus();
				return false;
			}
			url = "confirmId?id="+form.id.value;
			open(url,"confirm",
					"left=500, top=200, toolbar=no, location=no, status=no, menubar=no, scrollbars=no,resizable=no, width=300, height=200");
		}
		
		function inputNickCheck(){
			document.signupForm.NickDuplication.value="NickUncheck";
		}
		
		function confirmNick(){
			var form = document.signupForm;
			if(form.nickname.value==""){
				alert("???????????? ??????????????????.");
				form.nickname.focus();
				return false;
			}
			else if(form.nickname.value.length>9 || form.nickname.value.length<2){
				alert("???????????? 2~9?????? ????????? ?????????????????????.");
				form.nickname.focus();
				return false;
			}
			url = "confirmNick?nickname="+form.nickname.value;
			open(url,"confirm",
			"left=500, top=200, toolbar=no, location=no, status=no, menubar=no, scrollbars=no,resizable=no, width=300, height=200");
		}
		
		//????????? ????????? ????????? ?????? ??? ????????? ??????
	    (function (window, $, undefined) {
	    	//????????? ??? ??????, ????????? ?????? text
	        $intro_text = $('#intro_text'), $intro_len = $('#intro_len');
	      //????????? ????????? ??????
	        $intro_text.keyup(function () {
	        	chkIntroLength(this);
	        })
	        
	        function chkIntroLength(objMsg) { //????????? ?????? ??????
	            var pattern = /\r\n/gm;
	            var vacuum_text;
	            var vacuum_length;
	            vacuum_text = $(objMsg).val();
	            vacuum_length = lengthMsg($(objMsg).val());
	            vacuum_text = vacuum_text.replace(pattern, '\n');
	            $intro_len.html(vacuum_text.length);//?????? ????????? ??????
	        }
	        
	        //????????? ?????? ??????
	        function lengthMsg(obj_msg) {
	            var nbytes = 0;
	            var i;
	            for (i = 0; i < obj_msg.length; i++) {
	                var ch = obj_msg.charAt(i);
	                if (encodeURIComponent(ch).length > 4) { // ????????? ??????
	                    nbytes += 2;
	                } else if (ch === '\n') { // ???????????? ??????
	                    if (obj_msg.charAt(i - 1) !== '\r') { // ????????? ????????? ?????? ??????????????? ?????????
	                        nbytes += 1;
	                    }
	                } else { //???????????? ?????? 1byte
	                    nbytes += 1;
	                }
	            }
	            return nbytes;
	        }
	    })(window, jQuery, undefined);
</script>

</body>
</html>
