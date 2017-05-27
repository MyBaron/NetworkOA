package cn.Utils;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

/**
 * Created by Administrator on 2017/5/10.
 *
 *
 * 把timestamp转成特定的格式输出
 */
public class UtilChangeTimeStamp {

    public static String ChangeTimeStamp(Timestamp timestamp,String style){
        DateFormat dateFormat=new SimpleDateFormat(style);
        return dateFormat.format(timestamp);
    }
}
