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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;


/**
 * Created by Administrator on 2017/5/14.
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


    //获得内容
    @RequestMapping("/work/get")
    private ModelAndView get(@RequestParam("page") int page, Model model){
        workSame(page,model);

        logger.info("获取页数"+page);

        return  new ModelAndView("myjsp/pages/worklog");
    }

    @RequestMapping("/work/put")
    private ModelAndView put(Model model, HttpServletRequest request){
        String content = request.getParameter("content");
        HttpSession session = request.getSession(false);
        if (session!=null) {
            logger.info("the session is OK");
            administrator= (AdministratorJB) session.getAttribute("administrator");
            if(administrator!=null&&content!=null){
                boolean b = workLogService.putData(administrator.getAdministrator_id(), content);
                if (!b){
                    logger.error("保存数据失败，Service类出错");
                }
            }
        }else {

            logger.error("还没登录，保存数据失败");
        }


        workSame(1,model);

        return  new ModelAndView("myjsp/pages/worklog");
    }

    @RequestMapping("/associate/get")
    private ModelAndView getassociate( Model model){
        List<AssociateLogJB> associateLog = associateLogService.selectByAssociate();
        model.addAttribute("associate",associateLog);
        model.addAttribute("pagenow",1);
        model.addAttribute("pages",1);


        logger.info("获取OA交接");
        return new ModelAndView("myjsp/pages/associatelog");
    }

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


    @RequestMapping("/associate/finish")
    private ModelAndView finish(@RequestParam("associate_id") int associate_id, Model model) {
        associateLogService.updataAssociate_open(0, associate_id);

        List<AssociateLogJB> associateLog = associateLogService.selectByAssociate();
        model.addAttribute("associate",associateLog);
        model.addAttribute("pagenow",1);
        model.addAttribute("pages",1);
        return new ModelAndView("myjsp/pages/associatelog");
    }

    @RequestMapping("/associate/alter")
    private ModelAndView finish(@RequestParam("associate_id") int associate_id,@RequestParam("associate_text") String associatr_text,Model model){

        associateLogService.updataByAssocitaLog_id(associatr_text,associate_id);

        List<AssociateLogJB> associateLog = associateLogService.selectByAssociate();
        model.addAttribute("associate",associateLog);
        model.addAttribute("pagenow",1);
        model.addAttribute("pages",1);
        return new ModelAndView("myjsp/pages/associatelog");
    }

    private void workSame(int page,Model model){
//查找总条数
        int total = workLogService.findtotal();
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
        List<WorkLogJB> workLog = workLogService.findByAmount(page, total,10);
        model.addAttribute("workLog",workLog);
        model.addAttribute("pagenow",page);
        model.addAttribute("pages",pages);
    }
}
