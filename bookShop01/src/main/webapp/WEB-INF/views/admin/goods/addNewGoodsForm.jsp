<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"
	isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />	
<!DOCTYPE html>

<meta charset="utf-8">
<head>
<script type="text/javascript">
  var cnt=0;
  function fn_addFile(){
	  if(cnt ==0){
		  $("#d_file").append("<br>"+"<input  type='file' name='main_image'  />");	  
	  }else{
		  $("#d_file").append("<br>"+"<input  type='file' name='detail_image"+cnt+"' />");
	  }
  	
  	cnt++;
  }
</script>    
</head>

<BODY>
<form action="${contextPath}/admin/goods/addNewGoods.do" method="post"  enctype="multipart/form-data">
		<h1>새상품 등록창</h1>
<div class="tab_container">
	<!-- 내용 들어 가는 곳 -->
	<div class="tab_container" id="container">
		<ul class="tabs">
			<li><a href="#tab1">영화정보</a></li>
			<li><a href="#tab2">영화줄거리</a></li>
			<li><a href="#tab3">감독소개</a></li>
			<li><a href="#tab4">배급사소개</a></li>
			<li><a href="#tab5">영화후기</a></li>
			<li><a href="#tab6">영화후기2</a></li>
			<li><a href="#tab7">영화이미지</a></li>
		</ul>
		<div class="tab_container">
			<div class="tab_content" id="tab1">
				<table >
			<tr >
				<td width=200 >제품분류</td>
				<td width=500><select name="goods_sort">
						<option value=" 영화 분류 " selected> 국내
						<option value="디지털 기기"> 국내코미디
						<option value="디지털 기기"> 외국코미디
						<option value="디지털 기기"> 국내스릴러
						<option value="디지털 기기"> 외국스릴러
						<option value="디지털 기기"> 국내공포
						<option value="디지털 기기"> 외국공포
					</select>
				</td>
			</tr>
			<tr >
				<td >영화제목</td>
				<td><input name="goods_title" type="text" size="40" /></td>
			</tr>
			
			<tr>
				<td >감독</td>
				<td><input name="goods_writer" type="text" size="40" /></td>
			</tr>
			<tr>
				<td >배급사</td>
				<td><input name="goods_publisher" type="text" size="40" /></td>
			</tr>
			<tr>
				<td >한 달 구독가격</td>
				<td><input name="goods_price" type="text" size="40" /></td>
			</tr>
			
			<tr>
				<td >구독 할인가격</td>
				<td><input name="goods_sales_price" type="text" size="40" /></td>
			</tr>
			
			
			<tr>
				<td >구독 포인트</td>
				<td><input name="goods_point" type="text" size="40" /></td>
			</tr>
			
			<tr>
				<td >영화개봉일</td>
				<td><input  name="goods_published_date"  type="date" size="40" /></td>
			</tr>
			
			<tr>
				<td >영화 상영시간</td>
				<td><input name="goods_total_page" type="text" size="40" /></td>
			</tr>
			
			<tr>
				<td >ISBN</td>
				<td><input name="goods_isbn" type="text" size="40" /></td>
			</tr>
			<tr>
				<td >제품 배송비</td>
				<td><input name="goods_delivery_price" type="text" size="40" /></td>
			</tr>
			<tr>
				<td >제품 도착 예정일</td>
				<td><input name="goods_delivery_date"  type="date" size="40" /></td>
			</tr>
			
			<tr>
				<td >영화분류</td>
				<td>
				<select name="goods_status">
				  <option value="bestseller"  >국내코미디</option>
				  <option value="steadyseller" >국내호러</option>
				  <option value="newbook" selected >국내스릴러</option>
				  <option value="on_sale" >해외코미디</option>
				  <option value="buy_out" >해외로맨스</option>
				  <option value="out_of_print" >해외스릴러</option>
				</select>
				</td>
			</tr>
			<tr>
			 <td>
			   <br>
			 </td>
			</tr>
				</table>	
			</div>
			<div class="tab_content" id="tab2">
				<H4>영화줄거리</H4>
				<table>	
				 <tr>
					<td >줄거리</td>
					<td><textarea  rows="100" cols="80" name="goods_contents_order"></textarea></td>
				</tr>
				</table>	
			</div>
			<div class="tab_content" id="tab3">
				<H4>감독 소개</H4>
				 <table>
  				 <tr>
					<td>감독 소개</td>
					<td><textarea  rows="100" cols="80" name="goods_writer_intro"></textarea></td>
			    </tr>
			   </table>
			</div>
			<div class="tab_content" id="tab4">
				<H4>영화소개</H4>
				<table>
					<tr>
						<td >영화소개</td>
						<td><textarea  rows="100" cols="80" name="goods_intro"></textarea></td>
				    </tr>
			    </table>
			</div>
			<div class="tab_content" id="tab5">
				<H4>상영관 평가</H4>
				<table>
				 <tr>
					<td>사영관 평가</td>
					<td><textarea  rows="100" cols="80" name="goods_publisher_comment"></textarea></td>
			    </tr>
			</table>
			</div>
			<div class="tab_content" id="tab6">
				<H4>후기</H4>
				 <table>
					 <tr>
					   <td>후기</td>
					    <td><textarea  rows="100" cols="80" name="goods_recommendation"></textarea></td>
				    </tr>
			    </table>
			</div>
			<div class="tab_content" id="tab7">
				<h4>상품이미지</h4>
				<table >
					<tr>
						<td align="right">이미지파일 첨부</td>
			            
			            <td  align="left"> <input type="button"  value="파일 추가" onClick="fn_addFile()"/></td>
			            <td>
				            <div id="d_file">
				            </div>
			            </td>
					</tr>
				</table>
			</div>
		</div>
	</div>
	<div class="clear"></div>
<center>	
	 <table>
	 <tr>
			  <td align=center>
				  <input  type="submit" value="상품 등록하기"> 
			  </td>
			</tr>
	 </table>
</center>	 
</div>
</form>	 