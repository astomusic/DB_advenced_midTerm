package net.asto.domain.blog;

public class Blog {
	private String id;
	private String title;
	private String name;
	private String content;
	
	public Blog() {
		
	}

	public Blog(String id, String title, String name, String content) {
		super();
		this.id = id;
		this.title = title;
		this.name = name;
		this.content = content;
	}



	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}

	@Override
	public String toString() {
		return "Blog [id=" + id + ", title=" + title + ", name=" + name + ", content=" + content + "]";
	}


	
	
}
