package cn.Control;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;

/**
 * Created by baron on 17-5-30.
 */
@Controller
@RequestMapping("/photo")
public class PhotoController {



   @RequestMapping("/get")
   @ResponseBody
   private String get(HttpServletRequest request) throws IOException {
      System.out.println("get");
      String mainPath=request.getServletContext().getRealPath("/jsp/myjsp/mypicture/images");
      File file_number=new File(mainPath);
      File[] files = file_number.listFiles();
      if(files==null){
         return "0";
      }
      String st=""+files.length;


      return st;

   }



   @RequestMapping("/upload")
   @ResponseBody
   private String upload(HttpServletRequest request) throws IOException {
      System.out.println("OK");
      //创建一个通用的多部分解析器.
      CommonsMultipartResolver commonsMultipartResolver = new
              CommonsMultipartResolver(request.getSession().getServletContext());
      String mainPath=request.getServletContext().getRealPath("/jsp/myjsp/mypicture/images");



      //设置编码
      commonsMultipartResolver.setDefaultEncoding("utf-8");
      //判断 request 是否有文件上传,即多部分请求...
      if (commonsMultipartResolver.isMultipart(request)) {
         //将request转换成多部分request
         MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;


         //获取multiRequest 中所有的文件名
         Iterator iter = multipartRequest.getFileNames();


         //多线程上锁
         getsynchronized(iter,mainPath,multipartRequest);




      }
      return "20";

   }

    //给上传照片进行上锁
   private static synchronized void getsynchronized(Iterator iter,String mainPath,MultipartHttpServletRequest multipartRequest) throws IOException {
      File file_number=new File(mainPath);
      File[] files = file_number.listFiles();
      int i=1;
      if(files!=null) {
         i = files.length;
      }
      while (iter.hasNext()) {
         //一次遍历所有文件
         MultipartFile file = multipartRequest.getFile(iter.next().toString());
         if (file != null) {
            String path = mainPath + "/" + ++i + ".jpg";
            System.out.println(path);
            //上传
            file.transferTo(new File(path));
         }
      }
   }

}
