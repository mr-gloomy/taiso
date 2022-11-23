<%@page import="java.net.URLEncoder"%>
<%@page import="java.io.FileInputStream"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
     <h1>fileDown1.jsp</h1>
     <%
       // 전달한 파일 이름정보 저장
       String fileName = request.getParameter("file_name");
     
       // 서버에 업로드된 폴더명
       String savePath = "upload";
       
       // 서버의 업로드된 폴더의 실제 위치
       ServletContext CTX = getServletContext();
       String downloadPath = CTX.getRealPath(savePath);
       
       System.out.println("downloadPath : "+downloadPath);
       
       // 다운로드할 파일의 위치
       String filePath = downloadPath+"\\"+fileName;
       System.out.println("filePath : "+filePath);
       
       //////////////////////////////////////////////////////////
       // 파일을 다운로드 준비
       
       // 파일을 한번에 읽고/쓰기 배열
       byte[] b = new byte[4096];  // 4KB
       
       // 파일 입력 스트림 객체(파일 열기)
       FileInputStream fis = new FileInputStream(filePath);
       
       
       // MIME 타입이란 클라이언트에게 전송된 문서의 다양성을 알려주기 위한
       //메커니즘입니다: 웹에서 파일의 확장자는 별 의미가 없습니다. 
       //그러므로, 각 문서와 함께 올바른 MIME 타입을 전송하도록,
       //서버가 정확히 설정하는 것이 중요합니다. 
       //브라우저들은 리소스를 내려받았을 때 해야 할 기본 동작이 무엇인지를
       //결정하기 위해 대게 MIME 타입을 사용합니다.
       
       // 다운로드할 파일의 MIME타입 확인
      String MIMEType = getServletContext().getMimeType(filePath);
      System.out.println("MIMEType : "+MIMEType);
      
      // MIME 타입의 값이 없을경우 기본값으로 설정
      if(MIMEType == null){
    	  MIMEType = "application/octet-stream";
      }
      
      // 응답할 페이지의 형태를 MIME 타입의 형태로 변경
      response.setContentType(MIMEType);
      
      /////////////////////////////////////////////////////////////
      //  ie - 한글처리
      
      // 사용자의 브라우저 정보 확인
      String agent = request.getHeader("User-Agent");
      
      // 문자열.indexOf("문자") : 문자가 포함되어 있을때 해당 위치 index 리턴,
      //                          불포함 되어있을때   -1 리턴
      boolean ieBrowser
      = (agent.indexOf("MSIE") > -1) || (agent.indexOf("Trident") > -1);
      
      if(ieBrowser){
    	 // ie 일때
    	 fileName = URLEncoder.encode(fileName,"UTF-8").replaceAll("\\+", "%20");
      }else{
    	 // ie 아닐때
    	 fileName = new String(fileName.getBytes("UTF-8"),"iso-8859-1");
      }
      
      // => 한글 인코딩처리(파일명)
    		  
      // 모든 파일을 다운로드 형태로 처리
      response.setHeader("Content-Disposition", "attachment; filename="+fileName);
      
      // 기본생성되는 내장객체 out 처리
      out.clear();
      out = pageContext.pushBody();
      
      // 다운로드
      // 다운로드 하기위한 준비 (통로 생성)
      ServletOutputStream out2 = response.getOutputStream();
      
      int data=0;
      while( (data = fis.read(b,0,b.length)) != -1 ){ // -1 파일의 끝
    	  out2.write(b,0,data);
      }
      
      // 배열을 사용하여 정보 전달(버퍼)
      // -> 배열의 빈공간에 공백을 채워서 정보 전달
      out2.flush();
      
      out2.close();
      fis.close();
     %>
     
     
     
     
     
     
     
     
</body>
</html>