package cn.Service;

import cn.Entity.AssistantJB;

import java.util.List;

/**
 * Created by baron on 17-6-3.
 * 对assistant 进行操作
 */
public interface AssiatantService {


    //获取所有的数据
    List<AssistantJB> getAll();

    //根据ID获取该信息
    AssistantJB getById(int assistant_id);

    //根据ID修改数据
    boolean alterById(int assistant_id, String assistant_name, String assistant_profession, String assistant_grade, String assistant_birthday, String assistant_phone, String assistant_number, int assistant_working);


    boolean putData( String assistant_name, String assistant_profession, String assistant_grade, String assistant_birthday, String assistant_phone, String assistant_number, int assistant_working);

    //查询在任的人员

    List<AssistantJB> getWorking();
}
