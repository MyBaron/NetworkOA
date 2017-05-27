import cn.service.UserServiceImpl;
import org.junit.Test;

/**
 * Created by Administrator on 2017/4/10.
 */
public class UserServiceTest {
    @Test
    public void registerTest(){
        String name="测试号3";
        String account="1234556";
        String password="123456";
        UserServiceImpl userService=new UserServiceImpl();
        System.out.println(userService.register(account, password, name));

    }
}
