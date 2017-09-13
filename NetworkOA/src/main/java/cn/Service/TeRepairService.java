package cn.Service;

import cn.Entity.TeRepairJB;

import java.util.List;

/**
 * Created by baron on 17-6-10.
 */
public interface TeRepairService {

    //查询未完成的单
    List<TeRepairJB> findDoing();

    //查询所有单
    List<TeRepairJB> findAll(int type);

    //获得完成的总数
    int FinishSum();

    //根据问题查询单
    List<TeRepairJB> findByQuestion(String question);


    //根据年月查询单
    List<TeRepairJB> findByDate(String mydate);


    //增加单
    boolean putData(TeRepairJB teRepairJB);

    //更新数据
    boolean update(TeRepairJB teRepairJB);


    //修改维修单状态
    boolean alterDeal(int is_deal, String name, int id);

    //修改维修单详情
    boolean alterRepair(int id,String te_repair_name, String te_repair_address, String te_repair_phone, String te_repair_type, String te_repair_question, String te_repair_message);

    //修改维修详情
    boolean alterReAssistant(String information,String summarize,int id);


    //完成维修
    boolean finish(int is_deal,String information,String summarize,String name,int name_id,int id);

    //根据id或者姓名查询行政单
    List<TeRepairJB> findByid(int te_repair_id,String te_repair_name);

    //评价
    boolean appraise(TeRepairJB teRepairJB);


    /**
     * 前端用户报修模块
     */


    TeRepairJB fontCreate(TeRepairJB teRepairJB);

    List<TeRepairJB> checkTeBill(String name);

}
