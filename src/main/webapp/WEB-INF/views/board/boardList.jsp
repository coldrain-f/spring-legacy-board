<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>게시판 목록</title>

    <!-- CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bulma.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <style>
        .pagination a, td > a {
            text-decoration: none !important;
        }

        .is-current {
            color: white !important;
        }
    </style>

    <!-- JS -->
    <script src="https://code.jquery.com/jquery-latest.min.js"></script>
    <script src="https://kit.fontawesome.com/223e8d4ffc.js" crossorigin="anonymous"></script>
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
                <p>게시글 목록</p>
            </div>
            <div class="message-body">
                <div class="box">
                    <!-- search -->
                    <div class="field has-addons is-justify-content-flex-end">
                        <div class="control">
                            <div class="select">
                                <select name="" id="" title="search-option">
                                    <option value="1">제목+내용</option>
                                    <option value="2">제목</option>
                                    <option value="3">내용</option>
                                </select>
                            </div>
                        </div>
                        <div class="control">
                            <input type="text" class="input" title="search" id="search" name="search"/>
                        </div>
                        <div class="control">
                            <button type="submit" class="button is-link">
                                <span class="icon is-small">
                                    <i class="fas fa-search"></i>
                                </span>
                                <span>검색</span>
                            </button>
                        </div>
                    </div>
                    <!-- //search -->

                    <!-- table -->
                    <table class="table is-fullwidth is-hoverable">
                        <thead>
                        <tr>
                            <th>번호</th>
                            <th>제목</th>
                            <th>작성자</th>
                            <th>등록일</th>
                            <th>조회수</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>5</td>
                            <td>
                                <a href="<c:out value="/board/detail"/>">첫 게시글입니다.</a>
                                <span class="tag is-info is-light ml-2">NEW</span>
                            </td>
                            <td class="has-text-weight-bold has-text-grey">관리자</td>
                            <td>2021. 09. 28</td>
                            <td>0</td>
                        </tr>
                        </tbody>
                    </table>
                    <!-- //table -->

                    <!-- pagination -->
                    <nav class="pagination is-rounded is-centered" role="navigation" aria-label="pagination">
                        <a class="pagination-previous">이전</a>
                        <a class="pagination-next">다음</a>
                        <ul class="pagination-list">
                            <li><a class="pagination-link is-current">1</a></li>
                            <li><a class="pagination-link">2</a></li>
                            <li><a class="pagination-link">3</a></li>
                            <li><a class="pagination-link">4</a></li>
                            <li><a class="pagination-link">5</a></li>
                        </ul>
                    </nav>
                    <!-- //pagination -->
                    <div class="buttons is-justify-content-flex-end">
                        <button type="button" class="button is-link is-rounded"
                                onclick="location.href='/board/write'">
                            <span class="icon is-small">
                                <i class="fas fa-feather"></i>
                            </span>
                            <span>글쓰기</span>
                        </button>
                    </div>
                </div>
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