package mvc;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.dao.Blog;
import com.dao.DaoImpl;

@Controller
public class Contoller2 {
	@RequestMapping("updateit")
	public String showupdate() {
		
		return "update";
		
	}
	
	
	@RequestMapping("updatedatas")
	public String Select_Update(@RequestParam("text11")String text_id,Model model) {
		ApplicationContext context1 =new ClassPathXmlApplicationContext("com/dao/dao.xml");
	       DaoImpl dao=context1.getBean("daoimp",DaoImpl.class);
	        int id=Integer.parseInt(text_id);	
	        Blog vlog=dao.getIdData(id);
	        int ids=vlog.getBlog_id();
	        String heading=vlog.getBlog_Heading();
	        String paragraph=vlog.getBlog_paragraph();
	        String image=vlog.getBlog_image();
	       model.addAttribute("head",heading);
	       model.addAttribute("paragraph",paragraph);
	       model.addAttribute("image", image);
	       model.addAttribute("id",ids );
	       System.out.println("id is"+ ids);
	        
		
		return "update";
		
	}
	
	@RequestMapping(value="updateeverything",method=RequestMethod.POST)
	public String Update(@RequestParam("updateheading")String headings,@RequestParam("updatetextarea")String paragraphs,
			@RequestParam("ids")int ids) {
		ApplicationContext context1 =new ClassPathXmlApplicationContext("com/dao/dao.xml");
	       DaoImpl dao=context1.getBean("daoimp",DaoImpl.class);
	          
	         dao.update_data(headings, paragraphs, ids);
		
		return "index";
	}
//hindi news
	
	@RequestMapping("/hindinews")
	public String hindinews() {
		
		return "hindinews";
	}
}
