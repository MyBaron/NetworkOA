package Utile;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

import java.util.Iterator;

/**
 * Created by Administrator on 2017/4/15.
 */
public class UtilGetQue_count {

    public static int[] getQue_count(String jsonString){

        //建立一个数组二维数组存储数据；
        int[][] array=null;
        int[] array1=null;
        int i,sum=-1;
        boolean b=true;
        if (jsonString!=null) {
            JsonObject asJsonObject = new JsonParser().parse(jsonString).getAsJsonObject();
            //data数组
            JsonElement data = asJsonObject.get("data");
            //遍历data数组
            JsonArray asJsonArray = data.getAsJsonArray();
            i=asJsonArray.size();
            Iterator<JsonElement> iterator = asJsonArray.iterator();
            while (iterator.hasNext()){
                sum++;
                int k=0;
                JsonArray url = iterator.next().getAsJsonObject().get("que_count").getAsJsonArray();
                //建立二维数组;
                if(b){
                    b=false;
                    array=new int[i][url.size()];
                }
                //遍历url
                Iterator<JsonElement> iterator1 = url.iterator();
                while(iterator1.hasNext()){
                    int jj=iterator1.next().getAsInt();
                    array[sum][k++]=jj;

                }
            }


            //接下来遍历数组进行相加

             array1=new int[array[0].length];

            for (int ii=0;ii<array[0].length;ii++){
                for (int iii=0;iii<array.length;iii++){
                    array1[ii]+=array[iii][ii];
                }
            }

        }
        return array1;
    }
}
