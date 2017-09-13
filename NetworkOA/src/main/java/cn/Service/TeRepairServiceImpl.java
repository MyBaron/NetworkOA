package cn.Service;

import cn.Dao.Te_repairDao;
import cn.Entity.TeRepairJB;
import cn.Utils.UtilsPages;
import com.google.gson.Gson;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

/**
 * Created by baron on 17-6-10.
 */

@Service("TeReapirService")
public class TeRepairServiceImpl implements TeRepairService {

    @Autowired
    private Te_repairDao te_repairDao;
    @Autowired
    private TeRepairJB teRepairJB;
    private Logger logger=Logger.getLogger(TeRepairServiceImpl.class);



    public List<TeRepairJB> findDoing() {
        return te_repairDao.findDoing();
    }


    public List<TeRepairJB> findAll(int page) {
        //分页
        int i=UtilsPages.UtilsPages(page,10);
        return te_repairDao.findAll(i);
    }

    public int FinishSum(){
        return te_repairDao.findFinishSum();
    }


    public List<TeRepairJB> findByQuestion(String question) {
        return te_repairDao.findByQuestion(question);
    }

    public List<TeRepairJB> findByDate(String mydate) {
        return te_repairDao.findByDate(mydate);
    }

    public boolean putData(TeRepairJB teRepairJB) {
        Timestamp timestamp=new Timestamp(System.currentTimeMillis());
        teRepairJB.setTe_repair_time(timestamp);

        return te_repairDao.putData(teRepairJB) != 0;


    }


    public boolean update(TeRepairJB teRepairJB) {
        return false;
    }

    public boolean alterDeal(int is_deal, String name,int id) {
        return te_repairDao.alterDeal(is_deal,name,id)!=0;
    }

    public boolean alterRepair(int id,String te_repair_name, String te_repair_address, String te_repair_phone, String te_repair_type, String te_repair_question, String te_repair_message) {

        teRepairJB.playBill(id,te_repair_name,te_repair_address,te_repair_phone,te_repair_type,te_repair_question,te_repair_message);
        return  te_repairDao.alterRepair(teRepairJB)!=0;

    }

    public boolean alterReAssistant(String information, String summarize, int id) {
        return te_repairDao.alterReAssistant(information,summarize,id)!=0;
    }

    public  boolean finish(int is_deal, String information, String summarize,String name,int name_id, int id) {
        return te_repairDao.finish(is_deal,information,summarize,name, name_id,id)!=0;

    }

    public List<TeRepairJB> findByid(int id,String name) {

        Map<String,Object> map=new HashMap<>();
        map.put("id",id);
        map.put("name",name);
        return te_repairDao.findByid(map);
    }

    @Override
    public boolean appraise(TeRepairJB teRepairJB) {

        return te_repairDao.appraise(teRepairJB.getAppraise(),teRepairJB.getSuggest(), teRepairJB.getSign_user(),teRepairJB.getTe_repair_id())!=0;
    }

    /**
     * 生成表单
     * 获取id（插入数据的时候可以获取到id）
     * 返回表单
     * @param teRepairJB
     */
    @Override
    public TeRepairJB fontCreate(TeRepairJB teRepairJB) {

        //存入表单
        this.putData(teRepairJB);
        System.out.println(teRepairJB);
        //返回表单
        return teRepairJB;


    }

    @Override
    public List<TeRepairJB> checkTeBill(String n) {
        Gson gson=new Gson();
        Map map1=gson.fromJson(n, Map.class);
        System.out.println(map1.get("Name"));
        String name=map1.get("Name").toString();
        String password=map1.get("Password").toString();
        if(!password.equals("88825000")){
            return null;
        }

        Pattern pattern=Pattern.compile("[0-9]*");
        Map<String,Object> map=new HashMap<>();
        if(pattern.matcher(name).matches()){
            map.put("id",Integer.parseInt(name));
            map.put("name",null);
        }else {
            map.put("id",0);
            map.put("name",name);
        }
        return te_repairDao.findByid(map);


    }


}
