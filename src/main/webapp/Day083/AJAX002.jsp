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
</head>
<body>
    <div class="container panel panel-info">
        <h3 class="panel-heading">ARRAY</h3>
        <script>
        var a = ["dog","cat","pig"];
        console.log(typeof(a));
        console.log(a);
        console.log(a[0]);

        for(var b = 0; b < a.length; b++){console.log(a[b]);}
        </script>
        <script>
            var f = ["apple","banana","coconut"];
            console.log(f[1]);
            for(var b = 0; b < f.length; b++){console.log(f[b]);}
        </script>
    </div>
</body>
</html>