package cn.Dao;

import cn.Entity.LocationJB;
import cn.Entity.ToolListJB;
import cn.Entity.Tree;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by Administrator on 2017/5/15.
 *
 * 对ToolList数据表进行处理
 */
@Component
public interface ToolListDao {


    //查找所有数据
    List<ToolListJB> selectAll();

    //增加数据
    int putData(ToolListJB toolListJB);

    //修改数据
    int alterData(ToolListJB toolListJB);

    //删除数据根据id
    int deleteByTool_id(int tool_id);

    //重置tool_id自增长
    int alterAUTO();

    //根据仓库位置，获取数据
    List<ToolListJB> get(int location_id);

    //根据ID获取数据
    ToolListJB findById(int id);


    //tree
    List<Tree> selectTree(int id);

    //查看该节点是否有子节点
    int selectTreeChildren(int id);

    //查找父节点
    LocationJB findFather(int id);
}
