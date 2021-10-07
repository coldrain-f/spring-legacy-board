package edu.coldrain.controller.board;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/board/*")
public class BoardController {

    @GetMapping("/list")
    public String list() {
        return "board/boardList";
    }

    @GetMapping("/detail")
    public String detail() {
        return "board/boardDetail";
    }

    @GetMapping("/modify")
    public String modify() {
        return "board/boardModify";
    }

    @GetMapping("/write")
    public String write() {
        return "board/boardWrite";
    }
}
