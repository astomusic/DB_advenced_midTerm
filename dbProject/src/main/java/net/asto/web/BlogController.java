package net.asto.web;

import java.util.List;

import net.asto.dao.blog.BlogDao;
import net.asto.domain.blog.Blog;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BlogController {
	private static final Logger log = LoggerFactory.getLogger(BlogController.class);
	
	@Autowired
	BlogDao blogDao;
	
	@RequestMapping("/")
	public String blog(Model model) {
		List<Blog> list = blogDao.getBlogs();
		model.addAttribute("lists", list);

		log.debug("start!" + list);
		return "blog";
	}
	
	@RequestMapping("/newPost")
	public String newPost(Blog blog) {
		blogDao.insert(blog);

		log.debug("insert!" + blog);
		return "redirect:/";
	}
	
}
