<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>게시판 상세 보기</title>

    <!-- CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bulma.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <!-- JS -->
    <script src="https://code.jquery.com/jquery-latest.min.js"></script>
    <script src="https://kit.fontawesome.com/223e8d4ffc.js" crossorigin="anonymous"></script>

    <style>
        .pagination-previous, .pagination-next, .pagination-link {
            text-decoration: none !important;
        }
        .is-current {
            color: #fff !important;
        }
    </style>

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
                <p>게시글 상세 보기</p>
            </div>
            <!-- message-body -->
            <div class="message-body">
                <div class="box">
                    <div class="columns">
                        <div class="column">
                            <h4 class="title is-4">첫 게시글입니다.</h4>
                        </div>
                    </div>
                    <div class="columns">
                        <table class="table">
                            <tbody>
                            <tr>
                                <td class="has-text-grey has-text-weight-bold">관리자</td>
                                <td>2021. 10. 03. 11:57:56</td>
                                <td>조회수 0</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div style="border-bottom: 2px solid #f5f5f5; margin-bottom: 15px"></div>
                    <div class="columns">
                        <div class="column mb-6">반갑습니다. 관리자입니다.</div>
                    </div>
                    <div style="border-bottom: 2px solid #f5f5f5; margin-bottom: 15px"></div>
                    <div class="buttons is-justify-content-flex-end">
                        <div class="button is-link is-rounded" onclick="location.href='/board/modify'">
                            <span class="icon is-small">
                                <i class="fas fa-edit"></i>
                            </span>
                            <span>수정</span>
                        </div>
                        <div class="button is-link is-rounded" id="board-remove-button">
                            <span class="icon is-small">
                                <i class="fas fa-trash-alt"></i>
                            </span>
                            <span>삭제</span>
                        </div>
                        <div class="button is-rounded" onclick="location.href='/board/list'">
                            <span class="icon is-small">
                                <i class="fas fa-list"></i>
                            </span>
                            <span>목록</span>
                        </div>
                    </div>
                    <div class="box">
                        <div class="field">
                            <p class="label">관리자</p>
                            <div class="control">
                                <input type="text" class="input" title="comment" placeholder="덧글을 작성해 주세요"/>
                                <div class="buttons mt-2 is-justify-content-flex-end ">
                                    <button class="button is-link is-light is-rounded">
                                    <span class="icon is-small">
                                        <i class="fas fa-feather"></i>
                                    </span>
                                        <span>등록</span>
                                    </button>
                                </div>
                            </div>
                        </div>
                        <div style="border-bottom: 2px solid #f5f5f5; margin-bottom: 15px"></div>
                        <h6 class="title is-6">
                            <span class="has-background-info has-text-white p-1">5</span>개의 덧글이 달렸습니다.
                        </h6>
                        <div style="border-bottom: 2px solid #f5f5f5; margin-bottom: 15px"></div>
                        <table class="table is-fullwidth is-hoverable">
                            <tbody>
                            <tr>
                                <td class="has-text-grey has-text-weight-bold">관리자</td>
                                <td>테스트 덧글입니다.</td>
                                <td>2021.10.03 12:58</td>
                                <td>
                                    <a class="reply-modify-icon" style="text-decoration: none">
                                        <span class="icon is-small">
                                            <i class="fas fa-edit"></i>
                                        </span>
                                    </a>
                                </td>
                                <td>
                                    <a class="reply-remove-icon" style="text-decoration: none">
                                        <span class="icon is-small">
                                            <i class="fas fa-trash-alt"></i>
                                        </span>
                                    </a>
                                </td>
                            </tr>
                            </tbody>
                        </table>

                        <nav class="pagination is-centered is-rounded">
                            <a href="#" class="pagination-previous">이전</a>
                            <a href="#" class="pagination-next">다음</a>
                            <ul class="pagination-list">
                                <li><a href="#" class="pagination-link is-current">1</a></li>
                                <li><a href="#" class="pagination-link">2</a></li>
                                <li><a href="#" class="pagination-link">3</a></li>
                                <li><a href="#" class="pagination-link">4</a></li>
                                <li><a href="#" class="pagination-link">5</a></li>
                            </ul>
                        </nav>

                    </div>
                </div>
            </div>
            <!-- //message-body -->
        </div>
    </div>

    <!-- reply modify modal -->
    <div id="reply-modify-modal" class="modal">
        <div class="modal-background"></div>
        <div class="modal-card">
            <header class="modal-card-head">
                <p class="modal-card-title">댓글 수정</p>
                <button class="delete" aria-label="close"></button>
            </header>
            <section class="modal-card-body">
                <div class="field">
                    <label for="contents" class="label">댓글 내용</label>
                    <div class="control">
                        <input type="text" id="contents" class="input" value="테스트 덧글입니다. "/>
                    </div>
                </div>
            </section>
            <footer class="modal-card-foot is-justify-content-flex-end">
                <button class="button is-info is-rounded">
                    <span class="icon is-small">
                        <i class="fas fa-edit"></i>
                    </span>
                    <span>수정</span>
                </button>
            </footer>
        </div>
    </div>
    <!-- //reply modify modal -->

    <!-- reply remove modal -->
    <div id="reply-remove-modal" class="modal">
        <div class="modal-background"></div>
        <div class="modal-card">
            <header class="modal-card-head">
                <p class="modal-card-title">댓글 삭제</p>
                <button class="delete"></button>
            </header>
            <section class="modal-card-body">
                정말로 댓글을 삭제하시겠습니까?
            </section>
            <footer class="modal-card-foot is-justify-content-flex-end">
                <button class="button is-danger is-rounded">
                    <span class="icon is-small">
                        <i class="fas fa-trash-alt"></i>
                    </span>
                    <span>삭제</span>
                </button>
            </footer>
        </div>
    </div>
    <!-- //reply remove modal -->

    <!-- remove button modal -->
    <div id="board-remove-modal" class="modal">
        <div class="modal-background"></div>
        <div class="modal-card">
            <header class="modal-card-head">
                <p class="modal-card-title">게시글 삭제</p>
                <button class="delete" aria-label="close"></button>
            </header>
            <section class="modal-card-body">
                정말로 게시글을 삭제하시겠습니까?
            </section>
            <footer class="modal-card-foot is-justify-content-flex-end">
                <button class="button is-danger is-rounded">
                    <span class="icon is-small">
                        <i class="fas fa-trash-alt"></i>
                    </span>
                    <span>삭제</span>
                </button>
            </footer>
        </div>
    </div>
    <!-- //remove button modal -->

    <!-- modal event script -->
    <script>
        //bulma 에서 모달창을 활성화하기 위해서는 .modal 에 is-active 만 추가해주면 된다.
        $(document).ready(function () {
            $(".reply-modify-icon").on("click", function () {
                $("html").addClass("is-clipped");
                $("#reply-modify-modal").addClass("is-active");
            });

            $(".reply-remove-icon").on("click", function () {
                $("html").addClass("is-clipped");
                $("#reply-remove-modal").addClass("is-active");
            });

            $("#board-remove-button").on("click", function () {
                //스크롤 금지
                $("html").addClass("is-clipped");
                //모달창을 활성화 한다.
                $("#board-remove-modal").addClass("is-active");
            });

            // close button click event
            $(".delete").on("click", function () {
                //스크롤 금지 해제
                $("html").removeClass("is-clipped");
                //모달창을 비활성화 한다.
                $(".modal").removeClass("is-active");
            });
        });
    </script>
    <!-- //modal event script -->

    <!-- footer -->
    <footer class="footer" style="margin-top: 120px">
        <div class="content has-text-centered">
            <p>
                <strong>Bulma</strong> by <a href="https://jgthms.com">Jeremy Thomas</a>. The source code is
                licensed
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