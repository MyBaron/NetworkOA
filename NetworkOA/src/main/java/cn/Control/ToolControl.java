package cn.Control;

import cn.Entity.ToolListJB;
import cn.Service.ToolListService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created by Administrator on 2017/5/15.
 */
@Controller
@RequestMapping("/tool")
public class ToolControl {
    private final ToolListService toolListService;
    private Logger logger;
    @Autowired
    public ToolControl(ToolListService toolListService) {
        this.toolListService = toolListService;
        logger=Logger.getLogger(ToolControl.class);
    }


    //显示内容
    @RequestMapping("/get")
    private ModelAndView get(Model model){
        List<ToolListJB> toolList= toolListService.selectAll();
        model.addAttribute("tool",toolList);
        return new ModelAndView("myjsp/pages/toollist");
    }

    //存储内容
    @RequestMapping("/put")
    private ModelAndView put(@RequestParam("tool_name") String tool_name,@RequestParam("tool_sum") int tool_sum,@RequestParam("tool_principal") String tool_principal, Model model){
        if(tool_name!=null&tool_principal!=null) {
            toolListService.putData(tool_name, tool_sum, tool_principal);
        }

        List<ToolListJB> toolList= toolListService.selectAll();
        model.addAttribute("tool",toolList);
        return new ModelAndView("myjsp/pages/toollist");
    }

    //修改内容
    //获取工具名字，数量，id,负责人
    @RequestMapping("/alter")
    private ModelAndView alter(@RequestParam("tool_name") String tool_name,@RequestParam("tool_sum") int tool_sum,@RequestParam("tool_principal") String tool_principal,@RequestParam("tool_id") int tool_id, Model model){
        if(tool_name!=null&tool_principal!=null) {
            toolListService.alterData(tool_name, tool_sum, tool_principal,tool_id);
        }

        List<ToolListJB> toolList= toolListService.selectAll();
        model.addAttribute("tool",toolList);
        return new ModelAndView("myjsp/pages/toollist");
    }

    //删除内容
    @RequestMapping("/delete")
    private ModelAndView delete(@RequestParam("tool_id") int tool_id, Model model){

        toolListService.deleteByTool_id(tool_id);



        List<ToolListJB> toolList= toolListService.selectAll();
        model.addAttribute("tool",toolList);
        return new ModelAndView("myjsp/pages/toollist");
    }

}
