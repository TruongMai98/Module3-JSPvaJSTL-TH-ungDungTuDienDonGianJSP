<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.io.PrintWriter" %>


<%--
  Created by IntelliJ IDEA.
  User: TRUONGMAI
  Date: 11/27/2022
  Time: 10:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
</head>
<body>

<%
    Map<String, String> dic = new HashMap<>();
    dic.put("hello", "Xin chào");
    dic.put("how", "Thế nào");
    dic.put("book", "Quyển vở");
    dic.put("computer", "Máy tính");

    String sr = request.getParameter("search");

    String result = dic.get(sr);
    if (result != null) {
//        out.println("Word " + sr);
//        out.println("<br>");
//        out.println("Result " + result);
%>
<h2>word = <%=sr%>
</h2>
<h2>result = <%=result%>
</h2>
<%
} else {
%>
<h2>not found</h2>
<%}%>


</body>
</html>
