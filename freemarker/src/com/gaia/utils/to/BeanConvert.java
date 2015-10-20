package com.gaia.utils.to;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import net.sf.json.JSONObject;
import org.apache.commons.beanutils.BeanUtils;

/**
 * 功能說明:<br>
 * @author 823285
 * <pre> 
 *  所需 jar
 *   jakarta commons-lang 2.5
 *   jakarta commons-beanutils 1.8.0
 *   jakarta commons-collections 3.2.1
 *   jakarta commons-logging 1.1.1
 *   ezmorph 1.0.6
 *
 *  parameter有可能是
 *   1. 複合性參數資訊, 要自己拆開放       
 *   2. json, 用 JSONString 轉成 Bean 
 *   3. 查詢/刪除的參數key, 可用bean  ->  bean
 *   4. 新增一筆資料 , value pair 可用bean ->   record bean
 *   5. 更新一筆資料, (key pair + value pair)可用bean ->   update bean 也是一個 bean
 * <b>Create Date</b> : 2015/10/2
 * <b>Notes</b> :
 *    A: EXTRA LIBRARY
 *    B: REMARK 
 * </pre>
 */
public class BeanConvert {
    /**
     * 以 bean的變數為主, 從 request parameter 抓取值 
     * 1. 查詢/刪除的參數key, 可轉成bean
     * 2. 新增一筆資料 , value pair 可用bean ->   record bean
     * 3. 更新一筆資料, (key pair + value pair)可用bean ->   update bean 也是一個 bean
     * 4. 複合性參數資訊, 要自己拆開放
     * @param request
     * @param t
     * @return
     */
    public static <T> T toBean(HttpServletRequest request, Class<T> t) throws BeanConvertException {               
        try {
            T bean = (T)t.newInstance();
            BeanUtils.populate(bean,  request.getParameterMap());
            return bean;
        } catch (Exception e) {
            throw new BeanConvertException(e);
        }
    }
    
    /**
     * 
     * json, 用 JSONString 轉成 Bean, bean中還有bean
     * 
     * @param json
     * @param t
     * @return
     */
    @SuppressWarnings("unchecked")
    public static <T> T json2Bean(String json, Class<T> t, Map<String, Class<?>> classMap) {        
        JSONObject jsonObject = JSONObject.fromObject(json);
        if (classMap == null) {
            return (T)JSONObject.toBean(jsonObject, t);
        } else {
            return (T)JSONObject.toBean(jsonObject, t, classMap);
        }
        
    }
    
    public static <T> T json2Bean(String json, Class<T> t){      
        return json2Bean(json, t, null);
    }
    
    /**
     * 將 VO 轉成 String
     * @param bean
     * @return
     */
    public static String bean2Json(Object bean) {      
        JSONObject jsonObj = JSONObject.fromObject(bean);
        return jsonObj.toString();
    }
}
