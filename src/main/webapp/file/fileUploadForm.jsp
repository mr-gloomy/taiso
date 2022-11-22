<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
     <h1>fileUploadForm.jsp</h1>
     
     <form action="fileUploadPro.jsp" method="post" enctype="multipart/form-data">
        이름 : <input type="text" name="name"> <br>
        메세지 : <input type="text" name="msg"><br>
        첨부파일 : <input type="file" name="file" ><br>
        
        <input type="submit" value="파일업로드">     
     </form>
     
     
     
     
     
     
     
     
     
     
     

</body>
</html>