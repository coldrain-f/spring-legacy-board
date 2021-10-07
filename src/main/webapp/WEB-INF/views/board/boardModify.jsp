<%@page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>자유게시판 수정</title>

    <!-- CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bulma.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <!-- JS -->
    <script src="https://code.jquery.com/jquery-latest.min.js"></script>
    <script src="https://kit.fontawesome.com/223e8d4ffc.js" crossorigin="anonymous"></script>

    <!-- include summernote css/js -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-lite.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-lite.js"></script>

</head>
<body>

<!-- container -->
<div class="container h-100">
    <!--    navbar -->
    <nav class="navbar" role="navigation" aria-label="main navigation">
        <div class="navbar-brand">
            <a class="navbar-item" href="#">
                <strong class="title is-6">아이리스</strong>
            </a>

            <a role="button" class="navbar-burger" aria-label="menu" aria-expanded="false"
               data-target="navbarBasicExample">
                <span aria-hidden="true"></span>
                <span aria-hidden="true"></span>
                <span aria-hidden="true"></span>
            </a>
        </div>

        <div class="navbar-menu">
            <div class="navbar-start">
                <div class="navbar-item has-dropdown is-hoverable">
                    <a class="navbar-link">단어 학습</a>

                    <div class="navbar-dropdown">
                        <a class="navbar-item">영어</a>
                        <a class="navbar-item">일본어</a>
                        <a class="navbar-item">중국어</a>
                    </div>
                </div>
                <div class="navbar-item has-dropdown is-hoverable">
                    <a href="#" class="navbar-link">커뮤니티</a>
                    <div class="navbar-dropdown">
                        <a href="#" class="navbar-item">공지 게시판</a>
                        <a href="#" class="navbar-item has-text-link has-text-weight-bold">자유 게시판</a>
                    </div>
                </div>
                <a href="#" class="navbar-item">관리자 페이지</a>
            </div>

            <div class="navbar-end">
                <div class="navbar-item has-dropdown is-hoverable">
                    <a href="#" class="navbar-link">
                        언어 선택
                    </a>
                    <div class="navbar-dropdown">
                        <a href="#" class="navbar-item has-text-link has-text-weight-bold">한국어</a>
                        <a href="#" class="navbar-item">日本語</a>
                        <a href="#" class="navbar-item">English</a>
                    </div>
                </div>
                <div class="navbar-item">
                    <div class="buttons">
                        <a class="button is-dark is-inverted is-rounded">
                            로그인
                        </a>
                        <a class="button is-dark is-inverted is-rounded">
                            회원가입
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </nav>
    <!--    //navbar -->

    <div class="box">
        <div class="message is-link">
            <div class="message-header">
                <p>게시글 수정</p>
            </div>
            <div class="message-body">
                <!-- form -->
                <form class="box" action="#" method="post">
                    <!-- title -->
                    <div class="field">
                        <label for="title" class="label">제목</label>
                        <div class="control">
                            <input type="text" class="input" id="title" name="title" value="첫 게시글입니다."/>
                        </div>
                    </div>
                    <!-- //title -->
                    <!-- content -->
                    <div class="field">
                        <label for="content" class="label">내용</label>
                        <div class="control">
                            <textarea class="textarea" name="content" id="content">반갑습니다. 관리자입니다.</textarea>
                        </div>
                    </div>
                    <!-- //content -->

                    <!-- summernote javascript -->
                    <script>
                        $(document).ready(function () {
                            $("#content").summernote({
                                height: 300,
                                minHeight: null,
                                maxHeight: null,
                                focus: false,
                                lang: "ko-KR",
                            });
                        });
                    </script>
                    <!-- //summernote javascript -->

                    <!-- file upload 1 -->
                    <div class="file has-name is-link is-fullwidth">
                        <label class="file-label">
                            <input type="file" class="file-input">
                            <span class="file-cta">
                                <span class="file-icon">
                                    <i class="fas fa-upload"></i>
                                </span>
                                <span class="file-label">
                                    파일 선택
                                </span>
                            </span>
                            <span class="file-name">
                                파일.jpg
                            </span>
                        </label>
                    </div>
                    <!-- //file upload 1 -->

                    <!-- file upload 2 -->
                    <div class="file has-name is-link is-fullwidth mt-2 mb-3">
                        <label class="file-label">
                            <input type="file" class="file-input">
                            <span class="file-cta">
                                <span class="file-icon">
                                    <i class="fas fa-upload"></i>
                                </span>
                                <span class="file-label">
                                    파일 선택
                                </span>
                            </span>
                            <span class="file-name">
                                파일.jpg
                            </span>
                        </label>
                    </div>
                    <!-- //file upload 2 -->

                    <div class="buttons is-justify-content-flex-end">
                        <button type="submit" class="button is-link is-rounded"
                                onclick="location.href='/board/modify'">
                            <span class="icon is-small">
                                <i class="fas fa-edit"></i>
                            </span>
                            <span>수정</span>
                        </button>
                        <button type="button" class="button is-rounded"
                                onclick="location.href='/board/detail'">
                            <span class="icon is-small">
                                <i class="fas fa-list"></i>
                            </span>
                            <span>돌아가기</span>
                        </button>
                    </div>
                </form>
                <!-- //form -->
            </div>
        </div>
    </div>
    <!-- footer -->
    <footer class="footer" style="margin-top: 120px">
        <div class="content has-text-centered">
            <p>
                <strong>Bulma</strong> by <a href="https://jgthms.com">Jeremy Thomas</a>. The source code is licensed
                <a href="#">MIT</a>. The website content
                is licensed <a href="#">CC BY NC SA 4.0</a>.
            </p>
        </div>
    </footer>
    <!-- //footer -->
</div>
<!-- //container -->

</body>
</html>