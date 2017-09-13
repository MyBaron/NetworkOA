package cn.Utils;

/**
 * Created by baron on 17-8-8.
 * 分页
 */
public class UtilsPages {


    public static int UtilsPages(int page,int sum){

        int begin=0;

        if(page<=1){
            page=1;
        }else {
            page -= 1;
            begin=sum*(page-1);
        }
        return begin;
    }
}
