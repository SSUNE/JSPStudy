<%@page import="Milk_servlet.DtoMilk" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@ page import="Milk_servlet.DtoMilk" %>
<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!doctype html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <!-- [2] CSS : 꾸미기  -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <!-- [3] JS : 움직임  -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</head>
<body>

<!-- [1] HTML :틀   -->
<div class="container  panel panel-warning">
    <h3 class="panel-heading"> WEB STANDARD - MILK </h3>
    <table class="table  table-striped">
        <caption>ORACLE-MILK</caption>
        <thead>
        <tr>
            <th>NO</th>
            <th>NAME</th>
            <th>PRICE</th>
        </tr>
        </thead>
        <tbody>
        <%
            /* request.setCharacterEncoding("UTF-8"); */
            @SuppressWarnings("unchecked")
            ArrayList<DtoMilk> list = (ArrayList<DtoMilk>) request.getAttribute("list");

            for (DtoMilk dto : list) {
                out.print("<tr> <td>" + dto.getMno() + "</td><td>" + dto.getMname() + "</td><td>" + dto.getMprice() + "</td></tr> ");
            }
        %>
        <%--  <td><%=request.getParameter("mno") %></td>
         <td><%=request.getParameter("mname")%></td>
         <td><%=request.getParameter("mprice")%></td> --%>

        </tbody>
    </table>
</div>

<div class="container  panel panel-warning">
    <h3 class="panel-heading">WEB STANDARD - MILK - CRUD( insert ) </h3>
    <form method="post"
          action="<%=request.getContextPath()%>/MilkCreate" id="milkInsert">
        <fieldset>
            <legend>우유입력폼</legend>
            <div class="form-group">
                <label for="mname4">우유이름</label>
                <input type="text" name="mname" id="mname4" class="form-control"/>
            </div>
            <div class="form-group">
                <label for="mprice4">우유값</label>
                <input type="number" name="mprice" id="mprice4" class="form-control"/>
            </div>
            <div class="form-group">
                <input type="submit" value="전송" class="btn  btn-danger"/>
            </div>
        </fieldset>
    </form>
    <script>
        $(document).ready(function () {
            $("#milkInsert").submit(function () {
                if ($("#milkInsert   #mname4").val() == "") {
                    alert("빈칸입니다.\n확인해주세요");
                    $("#milkInsert   #mname4").focus();
                    return false;
                }
                if ($("#milkInsert   #mprice4").val() == "") {
                    alert("빈칸입니다.\n확인해주세요");
                    $("#milkInsert   #mprice4").focus();
                    return false;
                }
            });
        });
    </script>
</div><!--  end container  -->

<div class="container  panel panel-warning">
    <h3 class="panel-heading"> WEB STANDARD - MILK - CRUD( read )
        MILKS 검색 : 확인할 우유가격의 번호를 입력해주세요</h3>
    <form method="get" action="<%=request.getContextPath()%>/MilkRead" id="milkReader">
        <fieldset>
            <legend>MILKS 검색</legend>
            <div class="form-group">
                <label for="mno">우유번호 입력</label>
                <input type="text" name="mno" id="mno" class="form-control"/>
            </div>
            <div class="form-group"><input type="submit" value="전송" class="btn  btn-danger"/></div>
        </fieldset>
    </form>

    <script>
        $(document).ready(function () {
            $("#milkReader").submit(function () {
                if ($("#milkReader   #mno").val() == "") {
                    alert("빈칸입니다.\n확인해주세요");
                    $("#milkReader   #mno").focus();
                    return false;
                }
            });
        });
    </script>

</div><!-- container END -->

<!--   							  -->
<!--   							  -->
<div class="container  panel panel-warning">
    <h3 class="panel-heading"> WEB STANDARD - MILK - CRUD( update ) MILKS 수정 : 우유값인상</h3>
    <form method="post"
          action="<%=request.getContextPath()%>/MilkUpdate" id="milkModify">
        <fieldset>
            <legend>우유수정폼</legend>
            <div class="form-group">
                <label for="mno2">우유번호 입력</label>
                <input type="text" name="mno2" id="mno2" class="form-control"/>
            </div>
            <div class="form-group">
                <label for="mprice2">우유값 입력</label>
                <input type="number" name="mprice2" id="mprice2" class="form-control"/>
            </div>
            <div class="form-group">
                <input type="submit" value="전송" class="btn  btn-danger"/>
            </div>
        </fieldset>
    </form>
    <script>
        $(document).ready(function () {
            $("#milkModify").submit(function () {
                if ($("#milkModify   #mno2").val() == "") {
                    alert("빈칸입니다.\n확인해주세요");
                    $("#milkModify   #mno2").focus();
                    return false;
                }

                if ($("#milkModify   #mprice2").val() == "") {
                    alert("빈칸입니다.\n확인해주세요");
                    $("#milkModify   #mprice2").focus();
                    return false;
                }
            });
        });
    </script>
</div><!-- container END -->

<!--   							  -->
<!--   							  -->
<div class="container  panel panel-warning">
    <h3 class="panel-heading"> WEB STANDARD - MILK - CRUD( delete ) MILKS 삭제 : 삭제할 번호를 입력해주세요</h3>
    <form method="get" action="<%=request.getContextPath()%>/MilkDelete" id="milkDelete">
        <fieldset>
            <legend>우유삭제폼</legend>
            <div class="form-group">
                <label for="mno3">우유번호 입력</label>
                <input type="text" name="mno3" id="mno3" class="form-control"/>
            </div>
            <div class="form-group">
                <input type="submit" value="전송" class="btn  btn-danger"/>
            </div>
        </fieldset>
    </form>
    <script>
        $(document).ready(function () {
            $("#milkDelete").submit(function () {
                if ($("#milkDelete   #mno3").val() == "") {
                    alert("빈칸입니다.\n확인해주세요");
                    $("#milkDelete   #mno3").focus();
                    return false;
                }
            });
        });
    </script>
</div><!-- container END -->


</body>
</html>
