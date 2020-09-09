package com.review;
import java.util.Date;

import com.member.MemberVO;
import com.product.ProductVO;

public class ReviewVO {

	 private String content;
	    private Date reviewDate;
	    private MemberVO memberVO;
	    private ProductVO productVO;
	    private int reviewId;
	 
	    public int getReviewId() {
	        return reviewId;
	    }
	 
	    public void setReviewId(int id) {
	        this.reviewId = id;
	    }
	    public String getContent() {
	        return content;
	    }
	    public void setContent(String content) {
	        this.content = content;
	    }
	    public Date getReviewDate() {
	        return reviewDate;
	    }
	    public void setReviewDate(Date createDate) {
	        this.reviewDate = createDate;
	    }
	     
	    public MemberVO getMember() {
	        return memberVO;
	    }
	    public void setMember(MemberVO user) {
	        this.memberVO = user;
	    }
	    public ProductVO getProduct() {
	        return productVO;
	    }
	    public void setProduct(ProductVO product) {
	        this.productVO = product;
	    }

		@Override
		public String toString() {
			return "ReviewVO [content=" + content + ", reviewDate=" + reviewDate + ", memberVO=" + memberVO
					+ ", productVO=" + productVO + ", reviewId=" + reviewId + "]";
		}
	    
	    
	}