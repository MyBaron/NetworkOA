package cn.Control;

import cn.Entity.ToolListJB;
import cn.Service.ToolListService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
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


    //加载页面
    @RequestMapping("/getPage")
    private ModelAndView getPage(){
        return new ModelAndView("myjsp/pages/toollist");
    }






    //显示内容
    @RequestMapping("/get/{location_id}")
    private void get(@PathVariable String location_id, HttpServletResponse response){
        response.setContentType("utf-8");
        response.setCharacterEncoding("utf-8");
        List<ToolListJB> toolList= toolListService.get(location_id);
        try {
            PrintWriter writer = response.getWriter();
            Gson gson=new GsonBuilder()
                    .setDateFormat("yyyy-MM-dd hh:mm")
                    .create();
            writer.write(gson.toJson(toolList));
            writer.close();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    //存储内容
    @RequestMapping("/put")
    private void put(ToolListJB toolListJB,HttpServletResponse response){
        String s = toolListService.putData(toolListJB);
        try {
            PrintWriter writer = response.getWriter();
            writer.write(s);
            writer.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    //修改内容

    @RequestMapping("/alter")
    private void alter(ToolListJB toolListJB,HttpServletResponse response){
        String s = toolListService.alterData(toolListJB);
        try {
            PrintWriter writer = response.getWriter();
            writer.write(s);
            writer.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    //删除内容
    @RequestMapping("/delete")
    private void delete(@RequestParam int id, HttpServletResponse response){

        String s=toolListService.deleteByTool_id(id);
        try {
            PrintWriter writer = response.getWriter();
            writer.write(s);
            writer.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    //jstree 获取数据
    @RequestMapping("/tree")
    private void tree(@RequestParam String id, HttpServletResponse response){
        String tree = toolListService.tree(id);
        try {
            response.setCharacterEncoding("utf-8");
            response.setContentType("utf-8");
            PrintWriter writer = response.getWriter();
            writer.write(tree);
            writer.close();

        } catch (IOException e) {
            e.printStackTrace();
        }

    }
}
