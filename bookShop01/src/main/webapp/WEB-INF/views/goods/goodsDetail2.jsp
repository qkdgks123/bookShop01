<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" 	isELIgnored="false"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<c:set var="goods"  value="${goodsMap.goodsVO}"  />
<c:set var="imageList"  value="${goodsMap.imageList }"  />
   
<html>
<head>
</head>
<body>
	<!-- 내용 들어 가는 곳 -->
	<c:forEach var="image" items="${imageList }">
		<video autoplay="autoplay"  controls="controls"
			src="${contextPath}/download.do?goods_id=${goods.goods_id}&fileName=${image.fileName}" width="700" height="500" >
		</video>
	</c:forEach>
				
				<%-- 
	<div id="container">
		<div class="tab_container">
			<div class="tab_content" id="tab1">
				<c:forEach var="image" items="${imageList }">
					<video autoplay="autoplay"  controls="controls"
						src="${contextPath}/download.do?goods_id=${goods.goods_id}&fileName=${image.fileName}" min-width=100% min-height=100% >
				</video>
				</c:forEach>
			</div>
		</div>
	</div> --%>
</body>
</html>
