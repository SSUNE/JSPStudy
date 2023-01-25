<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container panel panel-info">
    <h3 class="panel-heading"></h3>
    <pre>
         사용자                 서버 [apache + tomcat]
         [HOMEPAGE] (request)   -> 1. controller(servlet) 무엇을 요청했는지 파악
                                해당 작업을 해줄 수 있는 컴포넌트에 넘기기(model)
                               2. model : 해당한느 작업을 가공해서 controller에게 주기
                   (response)  <- 3. view(jsp)

         1. 사용자 요청
         2. controller(servlet)
            protected void doGet (HttpServletRequest request, HttpServletResponse response)
            protected void doPost(HttpServletRequest request, HttpServletResponse response)
         3. 서블릿인스턴스와 스레드 생성
            - url요청이 한번도 실행된적이 없거나 생성된 인스턴스가 없다면, 새로운 인스턴스를 만들고
              init() 메서드를 실행하여 초기화한 후 스레드하나를 생성
            - 이미 인스턴스가 존재할 경우 기존의 인스턴스에 스레드만 하나 생성
              각 서블릿의 인스턴스는 웹컨테이너당 하나만 존재하기 때문에 init() 메서드는 각 서블릿당 한번만 호출됨.

              [request] →→→→→→→→→→→→→→→→→→ [ [스레드생성] - 서블릿객체 ] --- 서블릿컨테이너 (톰캣)
         4. service() 메서드 호출, 클래스 실행
            - 스레드가 생성되면 각 스레드에서 service() 메서드를 호출
            - get 방식일때 doGet(), post 방식일때는 doPost()
         5. 응답과 스레드의 소멸
            - 요청에 따른 동적인 웹페이지를 생성하면 response이용해서 웹컨테이너가 http형태로 바꿔 웹서버로 전송
            - request, response 객체를 소멸시키고 스레드를 종료함.
      </pre>
    <p><a href="<%=request.getContextPath()%>/SLIFE2" class="btn btn-danger">LIFECYCLE2</a></p>
</div>
</body>
</html>