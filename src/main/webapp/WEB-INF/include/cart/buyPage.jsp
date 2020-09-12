<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<div class="buyPageDiv">
  <form action="${pageContext.request.contextPath}/fore/createOrder" method="post">
  
	<div class="buyFlow">
		<img class="pull-left" src="${pageContext.request.contextPath}/img/site/simpleLogo.png">
		<img class="pull-right" src="${pageContext.request.contextPath}/img/site/buyflow.png">
		<div style="clear:both"></div>
	</div>
	<div class="address">
		<div class="addressTip">輸入收貨地址</div>
		<div>
		
			<table class="addressTable">
				<tr>
					<td class="firstColumn">詳細地址<span class="redStar">*</span></td>
					
					<td><textarea name="address" ></textarea></td>
				</tr>
				<tr>
					<td>郵遞區號</td>
					<td><input  name="post" type="text"></td>
				</tr>
				<tr>
					<td>收貨人姓名<span class="redStar">*</span></td>
					<td><input  name="receiver" type="text"></td>
				</tr>
				<tr>
					<td>手機號碼 <span class="redStar">*</span></td>
					<td><input name="mobile" type="text"></td>
				</tr>
			</table>
			
		</div>
	
	</div>
	<div class="productList">
		<div class="productListTip">確認訂單訊息</div>
		
		
		<table class="productListTable">
			<thead>
				<tr>
					<th colspan="2" class="orderTest" >
						訂單商品
					</th>
					<th>單價</th>
					<th>數量</th>
					<th>小計</th>
					<th>寄送方式</th>
				</tr>
				<tr class="rowborder">
					<td  colspan="2" ></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
			</thead>
			<tbody class="productListTableTbody">
				<c:forEach items="${ois}" var="oi" varStatus="st" >
					<tr class="orderItemTR">
						<td class="orderItemFirstTD"><img class="orderItemImg" src="${pageContext.request.contextPath}/img/productSingle_middle/${oi.product.firstProductImage.imageId}.jpg"></td>
						<td class="orderItemProductInfo">
						<a  href="${pageContext.request.contextPath}fore/product?productId=${oi.product.productId}" class="orderItemProductLink">
							${oi.product.pname}
						</a>
						
						
						 	<img src="${pageContext.request.contextPath}/img/site/creditcard.png" title="支援信用卡支付">
							<img src="${pageContext.request.contextPath}/img/site/7day.png" title="七天無條件退貨">
							<img src="${pageContext.request.contextPath}/img/site/promise.png" title="誠實商品">
						 
						</td>
						<td>
						
						<span class="orderItemProductPrice">NT$<fmt:formatNumber type="number" value="${oi.product.promotePrice}" />元</span>
						</td>
						<td>
						<span class="orderItemProductNumber">${oi.count}</span>
						</td>
						<td><span class="orderItemUnitSum">
						NT$<fmt:formatNumber type="number" value="${oi.count*oi.product.promotePrice}"/>元
						</span></td>
						<c:if test="${st.count==1}">
						<td rowspan="5"  class="orderItemLastTD">
						<label class="orderItemDeliveryLabel">
							<input type="radio" value="" checked="checked">
							普通配送
						</label>
						
						<select class="orderItemDeliverySelect" class="form-control">
							<option>快遞免運</option>
						</select>

						</td>
						</c:if>
						
					</tr>
				</c:forEach>				
				
			</tbody>
			
		</table>
	<div class="orderItemSumDiv">
			<div class="pull-left">
				<span class="leaveMessageText">給店家留言:</span>
				
				<span class="leaveMessageTextareaSpan">
						
				</span>
			<textarea name="userMessage" ></textarea>
			</div>
			
			<span class="pull-right">合計(含運費): NT$<fmt:formatNumber type="number" value="${total}" />元</span>
	
	</div>

	<div class="orderItemTotalSumDiv">
		<div class="pull-right"> 
			<span>實付：</span>
			<span class="orderItemTotalSumSpan">NT$<fmt:formatNumber type="number" value="${total}" />元</span>
		</div>
	</div>
	
	<div class="submitOrderDiv">
			<button type="submit" class="submitOrderButton">提交訂單</button>
	</div>
  </form>		
</div>