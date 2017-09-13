package cn.Control;

import cn.Entity.AdministratorJB;
import cn.Entity.VisterAndTimeJB;
import cn.Service.AdministratorService;
import com.google.gson.Gson;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;

/**
 * Created by Administrator on 2017/5/14.
 *
 * 管理员登录
 */

@Controller
@RequestMapping("/administrator")
@Scope("prototype")
public class AdministratorController {
    private final AdministratorService administratorService;
    private Logger logger;
    @Autowired
    private  VisterAndTimeJB visterAndTimeJB;
    private static LinkedList<VisterAndTimeJB> visterList;

    @Autowired
    public AdministratorController(AdministratorService administratorService) {
        this.administratorService = administratorService;
        logger = Logger.getLogger(AdministratorController.class);

        //this.visterAndTimeJB = visterAndTimeJB;
    }

    static {
        visterList=new LinkedList<VisterAndTimeJB>();
    }

    @RequestMapping("/login")
    @ResponseBody
    public String login(@RequestParam("account") String account, @RequestParam("password") String password, HttpSession session){
        Gson gson = new Gson();
        Map<String, String> map = new HashMap<String, String>();
        if( administratorService.judgeAccount(account)){

            //返回TRUE  String accout = request.getParamst("account");
            //账号不存在 write s=response.write();s.write("dsfsd fdsf sa")

            map.put("account","false");
        }else {
            map.put("account","true");
        }
        AdministratorJB login = administratorService.login(account, password);
        if (login!=null){
            //登录成功
            session.setAttribute("administrator",login);
            logger.info(login.getAdministrator_name()+"登录");

            visterList = administratorService.vister(login, visterList);


        }else {
            //登录失败
            map.put("password","false");
        }
        session.setAttribute("loginer",visterList);

        return gson.toJson(map) ;

    }


    //登出
    @RequestMapping("/out")
    public ModelAndView out(Model model,HttpSession session){
        if(session.getAttribute("administrator")!=null){
            session.removeAttribute("administrator");
        }

        return new ModelAndView("redirect: list.do");
    }

    //获取所有管理员名单
    @RequestMapping("/list")
    public ModelAndView Administrator_list(Model model){
        model.addAttribute("administrator",administratorService.selectAll());
        return new ModelAndView("myjsp/pages/administrator");
    }

    @RequestMapping("/add")
    public ModelAndView add_Administrator(@RequestParam("name") String name,@RequestParam("account") String account,@RequestParam("password") String password,Model model){

        administratorService.putData(name, account, password);

        model.addAttribute("administrator",administratorService.selectAll());

        return new ModelAndView("myjsp/pages/administrator");
    }

    @RequestMapping("/fix")
    public ModelAndView fix(Model model,@RequestParam("name") String name,@RequestParam("account") String account,@RequestParam("password") String password,@RequestParam("id") int id){

        administratorService.alterData(name,account,password,id);
        model.addAttribute("administrator",administratorService.selectAll());
        return new ModelAndView("myjsp/pages/administrator");
    }




}
