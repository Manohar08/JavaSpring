package mvc;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import com.dao.DaoImpl;
import com.dao.Blog;

@Controller
public class handlethis {
	
	@RequestMapping(path="/about",method=RequestMethod.POST)
	public String add(@RequestParam("text1")String heading,@RequestParam("textArea")String paragraph,
			@RequestParam("file1")CommonsMultipartFile  file,HttpSession session) throws IOException {
	ApplicationContext context1 =new ClassPathXmlApplicationContext("com/dao/dao.xml");
	       DaoImpl dao=context1.getBean("daoimp",DaoImpl.class);
	       //fetching data from form
	       String filename=file.getOriginalFilename();
	       Blog blog=new Blog();
	    blog.setBlog_image(filename);
	    blog.setBlog_Heading(heading);
        blog.setBlog_paragraph(paragraph);	       
	       
	       int data=dao.insert(blog);
	       System.out.println("rows inserted"  +data);
	//	System.out.println(file.getName());
	       byte[] bytes = file.getBytes();
		    String path=session.getServletContext().getRealPath("/")+"WEB-INF"+File.separator+"resources"+File.separator
		    		+"images"+File.separator+file.getOriginalFilename();
		    FileOutputStream fos=new FileOutputStream(path);
		     fos.write(bytes);
		     fos.close();
		    System.out.println(path);
		return "index";
	}
	
	@RequestMapping("/firstpage")
	public String show(Model model) {
		/*ApplicationContext context1 =new ClassPathXmlApplicationContext("com/dao/dao.xml");
	       DaoImpl dao=context1.getBean("daoimp",DaoImpl.class);
	       List<Blog> al1=dao.show_data();
	           
	       for(Blog b:al1) {
	    	   String image=b.getBlog_image();
	    	   String heading=b.getBlog_Heading();
	    	   String paragraph=b.getBlog_paragraph();
	    	    int ids =b.getBlog_id();
	    	   System.out.println("heading is"+ heading);
	    	   System.out.println("paragraph is"+paragraph);
	    	   System.out.println(ids);
	    	   System.out.println(image);
	       }
	       model.addAttribute("listitems", al1);*/
		
		return "viewpage";
	}
/*
	@RequestMapping("/finaldata")
	 public String finaldataa() {
		 
		 return "finaldata";
	 }*/
	//ABOUT US page info
	@RequestMapping("/aboutus")
public String aboutus() {
		
		return "AboutUs";
	
}
	
	//CONTACT US INFO
	@RequestMapping("/contactus")
	public String Contactinfo() {
		
		return "ContactUs";
	}
	
	
	

}

