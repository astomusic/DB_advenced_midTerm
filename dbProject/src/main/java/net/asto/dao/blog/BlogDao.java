package net.asto.dao.blog;

import java.util.List;

import net.asto.domain.blog.Blog;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class BlogDao {
	
	@Autowired
	MongoTemplate mongoTemplate;
 
    private static String COLLECTION_NAME = "next";

    public Blog insert(Blog blog) {
        mongoTemplate.insert(blog, COLLECTION_NAME);
        return blog;
    }
    
    public void save(Blog blog) {
    	System.out.println(blog);
    	mongoTemplate.save(blog, COLLECTION_NAME);
    }
    
    public List<Blog> getBlogs() {
        return (List<Blog>) mongoTemplate.findAll(Blog.class, COLLECTION_NAME);
      }
 
}
