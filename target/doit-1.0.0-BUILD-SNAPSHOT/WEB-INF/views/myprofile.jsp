<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.springframework.security.core.Authentication" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.kakaolove.doit.security.customUserDetails" %>
<%@ page import="com.kakaolove.doit.vo.userProfileVO" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.*" %>
<%@ page import="java.lang.*" %>





<html>    
	<head>
		<meta charset="utf-8">
    	<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<!--  <link href="<c:url value="/resources/css/bootstrap/bootstrap.min.css"/>" rel="stylesheet">-->
		<!-- <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">-->
  		<!-- CSS Libraries -->
  		
  		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
  		
  		<!-- google fonts -->
  		<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:300,400,500,700&display=swap" rel="stylesheet">
  		
  		<!-- Template CSS -->
  		<link rel="stylesheet" href="<c:url value="/resources/other/theme/assets/css/components.css"/>">
  		<link rel="stylesheet" href="<c:url value="/resources/other/theme/assets/css/style.css"/>" >
  		<link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>" >
  		
</head>


<%!
    public List<String> splitunderbar(String str) {
		List<String> list = Arrays.asList(str.split("_"));
        return list;
    };

	public boolean iscontainub(String str){
		return str.contains("_");
		//있으면 true
	}
	
	public List<String> splitcontext(String str){
		List<String> retlist=new ArrayList<String>();
		if(iscontainub(str)){ // 한개일때
			retlist.add(str);
			return retlist;
		}
		return splitunderbar(str);
	}
%>



