package cn.Service;

import cn.Dao.gymDao;
import cn.Entity.gymnasiumJavaBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2017/5/4.
 */

@Service("GymService")
public class GymServiceImpl implements GymService {

    private  gymDao gymdao;

    @Autowired
    public GymServiceImpl(gymDao gymdao) {
        this.gymdao = gymdao;
    }

    public List<gymnasiumJavaBean> selectGym(String gym_name) {

        return null;
    }

    public List<gymnasiumJavaBean> selectGymAll() {


        List<gymnasiumJavaBean> list =new ArrayList<gymnasiumJavaBean>();
                list= gymdao.selectGymAll();

        return list;
    }

    public boolean insertGym(gymnasiumJavaBean gymnasium) {
        int i = gymdao.insertGym(gymnasium);

        return i!=0;
    }

    public List<gymnasiumJavaBean> selectGymByuser_id(int user_id) {
        return gymdao.selectGymByuser_id(user_id);
    }

    public gymnasiumJavaBean selectByGym_id(int gym_id) {
        return gymdao.selectByGym_id(gym_id);
    }


}
