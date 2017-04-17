package parafeel.pojo;

public class Category {
	private int id;
	private String categoryClass;
	
	
	public Category() {
		super();
	}
	
	public Category(String categoryClass) {
		super();
		this.categoryClass = categoryClass;
	}

	public Category(int id, String categoryClass) {
		super();
		this.id = id;
		this.categoryClass = categoryClass;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCategoryClass() {
		return categoryClass;
	}
	public void setCategoryClass(String categoryClass) {
		this.categoryClass = categoryClass;
	}
	
	
	
}
