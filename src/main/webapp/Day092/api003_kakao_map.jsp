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
<div class="container panel panel-success">
    <h3 class="panel-heading">KAKAO-MAP</h3>
    <pre>
        1. 카카오 개발자사이트 (https://developers.kakao.com) 접속
        2. 개발자 등록 및 앱 생성
        3. 웹 플랫폼 추가: 앱 선택 – [플랫폼] – [Web 플랫폼 등록] – 사이트 도메인 등록
        4. 사이트 도메인 등록: [웹] 플랫폼을 선택하고, [사이트 도메인] 을 등록합니다. (예: http://localhost:8080)
        5. 페이지 상단의 [JavaScript 키]를 지도 API의 appkey로 사용합니다.
        6. 앱을 실행합니다.
        ------------------------------
        발급받은 APP KEY를 넣으시면 됩니다. : JavaScript키 넣기
    </pre>

    <div id="map" style="width:500px;height:400px;"></div>
    <%--<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=발급받은 APP KEY를 넣으시면 됩니다."></script>--%>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=36cacd26402951af1b130a28fa9ee13a"></script>
    <script>
        var container = document.getElementById('map');
        var options = {
            center: new kakao.maps.LatLng(37.7372139,127.0641639),
            level: 3
        };

        var map = new kakao.maps.Map(container, options);

        // 마커가 표시될 위치입니다
        var markerPosition  = new kakao.maps.LatLng(37.7372139,127.0641639);

        // 마커를 생성합니다
        var marker = new kakao.maps.Marker({
            position: markerPosition
        });

        // 마커가 지도 위에 표시되도록 설정합니다
        marker.setMap(map);

        // 아래 코드는 지도 위의 마커를 제거하는 코드입니다
        // marker.setMap(null);

    </script>

</div>
</body>
</html>