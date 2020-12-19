<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@ page import="java.util.*"%>

<%
Random r = new Random();
int i = r.nextInt(20);


%>

<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, user-scalable=no">
        <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
        <script  src="http://cdnjs.cloudflare.com/ajax/libs/mustache.js/2.3.1/mustache.js"></script>
    
        <script src="http://developers.kakao.com/sdk/js/kakao.min.js"></script>
        <script src="https://sdk.amazonaws.com/js/aws-sdk-2.1.24.min.js"></script>




        <script src="//cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
        <link href="//cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" rel="stylesheet">
  
       
     

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
         

  
        
        <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR" rel="stylesheet">


 

        <link rel="stylesheet" href="/resources/css/m_product_review.css?i=<%=i%>">
       
        
        <script src="/resources/js/k_table.js?i=<%=i%>"></script>
        
        









    <style>
        
          
    </style>

		

</head> 
<body>



<!-- 모바일 상단 바 -->


<div id="k_top_bar">
   <div class="k_top_bar_img_div"><img class="k_top_bar_img" src="/resources/img/셀비로고_가로.png" /></div>

</div>


<div class="k_top_bar_blank">


</div>


<!-- 모바일  댓글후기 -->


<div id="reply_form">    

  
    <table id="k_reply">
       
        <tbody>
       
      <c:choose>
        <c:when test="${fn:length(list) > 0}">
          <c:forEach items="${list}" var="row">
                                  
            <tr > 
                <td colspan="4" class="k_subtitle">
                
                    
                  
                    <div class="k_subtitle_div">
                        <div class="k_subtitle_info">[아이디 칸] ${fn:substring(row.r_time,2,10)}</div>
                        <img src="https://s3.ap-northeast-2.amazonaws.com/supersell-selvi/selvishop_product_review_image/${row.image_name}" class="k_subtitle_img" />
                    </div>
                    <div class="k_subtitle_info_line">
                       
                        <div class="k_subtitle_line" > ${row.review_text }</div>
                         
                    </div>
                </td>
            </tr>

         </c:forEach>
        </c:when>
       <c:otherwise>
       </c:otherwise>
     </c:choose>

         
        </tbody>
        
      
        
    </table>

        <div class="k_review_write_but">
                             상품후기 작성
        </div>

        <div class="k_reply_pagination">
           <ul class="k_reply_pagination_ul"></ul>             
        </div>
        
         
        <!-- 상품후기 댓글 작성 폼 -->
   
   <div id="k_reply_write">
   
       <div class="k_reply_image_view">
       
       
       </div>
       
      
   
       <div class="k_reply_ta">
           <textarea class="k_reply_ta_ta" ></textarea>
           <input type="file" id="k_reply_file" multiple/>
           <label for="k_reply_file" class="k_reply_file">이미지 등록</label>
           <button class="k_reply_but" >등록</button>
       </div>
   </div> 
   
        <!-- 상품후기 댓글 작성 폼 -->
</div>




   <!-- 고정 상품 구매창 -->
 
    <div id="k_product_fix_window">
        <div class="k_header">
            <span>선택한 상품</span>
            <div>스마트폰 삼각대</div>
        </div>
        <div class="k_box"> 
                             스마트폰 삼각대  
        </div>
    </div>


   
   
<script src="/resources/js/k_aws_trans.js?i=<%=i%>"></script>
<script>
    
    
    
    
    


</script>


</body>                      
</html>