package cn.Utils;

import com.google.gson.Gson;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by Administrator on 2017/5/4.
 */
public class UtilToJson {
    public static String toJson(String key,String values){
        Map<String,Object> map=new HashMap<String, Object>();
        Gson gson = new Gson();
        if(key!=null&&values!=null){
            map.put(key,values);
            return gson.toJson(map);
        }
        return null;
    }

    public static String toJson(Map<String,Object> map){
        if (map!=null){
            Gson gson = new Gson();
            return gson.toJson(map);

        }
        return null;
    }
}
