package cn.control;

import cn.Entity.vipJavaBean;
import cn.Entity.vippriceJavaBean;
import cn.Service.VipService;
import cn.Service.VippriceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.logging.Logger;

/**
 * Created by Administrator on 2017/5/10.
 */
@Controller
@RequestMapping("/vip")
public class vipController {

    private final VippriceService vippriceService;
    private final VipService vipService;
    private Logger logger;

    @Autowired
    public vipController(VippriceService vippriceService, VipService vipService) {
        this.vippriceService = vippriceService;
        this.vipService = vipService;
        logger=Logger.getLogger("vipController");
    }

    @RequestMapping("/findAll")
    public ModelAndView findAll(Model model){
        List<vipJavaBean> all = vipService.findAll();
        model.addAttribute("vip",all);
        logger.info(all.toString());
        return new ModelAndView("myjsp/pages/viplist");
    }

    @RequestMapping("/discount")
    public  ModelAndView discount(Model model){
        List<vippriceJavaBean> all = vippriceService.findAll();
        model.addAttribute("vipprice",all);
        logger.info(all.toString());
        return new ModelAndView("myjsp/pages/vipprice");
    }
}
