package cn.Dao;

import cn.Entity.AssociateLogJB;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by Administrator on 2017/5/15.
 *
 * 对associatelog数据表进行操作
 */
@Component
public interface AssociateLogDao {

    //查询所有associate为1的交接
    List<AssociateLogJB> selectByAssociate();

    //查询所有交接
    List<AssociateLogJB> selectAll();

    //修改内容
    int updataByAssocitaLog_id(String associate_text,int associate_id);


    //更改 associate_open
    int updataAssociate_open(int associate_open,int associate_id);

    //存储数据
    int putData(int administrator_id,String associate_text);

    //查询总条数
    int findTotal();

    //每次获取多小页数
    List<AssociateLogJB> findByAmount(int start,int sum);
}
