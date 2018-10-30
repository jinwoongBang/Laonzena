<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script>
	<c:import url="/common/basicIncludeCss.jsp" />
	<c:import url="/common/basicIncludeScript.jsp" />
	<c:import url="/common/topMenu.jsp" />
<!-- 	<link rel="stylesheet" href="/css/loginForm.css" /> -->
	<style>
		@import url("https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400");
		@import url("https://fonts.googleapis.com/css?family=Playfair+Display");
		.message, .form, form {
		  display: flex;
		  justify-content: center;
		  align-items: center;
		  flex-direction: column;
		}
		
		.container {
		  width: 400px;
		  height: 300px;
		  background: white;
		  position: relative;
		  display: grid;
		  grid-template: 100% / 50% 50%;
		  box-shadow: 2px 2px 10px 0 rgba(51, 51, 51, 0.2);
		  top:200px;
		  left:600px;
		  border-radius:10px;
		}
		
		.btn-wrapper {
		  width: 60%;
		}
		
		.form {
		  width: 120%;
		  height: 100%;
		}
		.form--heading {
		  position:relative;
		  left:80px;
		  font-size: 18px;
		  height: 50px;
		  color: #809BCE;
		  font-family: 'Playfair Display', serif;
		}
		
		form {
		  position:relative;
		  left:80px;
		  width: 100%;
		  
		}
		form > * {
		  margin: 10px;
		}
		form input {
		  width: 90%;
		  border: 0;
		  border-bottom: 1px solid rgba(195, 195, 216, 0.5);
		  font-size: 13px;
		  font-weight: 300;
		  color: #797A9E;
		  letter-spacing: 0.11em;
		}
		form input::placeholder {
		  color: #C3C3D8;
		  font-size: 10px;
		}
		form input:focus {
		  outline: 0;
		  border-bottom: 1px solid rgba(128, 155, 206, 0.7);
		  transition: 0.6s all ease;
		}
		
		.button {
		  width: 100%;
		  height: 30px;
		  border: 0;
		  outline: 0;
		  color: white;
		  font-size: 15px;
		  font-weight: 300;
		  position: relative;
		  z-index: 3;
		  letter-spacing: 2px;
		  background: linear-gradient(45deg, #809BCE, #9893DA);
		  font-family: 'Playfair Display', serif;
		}
		.button:hover {
		  transform: translateY(4px);
		  transition: 0.4s all ease;
		}
		
		@media (max-width: 750px) {
		  .container {
		    transform: scale(0.8);
		  }
		}
	</style>
</head>
<body>
	<div class="container">
		<div class="form form--login">
			<div class="form--heading">Welcome LaonZena! </div>
			<form autocomplete="off">
				<input type="text" placeholder="ID">
				<input type="password" placeholder="Password">
				<button class="button">Login</button>
			</form>
		</div>
	</div>
</body>

</html>