import Utile.UtilGetQue_count;
import org.junit.Test;

/**
 * Created by Administrator on 2017/4/15.
 */
public class TestUtilGetQue_count {

    @Test
    public void test() {
        String jsonString2="{\"name\":\"BeJson\",\"url\":\"http://www.bejson.com\",\"page\":88,\"isNonProfit\":true,\"address\":{\"street\":\"科技园路.\",\"city\":\"江苏苏州\",\"country\":\"中国\"},\"links\":[{\"name\":\"Google\",\"url\":[1,2,3,4,5,6]},{\"name\":\"Baidu\",\"url\":[2,3,4,5,6,7]},{\"name\":\"SoSo\",\"url\":[1,5,6,3,2,4]}]}";
        String jsonString = "{\"name\":\"BeJson\",\"url\":\"http://www.bejson.com\",\"data\":[{\"name\":\"Google\",\"url\":\"http://www.google.com\"},{\"name\":\"Baidu\",\"url\":\"http://www.baidu.com\"},{\"name\":\"SoSo\",\"url\":\"http://www.SoSo.com\"}]}";
        UtilGetQue_count.getQue_count(jsonString2);
    }







}
