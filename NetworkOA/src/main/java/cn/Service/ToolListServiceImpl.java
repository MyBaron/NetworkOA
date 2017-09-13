package cn.Service;

import cn.Dao.ToolListDao;
import cn.Entity.LocationJB;
import cn.Entity.ToolListJB;
import cn.Entity.Tree;
import com.google.gson.Gson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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


    @Override
    public List<ToolListJB> get(String location_id) {

        List<ToolListJB> toolListJBS = toolListDao.get(Integer.parseInt(location_id));
        //获取location
        toolListJBS.forEach(s->s.setLocation(this.getLocation(s.getLocation_id())));
        return toolListJBS;
    }

    public String putData(ToolListJB toolListJB) {


        Map<String,Object> map=new HashMap<>();
        Gson gson=new Gson();

            if (toolListDao.putData(toolListJB) != 0) {
                map.put("message", "success");
            } else {
                map.put("message", "fail");
            }

         return gson.toJson(map);
    }

    /**
     *
     * @param toolListJB
     * @return 判断 查询现存数量是否符合修改变化
     */
    private boolean judgeSum(ToolListJB toolListJB){
        if(toolListJB.getId()!=0) {
            ToolListJB byId = toolListDao.findById(toolListJB.getId());
            int sum=byId.getSum()-toolListJB.getSum();
            System.out.println("变化的包数 "+sum);
            int re_sum=byId.getRe_sum()-sum;
            if(re_sum>=0){
                toolListJB.setRe_sum(re_sum);
                return true;
            }
        }
        return false;
    }

    public String alterData(ToolListJB toolListJB) {

        Map<String,Object> map=new HashMap<>();
        Gson gson=new Gson();
        //查询现存数量是否符合修改变化
        if(!judgeSum(toolListJB)){
            map.put("message","操作失败，请注意现存数量。");
        }else {
            if (toolListDao.alterData(toolListJB) != 0) {
                map.put("message", "success");
            } else {
                map.put("message", "fail");
            }
        }
        return gson.toJson(map);
    }

    public String deleteByTool_id(int id) {
        Map<String,Object> map=new HashMap<>();
        Gson gson=new Gson();
        if(toolListDao.deleteByTool_id(id)!=0){
            map.put("message", "success");
        }else {
            map.put("message", "删除失败噢");
        }
        return gson.toJson(map);
    }

    public boolean alterAUTO() {
        return toolListDao.alterAUTO()!=0;
    }

    @Override
    public String tree(String mid) {
        List<Tree> trees;
        System.out.println("id=="+mid);
        //没有父节点
        if (mid.equals("#")){
            trees = toolListDao.selectTree(0);
        }else {
            int i=Integer.parseInt(mid);
            trees=toolListDao.selectTree(i);
        }
        trees.forEach(s->{
                    if(toolListDao.selectTreeChildren(s.getId()) !=0){
                        s.setChildren(true);
                    }else {
                        s.setChildren(false);
                    }
                });
        Gson gson=new Gson();
        System.out.println("树节点： "+trees);
        return gson.toJson(trees);

    }


    //查询位置
    private String getLocation(int location_id){
        StringBuilder location = new StringBuilder();
        //查询是否有up_id
        LocationJB father;
        father= toolListDao.findFather(location_id);
        location.insert(0, father.getText());
        location_id=father.getUp_id();

        while (location_id!=0){
            father= toolListDao.findFather(location_id);
            location.insert(0,father.getText()+"/");
            location_id=father.getUp_id();
        }

        System.out.println("位置: "+location);

        return location.toString();
    }
}
