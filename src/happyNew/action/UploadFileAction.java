package happyNew.action;

import happyNew.entity.FindPeopleInformation;
import happyNew.service.FindPeopleInformationServiceImpl;
import happyNew.service.FindPeopleInformationServiceI;
import happyfind.service.SystemLogServiceI;
import happyfind.utils.CommonData;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;

@ParentPackage(value="basePackage")
@Namespace("/")
@Action(value="uploadAction")
@Results(value = {
@Result(name ="upload", location = "/viewMan/upload.ftl"),
})
public class UploadFileAction {
	
	
	//上传
	private File file;// 封装上传文件域的属性
    private String fileContentType;// 封装上传文件类型的属性
    private String fileFileName;// 封装上传文件名的属性
    private String savePath="/temp";// 接受依赖注入的属性
	
	HttpServletResponse response = ServletActionContext.getResponse(); 
	
	
	
	public void uploadFile() throws IOException{
		response.setCharacterEncoding("UTF-8");
		String flag = new Date().getTime()+getFileFileName();
		String path = getSavePath()+"\\"+new Date().getTime()+getFileFileName();
        FileOutputStream fos = null;
        FileInputStream fis = null;
        try {
            // 建立文件输出流
            fos = new FileOutputStream(new File(getSavePath(), flag));
            // 建立文件上传流
            fis = new FileInputStream(getFile());
            byte[] buffer = new byte[1024];
            int len = 0;
            while ((len = fis.read(buffer)) > 0) {
                fos.write(buffer, 0, len);
            }
        } catch (Exception e) {
        	flag = "1";
            System.out.println("文件上传失败");
            e.printStackTrace();
        } finally {
            close(fos, fis);
        }
        response.getWriter().println(flag); 
	}
	
	
	public void downFile() throws IOException{
		FileOutputStream fos = null;
        FileInputStream fis = null;
		String filename=new String(fileFileName.getBytes("iso-8859-1"),"utf-8");
		String path = getSavePath()+"\\"+filename;
		
		try {
			File file=new File(path);
			response.setContentType("application/x-msdownload");
			response.setHeader("Content-Disposition","attachment;filename="+new String(filename.getBytes("utf-8"),"iso-8859-1")); 
			fis=new FileInputStream(file);
	        BufferedInputStream buff=new BufferedInputStream(fis);
	        byte [] b=new byte[1024];//相当于我们的缓存
	        long k=0;//该值用于计算当前实际下载了多少字节
	        //从response对象中得到输出流,准备下载
	        OutputStream myout=response.getOutputStream();
	        while(k<file.length()){
	            int j=buff.read(b,0,1024);
	            k+=j;
	            //将b中的数据写到客户端的内存
	            myout.write(b,0,j);
	        }
	        //将写入到客户端的内存的数据,刷新到磁盘
	        myout.flush();
		} catch (Exception e) {
			 System.out.println("文件下载失败");
	         e.printStackTrace();
		}finally {
            close(fos, fis);
        }
	}
	
	private void close(FileOutputStream fos, FileInputStream fis) {
        if (fis != null) {
            try {
                fis.close();
            } catch (IOException e) {
                System.out.println("FileInputStream关闭失败");
                e.printStackTrace();
            }
        }
        if (fos != null) {
            try {
                fos.close();
            } catch (IOException e) {
                System.out.println("FileOutputStream关闭失败");
                e.printStackTrace();
            }
        }
    }
	
	

	public File getFile() {
		return file;
	}

	public void setFile(File file) {
		this.file = file;
	}

	public String getFileContentType() {
		return fileContentType;
	}

	public void setFileContentType(String fileContentType) {
		this.fileContentType = fileContentType;
	}

	public String getFileFileName() {
		return fileFileName;
	}

	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}

	public String getSavePath() {
		return ServletActionContext.getServletContext().getRealPath(savePath); 
	}

	public void setSavePath(String savePath) {
		this.savePath = savePath;
	}

	
	
}
