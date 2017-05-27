package cn.Control;

import cn.Entity.AdministratorJB;
import cn.Service.AdministratorService;
import com.google.gson.Gson;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by Administrator on 2017/5/14.
 *
 * 管理员登录
 */

@Controller
@RequestMapping("/Administrator")
public class AdministratorController {
    private final AdministratorService administratorService;
    private Logger logger;

    @Autowired
    public AdministratorController(AdministratorService administratorService) {
        this.administratorService = administratorService;
        logger=Logger.getLogger(AdministratorController.class);
    }

    @RequestMapping("/login")
    @ResponseBody
    public String login(@RequestParam("account") String account, @RequestParam("password") String password, HttpSession session){
        Gson gson = new Gson();
        Map<String, String> map = new HashMap<String, String>();
        if( administratorService.judgeAccount(account)){
            //返回TRUE
            //账号不存在
            map.put("account","false");
        }else {
            map.put("account","true");
        }
        AdministratorJB login = administratorService.login(account, password);
        if (login!=null){
            //登录成功
            session.setAttribute("administrator",login);
            System.out.println(login.toString());
        }else {
            //登录失败
            map.put("password","false");
        }
        logger.info(login.getAdministrator_name()+"登录");

        return gson.toJson(map) ;

    }
}
