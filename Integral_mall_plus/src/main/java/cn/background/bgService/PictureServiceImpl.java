package cn.background.bgService;

import cn.Utils.FtpUtil;
import cn.Utils.IDUtils;
import cn.dao.PictureService;
import org.joda.time.DateTime;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.util.HashMap;
import java.util.Map;

/**
 * @author 赵铭涛
 * @creation time 2018/11/6 - 9:00
 * 图片上传服务
 */
@Service
public class PictureServiceImpl implements PictureService {
    //读取配置文件
   // @Value("${FTP_ADDRESS}")
    private String FTP_ADDRESS="47.107.135.170";//请求的ftp地址
   // @Value("${FTP_PORT}")
    private Integer FTP_PORT=21;//端口号默认21
   // @Value("${FTP_USERNAME}")
    private String FTP_USERNAME="ftpuser";//ftp服务器上的用户名
   // @Value("${FTP_PASSWORD}")
    private String FTP_PASSWORD="mengyuan";//密码
   // @Value("${FTP_BASE_PATH}")
    private String FTP_BASE_PATH="/Integral_images";//ftp图片路径
   // @Value("${IMAGE_BASE_URL}")
    private String IMAGE_BASE_URL="http://47.107.135.170:8080/Integral_images";//http图片路径
    @Override
    public Map uploadPicture(MultipartFile uploadFile) {
        Map resultMap =  new HashMap<>();
        try {
            String oldName = uploadFile.getOriginalFilename();//获得文件名字
            String newName = IDUtils.genImageName();//生成文件名字
            newName = newName + oldName.substring(oldName.lastIndexOf("."));//生成的文件名字+文件的后缀名
            //图片上传
            String imagePath = new DateTime().toString("/yyyy/MM/dd/");
            boolean result = FtpUtil.uploadFile(FTP_ADDRESS,FTP_USERNAME,FTP_PASSWORD,FTP_PORT,FTP_BASE_PATH,imagePath,newName,uploadFile.getInputStream());
            //返回结果
            if(!result){
                resultMap.put("error",1);
                resultMap.put("message","文件上传失败");
                System.out.println("文件上传失败");
                return resultMap;
            }
            resultMap.put("error",0);
            resultMap.put("url", IMAGE_BASE_URL + imagePath + "/" + newName);
            System.out.println(IMAGE_BASE_URL + imagePath + "/" + newName);
            return resultMap;
        }catch (Exception e){
        resultMap.put("error", 1);
        resultMap.put("message", "文件上传发生异常！");
        System.out.println("文件上传发生异常！");
        return resultMap;
    }
    }
}
