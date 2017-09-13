package cn.Service;

import cn.Dao.AssistantDao;
import cn.Entity.AssistantJB;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by baron on 17-6-3.
 */

@Service("AssiatantService")
public class AssiatantServiceImpl implements AssiatantService {
    @Autowired
    private  AssistantDao assistantDao;
    @Autowired
    private AssistantJB assistantJB;



    public List<AssistantJB> getAll() {
        return assistantDao.getAll();

    }

    public AssistantJB getById(int assistant_id) {
        return assistantDao.getById(assistant_id);
    }

    public boolean alterById(int assistant_id, String assistant_name, String assistant_profession, String assistant_grade, String assistant_birthday, String assistant_phone, String assistant_number, int assistant_working) {
        assistantJB.setAll( assistant_id,  assistant_name,  assistant_profession,  assistant_grade,  assistant_birthday, assistant_phone, assistant_number,  assistant_working);

        int i = assistantDao.alterById(assistantJB);


        return i!=0;
    }

    public boolean putData(String assistant_name, String assistant_profession, String assistant_grade, String assistant_birthday, String assistant_phone, String assistant_number, int assistant_working) {
        assistantJB.setAll( assistant_name,  assistant_profession,  assistant_grade,  assistant_birthday, assistant_phone, assistant_number,  assistant_working);
        int i=assistantDao.putData(assistantJB);

        return i!=0;
    }

    public List<AssistantJB> getWorking() {

        return assistantDao.getWorking();
    }
}
