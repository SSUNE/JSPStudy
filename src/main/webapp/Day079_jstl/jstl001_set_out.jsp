<%@ page import="Day079.JSTL001Member" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script
            src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script
            src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container panel panel-success">
    <h3 class="panel-heading"> [1] jstl 태그라이브러리 - 변수 </h3>
    <pre>
        1. test 변수만들기
        2. 변수에  hello저장
        3. 변수 test 출력
        4. 변수 test 제거
    </pre>
    <c:set var="test" value="hello"/>
    <c:out value="test"/> <!-- 문자열 test -->
    <c:out value="${test}"/> <!-- 변수 출력 hello -->

    <!-- 삭제 후 출력해보기 -->
    <c:remove var="test"/>
    <c:out value="${test}"/>

    <h3 class="panel-heading"> 연습문제1) 변수 지원 set : 변수이름을 msg로 지정 / msg에 hello 데이터 넣기 출력 </h3>
    <c:set var="msg" value="hello"/>
    <c:out value="msg"/>
    <c:out value="${msg}"/>
    ${msg} <!-- 굳이 out안하고 이렇게만 써도됨 -->


    <h3 class="panel-heading"> 연습문제2) 변수 지원 set : 변수이름을 age1 지정 / age1에 35 데이터 넣기 출력 </h3>
    <c:set var="age1" value="35"/>
    <c:out value="age1"/>
    <c:out value="${age1}"/>


    <h3 class="panel-heading"> 연습문제3) 변수 지원 set : 변수이름을 add / value 지정 / value에 10+5한 값 넣기 출력 </h3>
    <c:set var="add" value="${10+5}"/>
    <c:out value="add"/>
    <c:out value="${add}"/>


    <h3 class="panel-heading"> 연습문제4) 변수 지원 set : 변수이름을 flag / value 지정 / value에 10>5한 값 넣기 출력 </h3>
    <c:set var="flag" value="${10>5}"/>
    <c:out value="flag"/>
    <c:out value="${flag}"/>

    <h3 class="panel-heading"> 연습문제5) 변수 지원 set : 변수이름을 member / value에 자바빈 넣고 출력 </h3>
    <pre>
        1. JSTL001Member - 멤버변수 name, age
        2. 변수에 bean 담고 출력
    </pre>
<%-- 오류   <c:set var="member" value="${new Day079.JSTL001Member()}"--%>
    <c:set var="member" value="<%=new Day079.JSTL001Member()%>"/>
<%--    <c:set var="member" value="<%=new JSTL001Member()%>"/>--%>
    <c:set target="${member}" property="name" value="sally"/>
    <c:set target="${member}" property="age" value="10"/>
    <c:out value="${member}"/>

    <h3 class="panel-heading"> 연습문제6) 변수 지원 set : 변수이름을 jelly / value에 자바빈 넣고 출력 </h3>
    <c:set var="jelly" value="<%=new Day079.JSTL002Jelly()%>"/>
    <c:set target="${jelly}" property="name" value="지구젤리"/>
    <c:set target="${jelly}" property="price" value="1000"/>
    <c:out value="${jelly}"/>

</div>
</body>
</html>