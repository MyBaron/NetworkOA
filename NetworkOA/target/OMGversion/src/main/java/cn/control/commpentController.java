package cn.control;

import cn.Entity.commentJavaBean;
import cn.Service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created by Administrator on 2017/5/11.
 */
@Controller
@RequestMapping("/comment")
public class commpentController {
    private final CommentService commentService;

    @Autowired
    public commpentController(CommentService commentService) {
        this.commentService = commentService;
    }


    @RequestMapping("/get")
    public ModelAndView getAll(Model model){
        List<commentJavaBean> commentJavaBeans = commentService.selectAll();
        model.addAttribute("comment",commentJavaBeans);
        return new ModelAndView("myjsp/pages/commentlist");
    }
}
