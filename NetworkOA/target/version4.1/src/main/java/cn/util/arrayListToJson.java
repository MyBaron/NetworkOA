package cn.util;

import com.google.gson.Gson;

import java.util.List;

/**
 * Created by Administrator on 2017/4/19.
 */
public class arrayListToJson {
    //把ArrayList传过来，把他转换成json数据

    public static String arrayListToJson(List list){
        Gson gson = new Gson();
        String s = gson.toJson(list);
        return s;

    }
}
