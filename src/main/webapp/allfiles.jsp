<%@page import="java.util.List"%>
<%@page import="com.jcg.servlet.UploadDetail"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">        
        <title>Servlet File Upload/Download</title>
        
        <link rel="stylesheet" href="resource/css/main.css" />
    </head>
    <body>
        <div class="panel">
            <h1>Uploaded Files</h1>
            <table class="bordered_table">
               <thead>
                  <tr align="center"><th>File Name</th><th>File Size</th><th>Action</th></tr>
               </thead>
               <tbody>
                  <% List<UploadDetail> uploadDetails = (List<UploadDetail>)request.getAttribute("uploadedFiles");
                     if(uploadDetails != null && uploadDetails.size() > 0) {
                     for(int i=0; i<uploadDetails.size(); i++) {
                  %>
                  <tr>
                     <td align="center"><span id="fileName"><%=uploadDetails.get(i).getFileName() %></span></td>
                     <td align="center"><span id="fileSize"><%=uploadDetails.get(i).getFileSize() %> KB</span></td>
                     <td align="center"><span id="fileDownload"><a id="downloadLink" class="hyperLink" href="<%=request.getContextPath()%>/downloadServlet?fileName=<%=uploadDetails.get(i).getFileName() %>">Download</a></span></td>
                  </tr>
                  <% }
                   } else { %>
                  <tr>
                     <td colspan="3" align="center"><span id="noFiles">No Files Uploaded.....!</span></td>
                  </tr>
                  <% } %>
               </tbody>
            </table>
            <div class="margin_top_15px">
               <a id="fileUpload" class="hyperLink" href="<%=request.getContextPath()%>/fileupload.jsp">Back</a>
            </div>
         </div>
     </body>
</html>