package cn.Dao;

import cn.Entity.ToolListJB;

import java.util.List;

/**
 * Created by Administrator on 2017/5/15.
 *
 * 对ToolList数据表进行处理
 */
public interface ToolListDao {


    //查找所有数据
    List<ToolListJB> selectAll();

    //增加数据
    int putData(String tool_name,int tool_sum,String tool_principal);

    //修改数据
    int alterData(String tool_name,int tool_sum,String tool_principal,int tool_id);

    //删除数据根据toolid
    int deleteByTool_id(int tool_id);

    //重置tool_id自增长
    int alterAUTO();
}
