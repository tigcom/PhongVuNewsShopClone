package Assignment_Java_5.Service;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import jakarta.servlet.ServletContext;

@Service
public class UploadFileService {
	@Autowired
	ServletContext app;
	public List<String> save(MultipartFile[] files) {
	    List<String> fileNames = new ArrayList<>();
	    File folder = new File(app.getRealPath("/image"));
	    folder.mkdirs(); 

	    for (MultipartFile file : files) {
	        if (!file.isEmpty()) {
	            File newfile = new File(folder, file.getOriginalFilename());
	            try {
	                file.transferTo(newfile);
	                fileNames.add(file.getOriginalFilename()); 
	                System.out.println(app.getRealPath("/image")+file.getOriginalFilename());
	            } catch (Exception e) {
	                e.printStackTrace();
	            }
	        }
	    }
	    return fileNames; 
	}
	

}
