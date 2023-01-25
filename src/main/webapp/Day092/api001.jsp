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
        #myvideo {
            width: 1280px;
            height: 720px;
        }
    </style>

</head>
<body>
<div class="container panel panel-danger">
    <h3 class="panel-heading">001.비디오태그</h3>
    <div class="panel-body">
        <video width="320" height="240" controls>
            <source src="movie.mp4" type="video/mp4">
            <source src="movie.ogg" type="video/ogg">
        </video>
        <pre>
            동영상, 음성 등 멀티미디어 콘텐츠를 이해할 수 있도록 대체 수단을 제공해야 한다.
            1. 멀티미디어 콘텐츠는 자막, 원고 또는 수화를 멀티미디어 콘텐츠와 동등한 내용을 제공해야 한다.
            2. 가장 바람직한 방법은 닫힌 자막을 오디오와 동기화를 시켜 제공하는 것이다.
            ------
            자동으로 소래자 재생되지 않아야 한다.
        </pre>
    </div>

    <h3 class="panel-heading">002. 비디오태그 예시</h3>
    <div class="panel-body">
        <video controls id="myvideo">
            <source src="placehama.mp4" type="video/mp4">
        </video>
        <div>
            우주하마 - 그림자와 나를 따로 조종하는 게임 ㄷㄷ갬성폭발함
        </div>
    </div>

    <h3 class="panel-heading">003. 비디오태그 예시2 - 퍼가기(iframe)</h3>
    <div class="panel-body">
        <iframe width="560" height="315" src="https://www.youtube.com/embed/0-q1KafFCLU" frameborder="0"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                allowfullscreen></iframe>
    </div>


    <h3 class="panel-heading">004. AUDIO 태그</h3>
    <div class="panel-body">
        <audio controls>
            <source src="Morning call.mp3" type="audio/mpeg">
        </audio>
    </div>
</div>
</body>
</html>