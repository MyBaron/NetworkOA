package cn.Utils;

import org.apache.commons.beanutils.PropertyUtilsBean;

import java.beans.PropertyDescriptor;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by Administrator on 2017/5/5.
 */
public class UtilbeanToMap {
    //将JAVAbean实体类转为map类型。然后返回一个Map类型的值

    public static Map<String,Object> beanToMap(Object obj){
        Map<String, Object>  map= new HashMap<String, Object>();
        return simple(obj,map);
    }

    public static Map<String,Object> beanToMap(Object obj,Map<String,Object> map){
        return simple(obj,map);
    }


    private  static Map<String,Object> simple(Object obj,Map<String,Object> map){
        try{
            PropertyUtilsBean propertyUtilsBean=new PropertyUtilsBean();
            PropertyDescriptor[] descriptors=propertyUtilsBean.getPropertyDescriptors(obj);
            for (int i=0;i<descriptors.length;i++){
                String name=descriptors[i].getName();
                if(!"class".equals(name)){
                    map.put(name,propertyUtilsBean.getNestedProperty(obj,name));
                }
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return map;
    }

}
