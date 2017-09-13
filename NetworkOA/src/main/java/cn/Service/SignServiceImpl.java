package cn.Service;

import cn.Dao.SignDao;
import cn.Entity.SignJB;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.config.PropertyPlaceholderConfigurer;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * Created by baron on 17-6-4.
 */

@Service("SignService")
public class SignServiceImpl implements SignService {

    @Autowired
    private SignDao signDao;
    @Autowired
    private SignJB sign;





    public List<SignJB> findByMonth(String month) {
        return null;
    }

    public List<SignJB> fingByNameAndMonth(String name, String month) {
        System.out.println(name+"  "+month);
        return signDao.fingByNameAndMonth(name,month);
    }

    public double findTotalLongTime(String name, String month) {
        return 0;
    }

    public List<SignJB> findTody(String tody) {
        return signDao.findTody(tody);

    }

    public boolean putData(String myname, int assistant_id, Date sign_time, String sign_begin, String sign_end, double longtime, String account_name) {
        sign.setAll(myname,assistant_id,sign_time,sign_begin,sign_end,longtime,account_name);
         return signDao.putData(sign)!=0;

    }


}
