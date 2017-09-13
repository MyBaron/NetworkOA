package cn.Control;

import cn.Entity.AdministratorJB;
import cn.Entity.AssistantJB;
import cn.Service.AssiatantService;
import cn.Service.SignService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

/**
 * Created by baron on 17-6-4.
 */
@Controller
@RequestMapping("/sign")
public class SignController {

    private final SignService signService;
    private final AssiatantService assiatantService;
    private Logger logger;

    @Autowired
    public SignController(SignService signService, AssiatantService assiatantService) {
        this.signService = signService;
        logger=Logger.getLogger(SignController.class);
        this.assiatantService = assiatantService;
    }


    @RequestMapping("/getDay")
    public ModelAndView getDay(Model model, @RequestParam(value = "day",required = false) String day,HttpSession session){

        if(day!=null) {
            model.addAttribute("sign",signService.findTody(day));
        }else {
            DateFormat dateFormat= new SimpleDateFormat("yyyy-MM-dd");
            day = dateFormat.format(new Date());
            model.addAttribute("sign",signService.findTody(day));

        }
        getAssistantWorking(model,session);
        String st=day+"的签到记录";
        model.addAttribute("message",st);

        return new ModelAndView("myjsp/pages/sign");
    }


    @RequestMapping("/getName")
    public ModelAndView getName(Model model,@RequestParam("name") String name,@RequestParam("month") String month){
        model.addAttribute("sign",signService.fingByNameAndMonth(name,month));
        getAssistantWorking(model,null);
        String st=name+"的第"+month+"月的签到记录";
        model.addAttribute("message",st);

        return new ModelAndView("myjsp/pages/sign");
    }


    //签到
    @RequestMapping("/putData")
    public ModelAndView putData(HttpSession session,Model model,@RequestParam("name") String name,@RequestParam("day") String day,@RequestParam("begin_h") String begin_h,@RequestParam("begin_m") String begin_m,@RequestParam("end_h") String end_h,@RequestParam("end_m") String end_m,@RequestParam("longtime") double longtime) throws ParseException {
        int id=findAssistantId(session,name);
        StringBuffer stringBuffer_b=new StringBuffer(begin_h);
        StringBuffer stringBuffer_e=new StringBuffer(end_h);
        stringBuffer_b.append(":"+begin_m);
        stringBuffer_e.append(":"+end_m);

        AdministratorJB administrator =(AdministratorJB) session.getAttribute("administrator");
        if(administrator!=null) {
            signService.putData(name, id, StringToData(day), stringBuffer_b.toString(), stringBuffer_e.toString(), longtime,administrator.getAdministrator_name());
        }

        //显示今天签到数据
        DateFormat dateFormat= new SimpleDateFormat("yyyy-MM-dd");
        day = dateFormat.format(new Date());
        model.addAttribute("sign",signService.findTody(day));
        getAssistantWorking(model,session);
        String st=day+"的签到记录";
        model.addAttribute("message",st);



        return new ModelAndView("myjsp/pages/sign");
    }



    //String to Date
    private Date StringToData(String day) throws ParseException {
        SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy-MM-dd");
        Date date=simpleDateFormat.parse(day);

        return date;
    }

    //查询助理id
    private int findAssistantId(HttpSession session,String name){
        List<AssistantJB> working = (List<AssistantJB>) session.getAttribute("working");
        if(working!=null) {
            Iterator iterator = working.iterator();
            while (iterator.hasNext()) {
                AssistantJB assistantJB = (AssistantJB) iterator.next();
                if (assistantJB.getAssistant_name().equals(name)) {
                    return assistantJB.getAssistant_id();
                }
            }
        }else {
            return 0;
        }
        return 0;
    }


    //获取所有助理信息
    private void getAssistantWorking(Model model,HttpSession session){
        List<AssistantJB> working = assiatantService.getWorking();
        model.addAttribute("AssistantWorking",working);
        if (session!=null) {
            session.setAttribute("working", working);
        }
    }


}
