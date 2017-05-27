package cn.control;

import cn.Entity.activityJavaBean;
import cn.Service.ActivityService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2017/5/8.
 */

@Controller
@RequestMapping("/activity")
public class activityController {
    private final ActivityService activityService;
    private final activityJavaBean activity;
    private Logger logger;
    @Autowired
    public activityController(ActivityService activityService, activityJavaBean activity) {
        this.activityService = activityService;
        logger =Logger.getLogger(activityController.class);
        this.activity = activity;
    }


    @RequestMapping("/get")
    public ModelAndView getAll(Model model){
       simp(model);
        return new ModelAndView("myjsp/pages/activity");
    }

    @RequestMapping("/put")
    public ModelAndView putDate(HttpServletRequest request,Model model){
        String activity_text = request.getParameter("activity_text");
        //获取当前时间
        Date date=new Date();
        Timestamp timestamp=new Timestamp(date.getTime());
        activity.setActivity_text(activity_text);
        activity.setActivity_time(timestamp);
         if(!activityService.putActicity(activity)){
             logger.error("putDate error");
         }
        simp(model);

        return new ModelAndView("myjsp/pages/activity");
    }

    @RequestMapping("/delete")
    public  ModelAndView deleteDate(HttpServletRequest request,Model model){
        String activity_id = request.getParameter("activity_id");
        if (activity_id!=null&&activityService!=null){
            activityService.deleteOne(Integer.parseInt(activity_id));
            activityService.renewAuto();
        }else {
            logger.error("the id is null or activityService is null");
        }
        simp(model);

        return new ModelAndView("myjsp/pages/activity");
    }


    private void simp(Model model){
        if(activityService!=null){
            List<activityJavaBean> all = activityService.findAll();
            model.addAttribute("activity",all);
        }else{
            logger.error("activityService is null");
        }
    }
}
