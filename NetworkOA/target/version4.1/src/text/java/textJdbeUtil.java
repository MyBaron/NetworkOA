import cn.util.jdbcUtil;
import org.junit.Test;

import java.sql.Connection;

/**
 * Created by Administrator on 2017/4/10.
 */

public class textJdbeUtil {

    @Test
    public void jdbcUtilTest(){
        Connection con=null;
        con=jdbcUtil.getConnection();
        if(con!=null){
            System.out.println("connection is linking");
        }else System.out.println("null");
        jdbcUtil.closeAll(con,null,null);

    }

}
