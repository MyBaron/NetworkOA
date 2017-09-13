package cn.fontControl;

import cn.Entity.TeRepairJB;
import cn.Service.TeRepairService;
import com.google.gson.Gson;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by baron on 17-6-12.
 */
@Controller
@RequestMapping("/fontlogin")
public class loginController {

     @Autowired
     private TeRepairService teRepairService;
     Logger logger=Logger.getLogger(loginController.class);

     @RequestMapping("/checkBill")
     @ResponseBody
     public String checkBill( @RequestParam("id") int id, @RequestParam("password") String password, HttpServletResponse response, HttpServletRequest request){
         response.setCharacterEncoding("utf-8");

         Map<String,String> map=new HashMap<String,String>();
         Gson gson=new Gson();

         logger.info("查询订单号为"+id);

         TeRepairJB byid = teRepairService.findByid(id,null).get(0);

         if(byid==null){
             map.put("message","1");

         }else if(!password.equals("88825000")){
             map.put("message","2");
         }else {
             map.put("message","OK");

             HttpSession session = request.getSession(true);
             session.setAttribute("te",byid);

         }


         String s = gson.toJson(map);
         logger.info("json=  "+s);

         return s;
     }


}
