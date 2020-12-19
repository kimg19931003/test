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
        <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
        <script  src="http://cdnjs.cloudflare.com/ajax/libs/mustache.js/2.3.1/mustache.js"></script>
    
        <script src="http://developers.kakao.com/sdk/js/kakao.min.js"></script>
    




        <script src="//cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
        <link href="//cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" rel="stylesheet">
  
       
     

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
         

  
        
        <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR" rel="stylesheet">


 

        <link rel="stylesheet" href="/resources/css/product_review.css?i=<%=i%>">
        <script src="/resources/js/ckeditor/ckeditor.js"></script>
        <script src="/resources/js/k_table.js?i=<%=i%>"></script>









    <style>
        
          
    </style>

		

</head> 
<body>







           
           
                   
                      <textarea name="k_content" id="k_content"> </textarea>
                      
                      
                        <script ript type ="text/javascript">
                         CKEDITOR.replace("k_content");
                        </script>
                      </div>
                    </div>
         






<script>
    
    
    

    $(document).on("click",".k_subtitle",function(){

        if($(".k_reply_word").css("display")=="none"){
            $(".k_reply_word").css("display", "block");
        }
        else if($(".k_reply_word").css("display")=="block"){
            $(".k_reply_word").css("display", "none");
        }
    });

  

</script>


</body>                      
</html>