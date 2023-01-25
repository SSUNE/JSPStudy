<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<body>
<div class="container panel panel-info">
     쿠어어어엉리스으크ㅡㅡㅊ파라랄라라라라아마!!!!!!!!!!!
     <h3 class="panel-heading">forward + param</h3>
     <%
          request.setCharacterEncoding("UTF-8");
          out.println(request.getParameter("id"));
          out.println(request.getParameter("pass"));
     %>
</div>
</body>
</html>