<body>
  <div id="app">
	    <div class="main-wrapper">
	      <div class="navbar-bg"></div>
	      <!-- 네비바 -->
		  <%@include file='tiles/navbar.jsp'%>
	 		<!-- 사이드바시작 -->
		   <div class="main-sidebar d-none d-sm-block">
	        <aside id="sidebar-wrapper">
	          <div class="sidebar-brand">
	            <a href="index.html">당신의 실력을 보여주세요,do it</a>
	          </div>
	          <div class="sidebar-brand sidebar-brand-sm">
	            <a href="index.html">St</a>
	          </div>
	          <ul class="sidebar-menu">
	              <li class="menu-header">마이페이지</li>
	              <li class="nav-item dropdown active">
	                <a href="#" class="nav-link"><i class="fas fa-fire"></i><span>프로필 관리</span></a>
	              </li>
	              <li class="menu-header">프로젝트 관리</li>
	              <li class="nav-item dropdown">
	                <a href="#" class="nav-link" data-toggle="dropdown"><i class="fas fa-columns"></i> <span>프로젝트 관리</span></a>
	              </li>
	              <li>
	              	<a class="nav-item dropdown" href="#"><i class="far fa-square"></i> <span>프로젝트 생성</span></a>
	              </li>
	              <li class="nav-item dropdown">
	                <a href="#" class="nav-link"><i class="fas fa-th"></i> <span>완료된 프로젝트</span></a>
	                
	              </li>	             
	              <li class="menu-header">커뮤니티</li>
	              <li class="nav-item dropdown">
	                <a href="#" class="nav-link"><i class="far fa-user"></i> <span>계정관리</span></a>
	              </li>
	              
	            <div class="mt-4 mb-4 p-3 hide-sidebar-mini">
	              <a href="https://getstisla.com/docs" class="btn btn-primary btn-lg btn-block btn-icon-split">
	                <i class="fas fa-rocket"></i> Doit!
	              </a>
	            </div>
	            </ul>
	        </aside>
	      </div>
	 		
	 		<!-- 사이드바끝 -->
	 		<!-- Main Content -->
	      <div class="main-content">
	        <section class="section">
	          <div class="section-header">
	            <h1>프로필관리</h1>
	            
	          </div>
	          <div class="section-body">
	            <h2 class="section-title">반갑습니다 ${profile.nickname}님</h2>
	            <p class="section-lead">
	              	자신만의 독특한 프로필을 꾸며서 다른 두잇터들에게 자신을 어필해보세요!
	            </p>
	
	            <div class="row mt-sm-4">
	              <div class="col-12 col-md-12 col-lg-5">
	                <div class="card profile-widget">
	                  <div class="profile-widget-header">
	                    <img alt="image" src="<c:url value="/resources/other/theme/assets/img/avatar/avatar-1.png"/>" class="rounded-circle profile-widget-picture">
	                    <div class="profile-widget-items">
	                      <div class="profile-widget-item">
	                        <div class="profile-widget-item-label">프로젝트</div>
	                        <div class="profile-widget-item-value">34</div>
	                      </div>
	                      <div class="profile-widget-item">
	                        <div class="profile-widget-item-label">팔로워</div>
	                        <div class="profile-widget-item-value">1.2k</div>
	                      </div>
	                      <div class="profile-widget-item">
	                        <div class="profile-widget-item-label">팔로잉</div>
	                        <div class="profile-widget-item-value">682</div>
	                      </div>
	                    </div>
	                  </div>
	                  <div class="profile-widget-description">
	                    <div class="profile-widget-name" style="color:#444;">${profile.nickname} <div class="text-muted d-inline font-weight-normal"><div class="slash"></div> ${profile.position}</div></div>
	                    	<!-- 자기소개 -->
	                    	<div class="profilesection" id="p_introduce" style="display:inline;">
	                    		<div class="profile-widget-name" style="font-family:'Noto Sans KR';color:#333;margin-top:12%;">자기소개</div>
	                    		<div class="profilesection" id="p_intro" style="color:#333;padding:10px;color:#555;">${profile.introduce}</div>
	                    	 </div>
	                    	<!-- 관심분야 -->
	                    	<div class="profilesection" id="p_filed"><div class="profile-widget-name" style="color:#333;">보유기술</div>
	                    		
	                    	</div>
	                    	<!-- 경력 -->
	                    	<div class="profilesection" id="p_spec"><div class="profile-widget-name" style="color:#333;">경력 사항</div> </div>
	                    	<!-- 학력 및 전공 -->
	                    	<div class="profilesection" id="p_edumajor"><div class="profile-widget-name" style="color:#333;">학력/전공</div> </div>
	                    	<!-- 보유자격증 -->
	                    	<div class="profilesection" id="p_certificate"><div class="profile-widget-name" style="color:#333;">보유 자격증</div> </div>
	                    
	
	                  </div>
	                </div>
	              </div>
	              <div class="col-12 col-md-12 col-lg-7">
	                <div class="card">
	                  <form method="post" class="needs-validation" novalidate="" name="modifyform" id='modifyform'>
	                    <div class="card-header">
	                      <h4>프로필 수정하기</h4>
	                    </div>
	                    <div class="card-body">
	                        <div class="row">
	                          <div class="form-group col-md-6 col-12">
	                            <label>닉네임</label>
	                            <input id="nickname" name="nickname" type="text" class="form-control" value="${profile.nickname}" required="">
	                            <div class="invalid-feedback">
									닉네임이 틀렸습니다
	                            </div>
	                          </div>
	                          <div class="form-group col-md-6 col-12">
	                            <label>아이디</label>
	                            <input type="text" class="form-control" value="<%=name%>" disabled>
	                            <div class="invalid-feedback">
	                            </div>
	                          </div>
	                        </div>
	                        <div class="row">
	                        <div class="form-group">
                      			<label>관심직군</label>
                      			<select name="position" id="position" class="form-control">
                        			<option>IT/프로그래밍</option>
                        			<option>디자인</option>
                        			<option>영화/영상</option>
                        			<option>건축/토목</option>
                        			<option>수학/과학</option>
                        			<option>기계/전자</option>
                        			<option>외국어</option>
                        			<option>전기/화학</option>
                        			<option>음악/예술</option>
                        			<option>창업</option>
                      		   </select>
                    		</div>
	                        </div>
	                        <div class="row">
	                          	<div class="form-group col-12 col-md-12">
			                      <label class="form-label">보유 기술(선택)</label>
			                      <div class="selectgroup selectgroup-pills">
			                        <label class="selectgroup-item">
			                          <input type="checkbox" id="filed" name="filed" value="Python" class="selectgroup-input">
			                          <span class="selectgroup-button">Python</span>
			                        </label>
			                        <label class="selectgroup-item">
			                          <input type="checkbox" id="filed" name="filed" value="Java" class="selectgroup-input">
			                          <span class="selectgroup-button">Java</span>
			                        </label>
			                        <label class="selectgroup-item">
			                          <input type="checkbox" id="filed" name="filed" value="Spring" class="selectgroup-input">
			                          <span class="selectgroup-button">Spring</span>
			                        </label>
			                        <label class="selectgroup-item">
			                          <input type="checkbox" id="filed" name="filed" value="Andorid" class="selectgroup-input">
			                          <span class="selectgroup-button">Android</span>
			                        </label>
			                        <label class="selectgroup-item">
			                          <input type="checkbox" id="filed" name="filed" value="Swift" class="selectgroup-input">
			                          <span class="selectgroup-button">Swift</span>
			                        </label>
			                        <label class="selectgroup-item">
			                          <input type="checkbox" id="filed" name="filed" value="Web" class="selectgroup-input">
			                          <span class="selectgroup-button">Web</span>
			                        </label>
			                        <label class="selectgroup-item">
			                          <input type="checkbox" id="filed" name="filed" value="App" class="selectgroup-input">
			                          <span class="selectgroup-button">App</span>
			                        </label>
			                        <label class="selectgroup-item">
			                          <input type="checkbox" id="filed" name="filed" value="Design" class="selectgroup-input">
			                          <span class="selectgroup-button">Design</span>
			                        </label>
			                         <label class="selectgroup-item">
			                          <input type="checkbox" id="filed" name="filed" value="UX/UI" class="selectgroup-input">
			                          <span class="selectgroup-button">UX/UI</span>
			                        </label>
			                        <label class="selectgroup-item">
			                          <input type="checkbox" id="filed" name="filed" value="iOS" class="selectgroup-input">
			                          <span class="selectgroup-button">iOS</span>
			                        </label>
			                        <label class="selectgroup-item">
			                          <input type="checkbox" id="filed" name="filed" value="Linux" class="selectgroup-input">
			                          <span class="selectgroup-button">Linux</span>
			                        </label>
			                        <label class="selectgroup-item">
			                          <input type="checkbox" id="filed" name="filed" value="프로그래밍" class="selectgroup-input">
			                          <span class="selectgroup-button">프로그래밍</span>
			                        </label>
			                        <label class="selectgroup-item">
			                          <input type="checkbox" id="filed" name="filed" value="C++" class="selectgroup-input">
			                          <span class="selectgroup-button">C++</span>
			                        </label>
			                        <label class="selectgroup-item">
			                          <input type="checkbox" id="filed" name="filed" value="C" class="selectgroup-input">
			                          <span class="selectgroup-button">C</span>
			                        </label>
			                        <label class="selectgroup-item">
			                          <input type="checkbox" id="filed" name="filed" value="Ruby" class="selectgroup-input">
			                          <span class="selectgroup-button">Ruby</span>
			                        </label>
			                        <label class="selectgroup-item">
			                          <input type="checkbox" id="filed" name="filed" value="Tensorflow" class="selectgroup-input">
			                          <span class="selectgroup-button">Tensorflow</span>
			                        </label>
			                        <label class="selectgroup-item">
			                          <input type="checkbox" id="filed" name="filed" value="Keras" class="selectgroup-input">
			                          <span class="selectgroup-button">Keras</span>
			                        </label>
			                        <label class="selectgroup-item">
			                          <input type="checkbox" id="filed" id="filed" name="filed" value="OpenCV" class="selectgroup-input">
			                          <span class="selectgroup-button">OpenCV</span>
			                        </label>
			                       
			                      </div>
			                    </div>
	                        </div>

	                        <div class="row">
	                          <div class="form-group col-md-12 col-12">
		                          <label>경력사항</label>
		                          <div class="input-group">
	                        		<input name="spec" type="text" class="form-control" placeholder="" aria-label="" id="spectext">
	                        		<div class="input-group-append">
	                          			<button class="btn btn-primary" type="button" value="" id="specAddBtn">추가하기</button>
	                        		</div>
	                        	  </div>
	                        	  <small id="specHelpBlock" class="form-text text-muted">
                        				경력사항은 '회사명/직책-시작일-종료일'으로 작성하는것이 원칙이며 이를 어길시 강제 수정됩니다.
                      			  </small>
                      			  <div class="profilesection" id="r_spec"></div>
                      			  
                    		  </div>
                    		</div>
                    		<div class="row">
	                          <div class="form-group col-md-12 col-12">
		                          <label>학력/전공</label>
		                          <div class="input-group">
	                        		<input name="edumajor" type="text" class="form-control" placeholder="" aria-label="" id="edumajortext">
	                        		<div class="input-group-append">
	                          			<button class="btn btn-primary" type="button" id="edumajorAddBtn">추가하기</button>
	                        		</div>
	                        	  </div>
	                        	  <small id="edumajorHelpBlock" class="form-text text-muted">
                        				학력과 전공은 학교/학과 형식으로 작성하는것이 원칙이며 이를 어길시 강제 수정됩니다.
                      			  </small>
                      			  <div class="profilesection" id="r_edumajor"></div>
 s
	
                    		  </div>
	                        </div>
	                        <div class="row">
	                          <div class="form-group col-md-12 col-12">
		                          <label>보유 자격증</label>
		                          <div class="input-group">
	                        		<input name="certificate" type="text" class="form-control" placeholder="" aria-label="" id="certificatetext">
	                        		<div class="input-group-append">
	                          			<button class="btn btn-primary" type="button" id="cretificateAddBtn">추가하기</button>
	                        		</div>
	                        	  </div>
	                        	  <small id="certificateHelpBlock" class="form-text text-muted">
                        				자격증명/취득일자/발급기관 형식으로 작성하는것이 원칙이며 이를 어길시 강제 수정됩니다.
                      			  </small>
                      			  <div class="profilesection" id="r_certificate"></div>
                    		  </div>
	                        </div>
	                        <div class="row">
	                          <div class="form-group col-12">
	                            <label>자기소개</label>
	                            <textarea id="introduce" name="introduce" rows="30" style="min-height:100px;"class="form-control summernote-simple">${profile.introduce}</textarea>
	                          </div>
	                        </div>
	                        <div class="row">
	                          <div class="form-group mb-0 col-12">
	                            <div class="custom-control custom-checkbox">
	                              <input type="checkbox" name="remember" class="custom-control-input" id="newsletter">
	                              <label class="custom-control-label" for="newsletter">프로필 수정에 동의합니다</label>
	                              <div class="text-muted form-text">
	                                	당신만의 특별한 프로필, 꼼꼼하게 완성 하셨나요?
	                              </div>
	                            </div>
	                          </div>    
	                           <div class="form-group">
			  						<input name="${_csrf.parameterName}" type="hidden" value="${_csrf.token}"/>
			 	 				</div>
	                        </div>
	                    </div>
	                    <div class="card-footer text-right">
	                      <button class="btn btn-primary" onclick="goPost()">저장</button>
	                    </div>
	                  </form>
	                </div>
	              </div>
	            </div>
	          </div>
	        </section>
	      </div>
	      <footer class="main-footer">
	        <div class="footer-left">
	          Copyright &copy; 2019 <div class="bullet"></div> Design By <a href="/">Doit</a>
	        </div>
	        <div class="footer-right">
	          beta.v1
	        </div>
	      </footer>
	    </div>
	  </div>
	<!--바디 끝-->
	
	<!-- custom js -->
		<script>
		
		var filed="${profile.filed}"; // 관심분야
		var spec="${profile.spec}"; // 경력사항
		var edumajor="${profile.edumajor}"; // 학력,전공
		var certificate="${profile.certificate}"; // 자격증	
		
		
		function iscontainub(str) {
		  return str.includes("_"); //이게 true 이면
		}
		
		function splitcontext(str) {
		  return str.split('_');
		}
		
		function checkprofile(src){
			if(iscontainub(src)){
				return splitcontext(src) //string 배열 리스트로 반환
			}
			else{
				return src // string형 그대로 만환
			}
		}
		

		function list2realVal(src){ // 리스트인지 스트링인지 모를것을 무조건 real 배열로 반환한다.
			var arr = new Array();
			if(Array.isArray(src)){
				for(var i in src) {
					arr.push(src[i]);
				}
			}else{
				arr.push(src);
			}
		return arr;
		}
		
		
		function clear(id){
			var targetelements=document.getElementById(id);
			if(targetelements.hasChildNodes()){
				while (targetelements.hasChildNodes()){
					targetelements.removeChild(targetelements.firstChild ); 
				}
			}			
		}
		
		function modifyTemplate(id,src){
			var r_val=document.getElementById(id); // 들어갈 Parent 엘리먼트
			
			if(src instanceof Array){ //리스트이다	(항목이 여러개다, div 엘리먼트가 여러개 생성되어야함)
				for(var i in src) {
					var newdiv = document.createElement('div'); // 동그랗게 만들어질놈
					newdiv.innerText=src[i];
					p_filed.appendChild(newdiv);
				}
			} 
			else{
				var newdiv = document.createElement('button'); // 동그랗게 만들어질놈
				
				newdiv.setAttribute("type","button");
				newdiv.setAttribute("class","btn btn-primary");
				newdiv.style.display="inline-block";
				newdiv.style.margin="5px";
				newdiv.innerText=src;
				newdiv.style.fontFamily ="Noto Sans KR !important";
				newdiv.style.fontWeight="400 !important";
				
				p_filed.appendChild(newdiv);
			}					
		}
		
		function modifyTemplate(id,src,rname){ // 수정쪽에 원본들이 나오는곳.
			var r_elements=document.getElementById(id);// 타겟 엘리먼트.
			if(Array.isArray(src)){ //리스트이다	(항목이 여러개다, div 엘리먼트가 여러개 생성되어야함)
				for(var i=0; i<src.length; i++) {
					var tempsrc=src[i]
					var newdiv = document.createElement('button'); // 동그랗게 만들어질놈
					var icon = document.createElement('i');
					icon.setAttribute("class","fas fa-eraser");
					icon.style.color="red";
					newdiv.setAttribute("id",rname+String(i)); //name에다가 아이디를 박는다.
					newdiv.setAttribute("type","button");
					newdiv.setAttribute("class","btn btn-primary");
					newdiv.style.margin="5px";
					newdiv.innerText=tempsrc;
					newdiv.appendChild(icon);
					r_elements.appendChild(newdiv);
				}
			}else{
				var newdiv = document.createElement('button'); // 동그랗게 만들어질놈
				var icon = document.createElement('i');
				icon.setAttribute("class","fas fa-eraser");
				icon.style.color="red";
				newdiv.setAttribute("id",rname); //name에다가 아이디를 박는다.
				newdiv.setAttribute("type","button");
				newdiv.setAttribute("class","btn btn-primary");
				newdiv.style.margin="5px";
				newdiv.innerText=src;
				newdiv.appendChild(icon);
				r_elements.appendChild(newdiv);
			}					
		return src
		}
		
		function filedTemplate(id,src){
			var p_filed=document.getElementById(id);
			if(src instanceof Array){ //리스트이다	(항목이 여러개다, div 엘리먼트가 여러개 생성되어야함)
				for(var i in src) {
					var newdiv = document.createElement('button'); // 동그랗게 만들어질놈
					var realnewdiv = document.createElement('button'); // 동그랗게 만들어질놈		
					newdiv.setAttribute("type","button");
					newdiv.setAttribute("class","btn btn-primary");
					newdiv.style.display="inline-block";
					newdiv.style.margin="5px";
					newdiv.innerText=src[i];
					newdiv.style.fontFamily ="Noto Sans KR !important";
					newdiv.style.fontWeight="400 !important";
					p_filed.appendChild(newdiv);
				}
			} 
			else{
				var newdiv = document.createElement('button'); // 동그랗게 만들어질놈
				
				newdiv.setAttribute("type","button");
				newdiv.setAttribute("class","btn btn-primary");
				newdiv.style.display="inline-block";
				newdiv.style.margin="5px";
				newdiv.innerText=src;
				newdiv.style.fontFamily ="Noto Sans KR !important";
				newdiv.style.fontWeight="400 !important";
				
				p_filed.appendChild(newdiv);
			}					
		}
		
		filedTemplate('p_filed',checkprofile(filed)); // _가 있다면 결과가 리스트, 없다면 String
		filedTemplate('p_spec',checkprofile(spec)); // _가 있다면 결과가 리스트, 없다면 String
		filedTemplate('p_edumajor',checkprofile(edumajor)); // _가 있다면 결과가 리스트, 없다면 String
		filedTemplate('p_certificate',checkprofile(certificate)); // _가 있다면 결과가 리스트, 없다면 String
		
		
		var speclist=list2realVal(checkprofile(spec));
		var filedlist=list2realVal(checkprofile(filed));	
		var edumajorlist=list2realVal(checkprofile(edumajor));
		var certificatelist=list2realVal(checkprofile(certificate));	
			
		/*현재 프로필(수정)생성*/
		modifyTemplate("r_spec",speclist,"spec_");
		modifyTemplate("r_edumajor",edumajorlist,"edumajor_");
		modifyTemplate("r_certificate",certificatelist,"certificate_");


		
		/*경력사항 인풋 버튼 이벤트리스너*/
		var realspectext=document.getElementById('spectext');
	    var specbtn=document.getElementById('specAddBtn')
	    
		/*학력사항 인풋 버튼 이벤트리스너*/
		var realedutext=document.getElementById('edumajortext');
	    var edumajorbtn=document.getElementById('edumajorAddBtn');
	
	    /*자격증 인풋 버튼 이벤트리스너*/
		var realcerttext=document.getElementById('certificatetext');
	    var certificatebtn=document.getElementById('cretificateAddBtn');
	    
	    window.onload = function(){
			
			 specbtn.onclick=function(){
				 speclist.push(realspectext.value);
					clear("r_spec");
					modifyTemplate("r_spec",speclist,"spec_");
			 }
			
	    	 edumajorbtn.onclick=function(){
					edumajorlist.push(realedutext.value);
					clear("r_edumajor");
					modifyTemplate("r_edumajor",edumajorlist,"edumajor_");
	    		
			 }
	    
	    	certificatebtn.onclick=function(){
	    			certificatelist.push(realcerttext.value);
					clear("r_certificate");
					modifyTemplate("r_certificate",certificatelist,"certificate_");
	    	}

	    }
	
	    
	    function goPost() {
	    	document.getElementById('spectext').value=speclist.join('_'); // 경력사항 
	    	document.getElementById('edumajortext').value=edumajorlist.join('_'); // 학력및전공
	    	document.getElementById('certificatetext').value=certificatelist.join('_'); // 자격증
	    	document.getElementById('nickname').value; // 닉네임id="filed" ')	    	
	    	document.getElementById('modifyform').submit();
	    	document.getElementById('filed').value=filedCheck().join('_'); // 자격증 filedCheck().join('_')
	    	console.log(document.getElementById('filed').value);
	    	console.log(document.getElementById('filed').value);
	    	console.log(document.getElementById('filed').value);
	    }
	    
		function filedCheck(){
		    var arrayParam = new Array();
		    //each로 loop를 돌면서 checkbox의 check된 값을 가져와 담아준다.

		    $("input:checkbox[name=filed]:checked").each(function(){
		    	arrayParam.push($(this).val());
		    });
		  return arrayParam;
		}


		
</script>
	
			
	<!-- General JS Scripts -->
	<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
  	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.nicescroll/3.7.6/jquery.nicescroll.min.js"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
	
    <!-- <script src="<c:url value="/resources/js/bootstrap/bootstrap.min.js"/>"></script> -->
    
    <!-- Page Specific JS File -->
    <script src= "<c:url value="/resources/other/theme/assets/js/stisla.js"/>"></script>
    <!-- Template JS File -->
    <script src="<c:url value="/resources/other/theme/assets/js/scripts.js"/>"></script>
    <script src="<c:url value="/resources/other/theme/assets/js/custom.js"/>"></script>
	</body>


</html>
