package cn.Utils;

/**
 * Created by Administrator on 2017/5/9.
 */
public class UtilsGetChinese {

    public static String getChinese(String venue_name){
        if(venue_name!=null){
            if (venue_name.equals("basketball")){
                return "篮球馆" ;
            }else if(venue_name.equals("football")){
                return "足球馆";
            }else if(venue_name.equals("badminton")){
                return "羽毛球馆";
            }else if(venue_name.equals("natatorium")){
                return "游泳馆";
            }else {
                return "体育馆";
            }
        }
        return null;
    }
}
