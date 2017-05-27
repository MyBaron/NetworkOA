package cn.Service;

import cn.Dao.ToolListDao;
import cn.Entity.ToolListJB;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2017/5/15.
 */
@Service("ToolListService")
public class ToolListServiceImpl implements ToolListService {
    private final ToolListDao toolListDao;

    @Autowired
    public ToolListServiceImpl(ToolListDao toolListDao) {
        this.toolListDao = toolListDao;
    }


    public List<ToolListJB> selectAll() {
        return toolListDao.selectAll();
    }

    public boolean putData(String tool_name, int tool_sum, String tool_principal) {

        return toolListDao.putData(tool_name,tool_sum,tool_principal)!=0;
    }

    public boolean alterData(String tool_name, int tool_sum, String tool_principal, int tool_id) {

        return toolListDao.alterData(tool_name,tool_sum,tool_principal,tool_id)!=0;
    }

    public boolean deleteByTool_id(int tool_id) {
        if(toolListDao.deleteByTool_id(tool_id)!=0){
            return this.alterAUTO();
        }
        return false;
    }

    public boolean alterAUTO() {
        return toolListDao.alterAUTO()!=0;
    }
}
