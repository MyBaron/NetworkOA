package cn.control;

import cn.Entity.venueJavaBean;
import cn.Service.VenueService;
import cn.Utils.UtilbeanToMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by Administrator on 2017/5/7.
         */
@Controller
@RequestMapping("/venue")
public class venueController {

    private final VenueService venueService;

    @Autowired
    public venueController(VenueService venueService) {
        this.venueService = venueService;
    }

    @RequestMapping("get/{otherVenue}")
    public ModelAndView getVenue(@PathVariable("otherVenue") String st, Model model){
        System.out.println(st);
        if (venueService!=null){
            venueJavaBean basketball = venueService.findOneVenue(st);
            if (basketball!=null) {
                Map<String, Object> map = UtilbeanToMap.beanToMap(basketball);
                model.addAllAttributes(map);
            }else {
                System.out.println("the basketball is null");
            }
        }


        return new ModelAndView("myjsp/pages/"+st);
    }
    @RequestMapping("/put/{otherVenue}")
    public ModelAndView putVenue(@PathVariable("otherVenue") String st, HttpServletRequest request) {
        //venueService.changeMessage()
        Map<String, String> map = new HashMap<String, String>();
        Enumeration<String> parameterNames = request.getParameterNames();
        while (parameterNames.hasMoreElements()) {
            String name = parameterNames.nextElement();
            map.put(name, request.getParameter(name));
        }
        System.out.println(map.toString());


        if (venueService != null){
            venueService.changeMessage(Integer.parseInt(map.get("venue_id")), Integer.parseInt(map.get("venue_open")), map.get("venue_address"), map.get("venue_phone"), Integer.parseInt(map.get("venue_total")),
                    map.get("venue_begin"), map.get("venue_close"), Integer.parseInt(map.get("venue_price")));
        }
      return  new ModelAndView("myjsp/pages/index");
    }
}
