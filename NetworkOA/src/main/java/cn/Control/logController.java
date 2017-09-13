package cn.Control;

import cn.Entity.AdministratorJB;
import cn.Entity.AssociateLogJB;
import cn.Entity.WorkLogJB;
import cn.Service.AssociateLogService;
import cn.Service.WorkLogService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Optional;


/**
 * Created by Administrator on 2017/5/14.
 *
 * 日志页面（工作日志work和交接日志associate）
 */

@Controller
@RequestMapping("/log")
public class logController {

    private final WorkLogService workLogService;
    private final WorkLogJB workLogJB;
    private final AssociateLogService associateLogService;
    private AdministratorJB administrator;
    private Logger logger;

    @Autowired
    public logController(WorkLogService workLogService, WorkLogJB workLogJB, AssociateLogService associateLogService) {
        this.workLogService = workLogService;
        logger=Logger.getLogger(logController.class);
        this.workLogJB = workLogJB;
        this.associateLogService = associateLogService;
    }


    //获得该页数的内容
    @RequestMapping("/work/get")
    private ModelAndView get(@RequestParam("page") int page, Model model,HttpSession session){

        workSame(workLogService.findtotal(),page,model,1);

        AdministratorJB administrator =(AdministratorJB) session.getAttribute("administrator");

        if(administrator!=null) {
            logger.info(administrator.getAdministrator_name() + "获取页数" + page);
        }
        return  new ModelAndView("myjsp/pages/worklog");
    }

    //存储内容
    //获取内容
    @RequestMapping("/work/put")
    private ModelAndView put(Model model, HttpServletRequest request){
        String content = request.getParameter("content");
        HttpSession session = request.getSession(false);
        if (session!=null) {
            administrator= (AdministratorJB) session.getAttribute("administrator");
            if(administrator!=null&&content!=null){
                logger.info(administrator.getAdministrator_name()+"添加了工作内容："+content);
                boolean b = workLogService.putData(administrator.getAdministrator_id(), content);
                if (!b){
                    logger.error("保存数据失败，Service类出错");
                }
            }
        }else {

            logger.error("还没登录，保存数据失败");
        }


        workSame(1,1,model,2);

        return  new ModelAndView("myjsp/pages/worklog");
    }


    //根据id获取数据
    @RequestMapping("/work/{id}")

    private void getByid(@PathVariable int id, HttpServletResponse response){
        System.out.println("id= " + id);
        Optional<String> string = Optional.of(workLogService.findById(id));
        PrintWriter writer;
        try {
            response.setCharacterEncoding("utf-8");
            writer = response.getWriter();
            writer.write(string.get());
            writer.close();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }


    //获取交接内容
    @RequestMapping("/associate/get")
    private ModelAndView getassociate( Model model){
        List<AssociateLogJB> associateLog = associateLogService.selectByAssociate();
        model.addAttribute("associate",associateLog);
        model.addAttribute("pagenow",1);
        model.addAttribute("pages",1);


        logger.info("获取OA交接");
        return new ModelAndView("myjsp/pages/associatelog");
    }

    //存储交接内容
    //获取交接内容
    @RequestMapping("/associate/put")
    private ModelAndView putassociate(Model model,HttpServletRequest request){
        String associate_text = request.getParameter("associate_text");
        HttpSession session = request.getSession(false);
        if (session!=null){
            administrator=(AdministratorJB)session.getAttribute("administrator");
            if (administrator!=null&&associate_text!=null){
                associateLogService.putData(administrator.getAdministrator_id(),associate_text);
            }
        }else {
            logger.error("associate 还没登录");
        }
        List<AssociateLogJB> associateLog = associateLogService.selectByAssociate();
        model.addAttribute("associate",associateLog);
        model.addAttribute("pagenow",1);
        model.addAttribute("pages",1);
        return new ModelAndView("myjsp/pages/associatelog");
    }

    //改变交接状态。把未完成的交接改成已完成。
    //获取交接ID
    @RequestMapping("/associate/finish")
    private ModelAndView finish(@RequestParam("associate_id") int associate_id, Model model) {
        associateLogService.updataAssociate_open(0, associate_id);

        List<AssociateLogJB> associateLog = associateLogService.selectByAssociate();
        model.addAttribute("associate",associateLog);
        model.addAttribute("pagenow",1);
        model.addAttribute("pages",1);
        return new ModelAndView("myjsp/pages/associatelog");
    }

    //修改交接内容
    //获取交接id，交接内容。
    @RequestMapping("/associate/alter")
    private ModelAndView finish(@RequestParam("associate_id") int associate_id,@RequestParam("associate_text") String associatr_text,Model model){

        associateLogService.updataByAssocitaLog_id(associatr_text,associate_id);

        List<AssociateLogJB> associateLog = associateLogService.selectByAssociate();
        model.addAttribute("associate",associateLog);
        model.addAttribute("pagenow",1);
        model.addAttribute("pages",1);
        return new ModelAndView("myjsp/pages/associatelog");
    }


    //获取全部交接内容
    @RequestMapping("/associate/getall")
    private ModelAndView getall(@RequestParam("page") int page, Model model,HttpSession session){
        int total = associateLogService.findTotal();

        workSame(associateLogService.findTotal(),page,model,2);

        return new ModelAndView("myjsp/pages/associatelog");
    }






    //查询工作条数
    private void workSame(int total,int page,Model model,int sign){

        logger.info("总页数是："+total);

        //算出总页数
        int pages=total/10;
        if(total%10!=0){
            pages+=1;

        }
        //获得当前页数
        if(page<=0){
            page=1;
        }else if(page>pages){
            page=pages;
        }
        if(sign==1) {
            List<WorkLogJB> workLog = workLogService.findByAmount(page, total, 10);
            model.addAttribute("workLog", workLog);
        }else {
            List<AssociateLogJB> associateLog = associateLogService.findByAmount(page, total, 10);
            model.addAttribute("associate", associateLog);
            logger.info("全部交接的10条  "+associateLog);
        }
        model.addAttribute("pagenow",page);
        model.addAttribute("pages",pages);
    }
}
