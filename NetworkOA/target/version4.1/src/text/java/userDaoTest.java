import cn.dao.UserDaoImpl;
import cn.entity.userJavaBean;
import org.junit.Test;

/**
 * Created by Administrator on 2017/4/10.
 */
public class userDaoTest {

    @Test
    public void userDaoLoginTest(){
        UserDaoImpl userdao=new UserDaoImpl();
        userJavaBean userJavaBean = userdao.judgeAccAndPas("249790774@qq.com", "123456");
        if(userJavaBean!=null) {
            System.out.println( userJavaBean.toString());
        }else{
            System.out.println("the userJavaBean is null;");
        }
    }

    @Test
    public void userDaoJudge(){
        UserDaoImpl user=new UserDaoImpl();
        String user_name="测试号5";
        String user_account="12345699";
        String user_password="123456";
        boolean b = user.judgeAccount(user_account);
        boolean b1 = user.judgeName(user_name);
        System.out.println(b);
        System.out.println(b1);

        if(!b&&!b1){
            boolean b2 = user.putData(user_account, user_password, user_name);
            System.out.println(b2);
        }
    }
}
