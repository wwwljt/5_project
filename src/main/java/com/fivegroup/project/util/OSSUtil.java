package com.fivegroup.project.util;

import com.aliyun.oss.OSS;
import com.aliyun.oss.OSSClientBuilder;
import com.aliyun.oss.model.OSSObject;
import org.joda.time.DateTime;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URLEncoder;
import java.util.Properties;
import java.util.UUID;

/**
 * OSS 文件上传
 *
 * @author Www
 */
public class OSSUtil {
	/**
	 * 实例化Map的子类 Properties
	 */
	private static Properties properties = new Properties();
	
	static {
		//任意一个类的Class对象中都存在一个方法getResourceAsStream   可以把properties读成输入字节流
		InputStream inputStream = OSSUtil.class.getResourceAsStream("/project.properties");
		try {
			properties.load(inputStream);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 上传文件
	 *
	 * @param filePath
	 * @param multipartFile
	 * @return
	 */
	public static String uploadFile(String filePath, MultipartFile multipartFile) {
		InputStream inputStream = null;
		OSS ossClient = null;
		try {
			//   springmvc中提供文件处理对象   multipartFile获取到上传文件的原始名称 filePath=a/b/c/   aaa.png
			String originalFilename = multipartFile.getOriginalFilename();
			//获取原文件名称的后缀   aaa.png     suffix=.png
			String suffix = originalFilename.substring(originalFilename.lastIndexOf("."));
			//为了防止后上传的请求与先上传请求的文件名称一致，内容不同  ，被覆盖，所以一定要让保存到服务器上的文件名称不同
			String newFileName = UUID.randomUUID() + suffix;
			//springmvc中提供文件处理对象   multipartFile 直接获取上传文件的输入流
			inputStream = multipartFile.getInputStream();
			// 创建OSSClient实例。
			ossClient = new OSSClientBuilder().build(properties.getProperty("oss.endpoint")
					, properties.getProperty("oss.accessKeyId"),
					properties.getProperty("oss.accessKeySecret"));
			// InputStream inputStream = new FileInputStream(filePath);
			// 创建PutObject请求。  //filePath+"/"+newFileName = a/b/c/8e3f7b40-41bc-4125-bbcf-97b38dad4a2d.docx
			ossClient.putObject(properties.getProperty("oss.bucketName"), filePath + "/" + newFileName, inputStream);
			//https://testqy1.oss-cn-beijing.aliyuncs.com/a/b/c/8e3f7b40-41bc-4125-bbcf-97b38dad4a2d.docx
			return properties.getProperty("oss.url") + filePath + "/" + newFileName;
		} catch (Exception oe) {
			oe.printStackTrace();
		} finally {
			if (ossClient != null) {
				ossClient.shutdown();
			}
			try {
				if (inputStream != null) {
					inputStream.close();
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return null;
	}
	
	/**
	 * 下载文件
	 *
	 * @param filePath
	 * @param response
	 */
	public static void downloadFile(String filePath, HttpServletResponse response) {
		OSS ossClient = null;
		BufferedInputStream bufferedInputStream = null;
		BufferedOutputStream bufferedOutputStream = null;
		//filePath = https://testqy1.oss-cn-beijing.aliyuncs.com/a/b/c/b57fb665-5619-4aea-8ea9-2da72bbf78df.png
		//按照官网的文档filePath=a/b/c/b57fb665-5619-4aea-8ea9-2da72bbf78df.png
		filePath = filePath.replace(properties.getProperty("oss.url"), "");
		String fileName = filePath.substring(filePath.lastIndexOf("/") + 1);
		try {
			// 创建OSSClient实例。
			ossClient = new OSSClientBuilder().build(properties.getProperty("oss.endpoint")
					, properties.getProperty("oss.accessKeyId"),
					properties.getProperty("oss.accessKeySecret"));
			// ossObject包含文件所在的存储空间名称、文件名称、文件元信息以及一个输入流。
			OSSObject ossObject = ossClient.getObject(properties.getProperty("oss.bucketName"),
					filePath);
			//得到要下载对象得输入流
			//设置下载文件的头部信息     attachment  附件
			//文件名如果包含中文需要指定编码
			response.setHeader("content-disposition", "attachment;filename=" + URLEncoder.encode(fileName, "UTF-8"));
			//字节输出流  下载的本质把服务上的文件对象变成输入流（内存）   然后把输入流的内容输出到相应对象HttpServletResponse的输出流中
			//套接缓存流，让下载文件速度提高
			bufferedInputStream = new BufferedInputStream(ossObject.getObjectContent());
			bufferedOutputStream = new BufferedOutputStream(response.getOutputStream());
			//定义缓存字节数组
			byte[] bytes = new byte[2048];
			//定义每次读取字节数
			int readNum = -1;
			//循环读写
			while ((readNum = bufferedInputStream.read(bytes)) != -1) {
				//System.out.println(readNum+".............................");
				//写入Response输出流
				bufferedOutputStream.write(bytes, 0, readNum);
			}
			bufferedOutputStream.flush();
           /* readNum=bufferedInputStream.read(bytes);
            while(readNum!=0){
                readNum=bufferedInputStream.read(bytes);
            }*/
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				ossClient.shutdown();
				if (bufferedOutputStream != null) {
					bufferedOutputStream.close();
				}
				if (bufferedInputStream != null) {
					bufferedInputStream.close();
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
	}
	
	/**
	 * 上传头像
	 *
	 * @param multipartFile
	 * @return
	 */
	public static String uploadFileAvatar(MultipartFile multipartFile) {
		try {
			// 创建OSSClient实例。
			String bucketName = properties.getProperty("oss.bucketName");
			String endpoint = properties.getProperty("oss.endpoint");
			OSS ossClient = new OSSClientBuilder().build(endpoint
					, properties.getProperty("oss.accessKeyId"),
					properties.getProperty("oss.accessKeySecret"));
			//获取上传文件输入流
			InputStream inputStream = multipartFile.getInputStream();
			
			//获取文件的名称
			String originalFilename = multipartFile.getOriginalFilename();
			
			//1、在文件名称里面添加随机唯一的值
			String uuid = UUID.randomUUID().toString().replaceAll("-", "");
			originalFilename = uuid + originalFilename;
			
			//2、把文件按照日期进行分类
			//2022/3/2/01.jpg
			//获取当前日期
			String datePath = new DateTime().toString("yyyy/MM/dd");
			
			//拼接
			originalFilename = datePath + "/" + originalFilename;
			
			//调用 oss 方法实现上传
			//第一个参数：bucket 名称
			//第二个参数： 上传到 oss 的文件路径 和文件的名称
			//第三个参数 上传文件输入流
			ossClient.putObject(bucketName, originalFilename, inputStream);
			
			// 关闭OSSClient。
			ossClient.shutdown();
			
			//需要 把上传到阿里云 oss 路径手动拼接出来
			//            https://w-guli-edu.oss-cn-beijing.aliyuncs.com/0092.jpg
			return "https://" + bucketName + "." + endpoint + "/" + originalFilename;
		} catch (IOException e) {
			e.printStackTrace();
			return null;
		}
		
	}
}


