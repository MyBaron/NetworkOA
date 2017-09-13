package cn.Service;

import cn.Entity.ToolListJB;

import java.util.List;

/**
 * Created by Administrator on 2017/5/15.
 */
public interface ToolListService {

    //查找所有数据
    List<ToolListJB> selectAll();

    //get获取数据
    List<ToolListJB> get(String location_id);

    //增加数据
    String putData(ToolListJB toolListJB);

    //修改数据
    String alterData(ToolListJB toolListJB);

    //删除数据根据toolid
    String deleteByTool_id(int id);

    //重置tool_id自增长
    boolean alterAUTO();

    //树查找
    String tree(String id);
}
