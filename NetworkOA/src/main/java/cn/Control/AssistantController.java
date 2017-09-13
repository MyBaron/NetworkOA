package cn.Control;

import cn.Entity.AssistantJB;
import cn.Service.AssiatantService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.Collections;
import java.util.List;

/**
 * Created by baron on 17-6-3.
 */
@Controller
@RequestMapping("/assistant")
public class AssistantController {

  private final AssiatantService assiatantService;
  private static List<AssistantJB> assistantJBList;

  private Logger logger;
  @Autowired
  public AssistantController(AssiatantService assiatantService) {
        this.assiatantService = assiatantService;
        logger=Logger.getLogger(AssistantController.class);
  }

  static {
      assistantJBList= null;
  }

  @RequestMapping("/getWorking")
  public ModelAndView getworking(Model model){
      model.addAttribute("assistant",assiatantService.getWorking());

      return new ModelAndView("/myjsp/pages/assistant");
  }

  @RequestMapping("/putData")
  public ModelAndView getWoking(Model model,@RequestParam(value = "name") String name,@RequestParam(value = "profession",required = false) String professtion,@RequestParam(value = "grade",required = false) String grade,@RequestParam(value = "birthday",required = false) String birthday,@RequestParam(value = "phone",required = false) String phone,@RequestParam(value = "number",required = false) String number,@RequestParam(value = "working",defaultValue = "1") String working){
      int work=Integer.parseInt(working);
      assiatantService.putData(name,professtion,grade,birthday,phone,number, work);
      model.addAttribute("assistant",assiatantService.getWorking());
      return new ModelAndView("/myjsp/pages/assistant");
  }

  @RequestMapping("/alterData")
  public ModelAndView alterData(Model model,@RequestParam(value ="assistant_id" ) int assistant_id,@RequestParam(value = "name") String name,@RequestParam(value = "profession",required = false) String professtion,@RequestParam(value = "grade",required = false) String grade,@RequestParam(value = "birthday",required = false) String birthday,@RequestParam(value = "phone",required = false) String phone,@RequestParam(value = "number",required = false) String number,@RequestParam(value = "working",defaultValue = "1") String working){

      assiatantService.alterById(assistant_id,name,professtion,grade,birthday,phone,number,Integer.parseInt(working));


      model.addAttribute("assistant",assiatantService.getWorking());
      return new ModelAndView("/myjsp/pages/assistant");
  }

  @RequestMapping("/getAll")
  public ModelAndView getAll(@RequestParam(value = "way",defaultValue = "flashback") String way,Model model){
      List<AssistantJB> all;
      if (assistantJBList==null){  //判断静态list是否有存有值（减少访问数据库）
          all = assiatantService.getAll();
          if (way.equals("order")) {   //顺序排列
              assistantJBList=all;
          } else {
              Collections.reverse(all); //倒叙排列
          }
      }else {
          all=assistantJBList;        //从静态list里面去拿list
          if(!way.equals("order")){     //倒叙排列
              Collections.reverse(all);
          }else{
              all = assiatantService.getAll();
              assistantJBList=all;         //更新静态list数据

          }
      }



      model.addAttribute("assistant",all);


      return new ModelAndView("/myjsp/pages/assistant");
  }

}
