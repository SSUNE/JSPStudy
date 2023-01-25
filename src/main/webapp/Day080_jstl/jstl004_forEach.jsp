<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
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

    <style>
        .tab1 #tr1 td {
            color: pink;
        }

        .tab1 #tr5 td {
            color: skyblue;
        }

        .tab1 #tr2 td {
            color: darksalmon;
        }

        .tab1 #tr3 td {
            color: darksalmon;
        }

        .tab1 #tr4 td {
            color: darksalmon;
        }

        .mytr {
            color: darksalmon;
        }

        .mytrfirst {
            color: pink;
        }

        .mytrlast {
            color: skyblue;
        }

    </style>

</head>
<body>
<div class="container panel panel-danger">
    <h3 class="panel-heading">001) FOR EACH 사용</h3>
    <pre>
        for(초기값; 조건문; 증감문) {처리하는 내용}
        for(시작값; 끝나는 값; 변화) {처리하는 내용}
        c:forEach      var="index"     begin="시작"      end="종료"    step="증가"
    </pre>
    <h4 class="panel-heading">BASIC - 1,2,3</h4>
    <c:forEach var="i" begin="1" end="3" step="1">${i}</c:forEach>

    <pre>연습문제1) 1 2 3 4 5</pre>
    <c:forEach var="i" begin="1" end="5" step="1">${i}</c:forEach>

    <pre>연습문제2) 2 4 6 8</pre>
    <c:forEach var="i" begin="2" end="8" step="2">${i}</c:forEach>

    <pre>연습문제3) 5 4 3 2 1</pre>
    <c:forEach var="i" begin="1" end="5" step="1">${6-i}</c:forEach>


    <h3 class="panel-heading">002) FOR EACH 사용(2)</h3>
    <pre>
        c:forEach      var="index"     begin="시작"      end="종료"    step="증가"    varStatus="status"
        🟊 arStatus="status"   상태정보
            \${status.begin}   상태정보.시작 1              [리턴 : 숫자]
            \${status.end}     상태정보.끝  3              [리턴 : 숫자]
            \${status.first}   상태정보.시작여부             [리턴 : true/false]
            \${status.last}    상태정보.마지막여부            [리턴 : true/false]
            \${status.index}   상태정보.인덱스번호(처리번호)     [리턴 : 숫자]
            \${status.count}   상태정보.카운트번호(갯수정보)     [리턴 : 숫자]
    </pre>

    <pre>1. varStatus="status" begin/end</pre>
    <c:forEach var="i" begin="1" end="3" step="1" varStatus="status">
        <p> 🟊 index : [${i}] - 🟊 begin : [${status.begin}] - 🟊 end : [${status.end}] </p>
    </c:forEach>


    <pre>2. varStatus="status" first/last</pre>
    <c:forEach var="i" begin="1" end="3" step="1" varStatus="status">
        <p> 🟊 index : [${i}] - 🟊 first : [${status.first}] - 🟊 last : [${status.last}] </p>
    </c:forEach>


    <pre>3. varStatus="status" index/count</pre>
    <c:forEach var="i" begin="8" end="10" step="1" varStatus="status">
        <p> 🟊 index : [${i}] - 🟊 index : [${status.index}] - 🟊 count : [${status.count}] </p>
    </c:forEach>


    <pre>연습문제1) 5 4 3 2 1 을 varStatus를 이용해서 출력해주세요!</pre>
    <c:forEach var="i" begin="1" end="5" step="1" varStatus="status">
        ${6-i}
    </c:forEach>
    <c:forEach var="i" begin="1" end="5" step="1" varStatus="status">
        ${(status.begin + status.end)-i}
    </c:forEach>


    <pre>연습문제2) varStatus1</pre>
    <table class="table table-striped">
        <thead>
        <tr>
            <th scope="col">index</th>
            <th scope="col">count</th>
            <th scope="col">cnt</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="i" begin="7" end="10" step="1" varStatus="status">
            <tr>
                <td>${status.index}</td>
                <td>${status.count}</td>
                <td>${i}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>


    <pre>연습문제3) varStatus2</pre>
    <table class="table table-stripped">
        <caption>varStatus 1</caption>
        <thead>
        <tr>
            <th scope="col">index</th>
            <th scope="col">count</th>
            <th scope="col">cnt</th>
            <th scope="col">begin</th>
            <th scope="col">end</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="i" begin="1" end="10" step="2" varStatus="status">
            <tr class="mytr${color}">
                <td>${i}</td>
                <td>${status.count}</td>
                <td>${status.index}</td>
                <td>${status.begin}</td>
                <td>${status.end}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>


    <pre>
        연습문제4) varStatus3
    .mytr {color : darksalmon;}
    .mytrfirst {color : pink;}
    .mytrlast {color : skyblue;}

    </pre>
    <table class="table table-stripped">
        <caption>varStatus 3</caption>
        <thead>
        <tr>
            <th scope="col">index</th>
            <th scope="col">count</th>
            <th scope="col">cnt</th>
            <th scope="col">begin</th>
            <th scope="col">end</th>
        </tr>
        </thead>
        <tbody>
        <c:set var="color" value=""/>
        <c:forEach var="i" begin="1" end="10" step="2" varStatus="status">
            <c:choose>
                <c:when test="${status.first}"><c:set var="color" value="first"/></c:when>
                <c:when test="${status.last}"><c:set var="color" value="last"/></c:when>
                <c:otherwise><c:set var="color" value=""/> </c:otherwise>
            </c:choose>
            <tr class="mytr${color}">
                <td>${status.index}</td>
                <td>${status.count}</td>
                <td>${i}</td>
                <td>${status.begin}</td>
                <td>${status.end}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <div class="container panel panel-info">
        <h3 class="panel-heading">003) FOR EACH 사용(3) items</h3>
        <pre>
            ◻︎ items : 향상된 for
            ◻ scope범위 : application > session > request > page

            다음과 같이 데이터 준비
            1. String[] movieLIST = { "겨울왕국2", "알라딘", "분노의 질주", "범죄의도시", "조커" };
            2. c:forEach에서 items이용해서 movieList사용하기

        </pre>
        <%
            String[] movieList = { "겨울왕국2", "알라딘", "분노의 질주", "범죄의도시", "조커" };
            pageContext.setAttribute("movieList",movieList);
            for(String movie : movieList){
                System.out.println(movie);
            }
        %>
        <c:forEach var="movie" items="${movieList}">${movie}</c:forEach>
        <pre>
         1. ArrayList에 movie 리스트 만들기
         2. add이용해서 데이터 넣기
         3. pageContext에 등록하기
         </pre>
        <%
            ArrayList<String> movieList2 = new ArrayList<>();
            movieList2.add("힐하우스의 유령");
            movieList2.add("컨저링");
            movieList2.add("킬리만자로");
            movieList2.add("스테이얼라이브");
            movieList2.add("반교");

            pageContext.setAttribute("movieList2", movieList2);
            for(String movie : movieList2){ out.println(movie); }
        %>
        <br/>
        <c:forEach var="movie" items="${movieList2 }">${movie }</c:forEach>
    </div>

</div>
</body>
</html>