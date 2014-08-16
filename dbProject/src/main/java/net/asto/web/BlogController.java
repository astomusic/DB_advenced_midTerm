package net.asto.web;

import net.asto.dao.blog.BlogDao;
import net.asto.domain.blog.Blog;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BlogController {
	private static final Logger log = LoggerFactory.getLogger(BlogController.class);
	
	@Autowired
	private BlogDao blogDao;
	
	@RequestMapping("/")
	public String blog() {
		Blog blog = new Blog("1", "1", "1", "1");
		blogDao.save(blog);
		//System.out.println(blogDao.getBlogs());
		
		log.debug("start!");
		return "blog";
	}

}
