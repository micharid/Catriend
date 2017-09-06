package fileUpload;
 
import java.awt.image.BufferedImage;
import java.io.File;
import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.UUID;
 
import javax.imageio.ImageIO;
 
import org.imgscalr.Scalr;
import org.springframework.util.FileCopyUtils;
 
 
public class UploadFileUtils {
    
	public static String uploadFile(String uploadPath, String originalName, byte[] fileData) throws Exception { //파일 업로드 
    	UUID uuid = UUID.randomUUID();  //파일명 중복 방지를 위한 uid 생성
    	String savedName = uuid.toString()+"_"+originalName;  // uid 와 기존 파일명을 합친후 저장

    	File target = new File(uploadPath,savedName);
    	FileCopyUtils.copy(fileData, target); //원본파일 생성

    	return savedName;
 
	}
	
	public static String uploadCat(String uploadPath, String originalName, byte[] fileData) throws Exception { //파일 업로드 
    	String savedName = originalName;  // uid 와 기존 파일명을 합친후 저장
    	File target = new File(uploadPath,savedName);
    	FileCopyUtils.copy(fileData, target); //원본파일 생성

    	return savedName;
 
	}
 
    private static String calcPath(String uploadPath) {  //오늘 날짜의 폴더 생성을 위해 날짜 계산 
        Calendar cal = Calendar.getInstance();
        String yearPath = File.separator+cal.get(Calendar.YEAR);
        
        String monthPath = yearPath + File.separator + new DecimalFormat("00").format(cal.get(Calendar.MONTH)+1);
        
        String datePath = monthPath + File.separator + new DecimalFormat("00").format(cal.get(Calendar.DATE));
        
        makeDir(uploadPath,yearPath,monthPath,datePath);
        
        return datePath;
    }
 
    private static void makeDir(String uploadPath,String...paths) {  //폴더 생성
        if(new File(paths[paths.length-1]).exists()){  //기존 날짜의 폴더가 있다면 return
            return;
        }
        for(String path: paths){
            
            File dirPath = new File(uploadPath+path);
            
            if(! dirPath.exists()){ //기존 날짜의 폴더가 없다면 폴더 생성
                dirPath.mkdir(); 
            }
        }
        // TODO Auto-generated method stub
    }
    
    private static String makeThumbnail(String uploadPath, String path, String fileName) throws Exception {  //썸네일 생성
        BufferedImage sourceImg = ImageIO.read(new File(uploadPath+path,fileName)); //원본 파일 읽기
        BufferedImage destImg = Scalr.resize(sourceImg, Scalr.Method.AUTOMATIC,400,400); //썸네일 환경설정후 변수 저장
        String thumbnailName = uploadPath+path+File.separator+"s_"+fileName; //썸네일 name
        File newFile = new File(thumbnailName);
        String formatName = fileName.substring(fileName.lastIndexOf(".")+1); //file 확장자
        ImageIO.write(destImg, formatName.toUpperCase(), newFile); //썸네일 file 생성 
        return thumbnailName.substring(uploadPath.length()).replace(File.separatorChar,'/'); //생성된 썸네일 name return
    }
    
}

