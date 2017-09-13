package cn.Dao;

import cn.Entity.AssistantJB;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by baron on 17-6-3.
 *
 * 对assistant表进行操作
 */
@Component
public interface AssistantDao {


    //获取所有的数据
    List<AssistantJB> getAll();

    //根据ID获取该信息
    AssistantJB getById(int assistant_id);

    //根据ID修改数据
    int alterById(AssistantJB assistantJB);

    //添加数据
    int putData(AssistantJB assistantJB);

    //查询在任的人员

    List<AssistantJB> getWorking();
}
