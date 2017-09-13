package cn.Service;

import cn.Entity.AssociateLogJB;

import java.util.List;

/**
 * Created by Administrator on 2017/5/15.
 */
public interface AssociateLogService {

    //查询所有associate为1的交接
    List<AssociateLogJB> selectByAssociate();

    //查询所有交接
    List<AssociateLogJB> selectAll();

    //每次获取多小页数
    List<AssociateLogJB> findByAmount(int page,int total,int sum);

    //修改内容
    boolean updataByAssocitaLog_id(String associate_text,int associate_id);


    //更改 associate_open
    boolean updataAssociate_open(int associate_open,int associate_id);
    //查找总条数
    int findTotal();

    //存储数据
    boolean putData(int administrator_id,String associate_text);
}
