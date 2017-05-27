package cn.Service;

import cn.Entity.vippriceJavaBean;

import java.util.List;

/**
 * Created by Administrator on 2017/5/9.
 * 对会员价格表进行操作
 */
public interface VippriceService {

    //获取所有
    List<vippriceJavaBean> findAll();

    //根据id更新数据
   boolean upData(vippriceJavaBean vipprice);

    //添加数据
    boolean  putData(vippriceJavaBean vipprice);

    //根据vip等级寻找
    vippriceJavaBean findOne(int vip_grape);

    //根据id删除数据
    boolean deleteData(int id);

}
