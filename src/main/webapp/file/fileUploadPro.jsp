<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <h1>fileUploadPro.jsp</h1>
   
   <%
      // 파일 업로드 장소 -> upload폴더 (가상경로 이클립스 upload폴더)
      //  실제 파일이 저장되는 곳은(서버안에 upload 폴더)
		
      String path = request.getRealPath("/upload");
      System.out.println("path : "+path);
      
      // 업로드 파일의 크기 제한 : 10MB
      int maxSize = 10 * 1024 * 1024 ;
      
      
      // 파일 업로드
      MultipartRequest multi 
          = new MultipartRequest(
        		  request,
        		  path,
        		  maxSize,
        		  "UTF-8",
        		  new DefaultFileRenamePolicy()
        		  );
     
      System.out.println(" 파일 업로드 성공! ");
      
      // 전달받은 정보를 저장(이름, 메세지 출력)
      
      //String name = request.getParameter("name");
      String name = multi.getParameter("name");
      //String msg = request.getParameter("msg");
      String msg = multi.getParameter("msg");

      System.out.println(" 이름 : "+name+", 메세지 : "+msg);
      
      //String file = multi.getParameter("file");
      String file = multi.getFilesystemName("file");
      // => 서버에 저장되는 파일명 (중복파일 -> 이름 변경됨)
      String o_file = multi.getOriginalFileName("file");
      // => 원래 파일명
      
      System.out.println(" 파일명  : "+file);
      System.out.println(" 파일명_o : "+o_file);
         
      
   %>
   
    <a href="fileDown1.jsp?file_name=<%=o_file%>"> 다운로드 페이지 이동1 </a>
    <hr>
    <a href="../upload/<%=o_file%>"> 다운로드 페이지 이동2 </a>
   
</body>
</html>