package cn.Control;

import cn.Entity.AdministratorJB;
import cn.Entity.TeRepairJB;
import cn.Service.TeRepairService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

/**
 * Created by baron on 17-6-10.
 */
@Controller
@RequestMapping("/te_repair")
public class Te_repairController {
    @Autowired
    private TeRepairService teRepairService;
    private Logger logger;

    public Te_repairController() {
        logger=Logger.getLogger(Te_repairController.class);
    }

    //type=2 未完成 type=0 未评价 type=1 已完成
    @RequestMapping("/getDoing")
    public ModelAndView getDoing( Model model){



        model.addAttribute("te_repair",teRepairService.findDoing());
        model.addAttribute("pages",1);
        model.addAttribute("page",1);
        model.addAttribute("message","还没完成的行政单");

        return new ModelAndView("myjsp/pages/te_repair");
    }

    @RequestMapping("/getFinish/{page}")
    public ModelAndView getFinish(Model model, @PathVariable int page){


        model.addAttribute("te_repair",teRepairService.findAll(page));
        int pages=teRepairService.FinishSum();
        if(pages%10!=0){
            pages=pages/10+1;
        }
        model.addAttribute("message","已完成的行政单");

        model.addAttribute("pages",pages);
        model.addAttribute("page",page);

        return new ModelAndView("myjsp/pages/te_repair");
    }


    @RequestMapping("/putData")
    public ModelAndView getData(TeRepairJB te,Model model){
        System.out.println(te);
        teRepairService.putData(te);
        model.addAttribute("te_repair",teRepairService.findDoing());
        model.addAttribute("message","还没完成的行政单");

        return new ModelAndView("myjsp/pages/te_repair");
    }


    @RequestMapping("/alterDeal")
    public ModelAndView alterDeal(@RequestParam("id") int id, @RequestParam("is_deal") int is_deal, Model model, HttpSession session){


        if(session.getAttribute("administrator")!=null) {
            AdministratorJB administrator = (AdministratorJB) session.getAttribute("administrator");
            teRepairService.alterDeal(is_deal, administrator.getAdministrator_name(),id);
        }else {
            logger.info("还没登录");
        }


        model.addAttribute("te_repair",teRepairService.findDoing());
        model.addAttribute("message","还没完成的行政单");

        return new ModelAndView("myjsp/pages/te_repair");
    }


   @RequestMapping("/alterReMessage")
    public  ModelAndView alterReMessage(@RequestParam(value = "id") int id,@RequestParam(value = "name",required = false) String name,@RequestParam(value = "phone",required = false) String phone,@RequestParam(value = "address",required = false) String address,@RequestParam(value = "type",required = false) String type,@RequestParam(value = "question",required = false) String question,@RequestParam(value = "message",required = false) String message,Model model){

        if(!teRepairService.alterRepair(id, name, address, phone, type, question, message)){
            logger.error("修改报修表错误错误");
        }


       model.addAttribute("te_repair",teRepairService.findDoing());
       model.addAttribute("message","还没完成的行政单");

       return new ModelAndView("myjsp/pages/te_repair");
   }


   @RequestMapping("/alterReAssistant")
    public ModelAndView alterReAssistant(@RequestParam(value = "id") int id,@RequestParam(value = "information",required = false) String information,@RequestParam(value = "summarize",required = false) String summarize,Model model){


       teRepairService.alterReAssistant(information,summarize,id);
       model.addAttribute("te_repair",teRepairService.findDoing());
       model.addAttribute("message","还没完成的行政单");

       return new ModelAndView("myjsp/pages/te_repair");
   }


   @RequestMapping("/finish")
    public ModelAndView finish(HttpSession session,@RequestParam(value = "id") int id,@RequestParam(value = "information",required = false) String information,@RequestParam(value = "summarize",required = false) String summarize,Model model){
        logger.info("finish");
       if(session.getAttribute("administrator")!=null) {
           AdministratorJB administrator = (AdministratorJB) session.getAttribute("administrator");
           teRepairService.finish(2,information,summarize,administrator.getAdministrator_name(),administrator.getAdministrator_id(),id);
       }else {
           logger.info("还没登录");
       }


       model.addAttribute("te_repair",teRepairService.findDoing());
       model.addAttribute("message","还没完成的行政单");

       return new ModelAndView("myjsp/pages/te_repair");
   }

   @RequestMapping("/checkBill")
    public ModelAndView checkBill(Model model,@RequestParam("id") int id){
       TeRepairJB byid = teRepairService.findByid(id,null).get(0);
       model.addAttribute("te",byid);

       return new ModelAndView("fontlogin/Bill");
   }

   //评价
   @RequestMapping("/bill_appraise")
    public ModelAndView bill_appraise(Model model,@ModelAttribute TeRepairJB te){

       teRepairService.appraise(te);

       TeRepairJB byid = teRepairService.findByid(te.getTe_repair_id(),null).get(0);
       model.addAttribute("te",byid);


       return new ModelAndView("fontlogin/Bill");
   }
}
