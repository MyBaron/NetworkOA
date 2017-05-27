package cn.Service;

import cn.Entity.ToolListJB;

import java.util.List;

/**
 * Created by Administrator on 2017/5/15.
 */
public interface ToolListService {

    //查找所有数据
    List<ToolListJB> selectAll();

    //增加数据
    boolean putData(String tool_name,int tool_sum,String tool_principal);

    //修改数据
    boolean alterData(String tool_name,int tool_sum,String tool_principal,int tool_id);

    //删除数据根据toolid
    boolean deleteByTool_id(int tool_id);

    //重置tool_id自增长
    boolean alterAUTO();
}
