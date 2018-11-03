<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script src="https://code.jquery.com/jquery-3.3.1.js"
	integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
	crossorigin="anonymous"></script>
<c:import url="/common/basicIncludeCss.jsp" />
<c:import url="/common/basicIncludeScript.jsp" />
<c:import url="/common/topMenu.jsp" />

<link rel="stylesheet" href="<c:url value="/css/boardMenu.css" />" />
<link rel="stylesheet" href="<c:url value="/css/board.css" />" />

<link rel="stylesheet" href="<c:url value='/css/gs_review/boot.css' />"
	type="text/css" />
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
<link
	href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.css"
	rel="stylesheet">
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.js"></script>
</head>
<body>
	<div id="overlay"></div>
	<div id="content">
		<h1>Write</h1>
		<div id="board-write"></div>
		<span id="search-img"> <img src='<c:url value="/img/god.jpg"/>' />
		</span>
		<div>
			<span>Title</span> <input type="text" />
		</div>
		<div>
			<span>Category</span> <select id="search-category">
				<option>유제품</option>
				<option>햄버거</option>
				<option>음료</option>
			</select>
		</div>
		<div>
			<span>Product</span> <input type="text" id="product-name" />
		</div>
		<div class="file-attach">
			<span>이미지</span> <input type="file" id="file-attach" />
			<!--             <input type="text" placeholder="c:/programfile/당나귀/해리포터.avi"/> -->
			<%--             <img id="search-product" class="" src='<c:url value="/img/search icon png vector.png"/>' /> --%>
		</div>

		<div class="summernote">
			<div id="summernote">
				<p>Hello Summernote</p>
			</div>

		</div>
		<div id="write-review">
			<button>Submit</button>
			<button>Cancle</button>
		</div>
	</div>

	</div>
	<!-- 메뉴 -->
	<div class="wrap">
		<section id="vert-nav">
		<h3>EMART Board</h3>
		<nav role='navigation'>
		<ul class="topmenu">
			<!-- <li><a id="#" href="#0"><i class="entypo-home"></i> Home</a></li> -->
			<li><a href="<c:url value="/emart/product/event.do"/>"><i class="entypo-user"></i>Product</a>
				<ul class="submenu">
					<li><a href="#0">전체</a></li>
					<li><a href="#0">음료/커피</a></li>
					<li><a href="#0">유제품</a></li>
					<li><a href="#0">과자/간식</a></li>
					<li><a href="#0">라면/가공식품</a></li>
					<li><a href="#0">생활용품</a></li>
				</ul></li>
			<li><a href="#0"><i class="entypo-brush"></i>Event Product</a>
				<ul class="submenu">
					<li><a href="#0">1+1</a></li>
					<li><a href="#0">2+1</a></li>
					<li><a href="#0">덤증정</a></li>
				</ul></li>
			<li><a href='<c:url value="/gs/review/list.do"/>'><i
					class="entypo-vcard"></i>Review Community</a></li>
		</ul>
		</nav> </section>
	</div>

	<!-- 게시판 -->
	<table>
		<thead>
			<tr>
				<th>No</th>
				<th>Category</th>
				<th>Product</th>
				<th>Product Name</th>
				<th>Title</th>
				<th>Writer</th>
				<th>Date</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="b" items="${list}">
   			<tr>
				<td>${b.no}</td>
				<td>review</td>				
				<td>null</td>				
				<td>null</td>				
				<td><a href='detail.do?no=${b.no}'>${b.title}</a></td>
				<td>${b.writer}</td>
			    <td><fmt:formatDate value="${b.regDate}" pattern="yyyy-MM-dd" /></td>
			</tr>
	</c:forEach>	

		</tbody>
	</table>
	<div class="searchBar">
		<select>
			<option value="">글제목</option>
			<option value="">작성자</option>
			<option value="">내용</option>
		</select> <input type="text" />
		<!--             <img src="../img/search icon png vector.png"/> -->
		<img src='<c:url value="/img/search icon png vector.png"/>' />
		<button type="submit" class="write">Write</button>
	</div>
	<div class="pagination">
		<div>
			<a href="#1">&lt;&lt;</a>
		</div>
		<div>
			<a href="#2">&lt;</a>
		</div>
		<div>
			<a href="#3">1</a>
		</div>
		<div>
			<a href="#4">2</a>
		</div>
		<div>
			<a href="#5">3</a>
		</div>
		<div>
			<a href="#6">4</a>
		</div>
		<div>
			<a href="#7">5</a>
		</div>
		<div>
			<a href="#8">6</a>
		</div>
		<div>
			<a href="#9">7</a>
		</div>
		<div>
			<a href="#10">8</a>
		</div>
		<div>
			<a href="#11">9</a>
		</div>
		<div>
			<a href="#12">10</a>
		</div>
		<div>
			<a href="#13">&gt;</a>
		</div>
		<div>
			<a href="#14">&gt;&gt;</a>
		</div>
	</div>

	<script>
        /* 사이드 메뉴 */
        $(".submenu").parent().prepend('<i class="entypo-down-open-big sf"></i>');

        $("#vert-nav .topmenu a").click( function() {
            var $menu = $(this).next(".submenu");
            $menu.slideToggle('slow');
            $menu.parent().toggleClass('openmenu');
        });

        $("input,textarea").focus( function() {
            $(this).prev("label").addClass('focused');
        }); 

        $("input,textarea").blur( function() {
            $(this).prev("label").removeClass('focused');
        });
    </script>

	<script>
        /* 글 작성 */
        $(".write").on("click",function () {
            var overlay = document.getElementById("overlay");
            var content = document.getElementById("content");
            overlay.style.visibility = "visible";
            content.style.visibility = "visible";
            $("#overlay").on("click", function () {
                overlay.style.visibility = "hidden";
                content.style.visibility = "hidden";
            })
        })
        
        /* 상품 검색 */
        $("#search-product").on("click", function(){
            alert("상품 검색");
            window.open(
			    "http://gs25.gsretail.com/gscvs/ko/products/youus-freshfood", "상품 검색", "width=700px,height=500px"	
		    );
        })
        
        /* 상품 검색 버튼 */
        $("#search-product").mouseenter(function () {
            $(this).animate({width:25, height:25});
        }).mouseleave(function(){
            $(this).animate({width:20, height:20});
        })
        
        /* Content submit */
        $("#write-review>button:nth-child(1)").on("click", function () {
            alert("제출");
            var overlay = document.getElementById("overlay");
            var content = document.getElementById("content");
            overlay.style.visibility = "hidden";
            content.style.visibility = "hidden";
        })

        /* Content Cancle */
        $("#write-review>button:nth-child(2)").on("click", function () {
            alert("취소");
            var overlay = document.getElementById("overlay");
            var content = document.getElementById("content");
            overlay.style.visibility = "hidden";
            content.style.visibility = "hidden";
        })

    </script>


	<script>
    	/* 썸머노트 */
	    $(document).ready(function() {
	        $('#summernote').summernote();
	    });
    </script>
</body>
</html>