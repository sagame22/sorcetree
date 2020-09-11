<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
	

<c:if test="${empty param.categorycount}">
	<c:set var="categorycount" scope="page" value="100"/>
</c:if>

<c:if test="${!empty param.categorycount}">
	<c:set var="categorycount" scope="page" value="${param.categorycount}"/>
</c:if>
	
<div class="categoryProducts">
	<c:forEach items="${c.products}" var="p" varStatus="stc">
		<c:if test="${stc.count<=categorycount}">
		<div class="productUnit" price="${p.promotePrice}">
			<div class="productUnitFrame">
				<a href="${pageContext.request.contextPath}/fore/product?productId=${p.productId}">
					<img class="productImage" src="${pageContext.request.contextPath}/img/productSingle_middle/${p.firstProductImage.imageId}.jpg">
				</a>
				<span class="productPrice">NT$<fmt:formatNumber type="number" groupingUsed = "false" value="${p.promotePrice}"/>元</span>
				<a class="productLink" href="${pageContext.request.contextPath}/fore/product?productId=${p.productId}">
				 ${fn:substring(p.pname, 0, 50)}
				</a>
				
				<a  class="tmallLink" href="${pageContext.request.contextPath}fore/product?productId=${p.productId}">專賣</a>
	
				<div class="show1 productInfo">
					<span class="monthDeal ">月銷售 <span class="productDealNumber">${p.saleCount}筆</span></span>
					<span class="productReview">評價<span class="productReviewNumber">${p.reviewCount}</span></span>
					<span class="wangwang">
					<a class="wangwanglink" href="#nowhere">
						<img src="${pageContext.request.contextPath}/img/site/wangwang.png" style="margin-bottom: 5px;">
					</a>
					
					</span>
				</div>
			</div>
		</div>
		</c:if>
	</c:forEach>
		<div style="clear:both"></div>
</div>