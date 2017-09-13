package cn.Dao;

import cn.Entity.TeRepairJB;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;

/**
 * Created by baron on 17-6-10.
 * 对te_repair数据进行处理
 */
@Component
public interface Te_repairDao {


    //查询未完成的单
    List<TeRepairJB> findDoing();

    //查询所有单
    List<TeRepairJB> findAll(int i);

    //查询完成单的总数量
    int findFinishSum();

    //根据问题查询单
    List<TeRepairJB> findByQuestion(String question);


    //根据年月查询单
    List<TeRepairJB> findByDate(String mydate);


    //增加单
    int putData(TeRepairJB teRepairJB);

    //更新数据
    int update(TeRepairJB teRepairJB);


    //修改维修单状态
    int alterDeal(int is_deal,String name,int id);


    //修改维修单详情
    int alterRepair(TeRepairJB teRepairJB);


    //修改维修详情
    int alterReAssistant(String information,String summarize,int id);


    //完成维修
    int finish(int is_deal,String information,String summarize,String name,int name_id,int id);

    //根据id或者报修人名字查询行政单
    List<TeRepairJB> findByid(Map map);



    //评价
    int appraise(int appraise,String suggestion,String sign_user,int id);




}
