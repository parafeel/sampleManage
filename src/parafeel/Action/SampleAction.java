package parafeel.Action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.opensymphony.xwork2.ActionContext;

import parafeel.dao.SampleImpl;
import parafeel.pojo.Category;
import parafeel.pojo.Sample;

@Service
public class SampleAction {
	
	@Autowired
	SampleImpl sampleImpl;
	
	Sample sample;
	List<Sample> samples;
	List<Category> categorys;
	

	public Sample getSample() {
		return sample;
	}
	public void setSample(Sample sample) {
		this.sample = sample;
	}
	
	public List<Sample> getSamples() {
		return samples;
	}
	public void setSamples(List<Sample> samples) {
		this.samples = samples;
	}
	
	public List<Category> getCategorys() {
		return categorys;
	}
	public void setCategorys(List<Category> categorys) {
		this.categorys = categorys;
	}
	
	public List<Category> addCategorys() {
		List<Category> categoryClasses = new ArrayList<>();
		categoryClasses.add(new Category("矿物标本"));
		categoryClasses.add(new Category("岩石标本"));
		categoryClasses.add(new Category("矿石标本"));
		categoryClasses.add(new Category("化石标本"));
		return categoryClasses;
	}
	
	public int findCategoryNum(String s) {
		int i;
		switch (s) {
		case "矿物标本":
			i = 0;
			break;
		case "岩石标本":
			i = 1;
			break;
		case "矿石标本":
			i = 2;
			break;
		case "化石标本":
			i = 3;
			break;
		default:
			i = 0;
			break;
		}
		return i;
	}
	
	public String index() {
		return "index";
	}
	
	public String tryInsert() {
		categorys = this.addCategorys();
		return "insertJsp";
	}
	
	public String insert() {
		categorys = this.addCategorys();
		sampleImpl.insertSample(sample);
		return "list";
	}
	
	public String tryEdit() {
		categorys = this.addCategorys();
		sample = sampleImpl.querySampleByID(sample.getId());
		String sampleCategory = sample.getSampleClass();
		if(sampleCategory !=null && !"".equals(sampleCategory)) {
			categorys.remove(this.findCategoryNum(sampleCategory));
		}
		return "tryEdit";
	}
	public String edit() {
		sampleImpl.upadeSample(sample, sample.getId());
		return "list";
	}
	
	public String delete() {
		sampleImpl.deleteSampleById(sample.getId());
		return "list";
	}
	
	public String update() {
		sampleImpl.upadeSample(sample, sample.getId());
		return "list";
	}
	
	public String adminList() {
        samples = sampleImpl.queryAllSample();
        return "adminList";
	}
	
	public String classList() {
		samples = sampleImpl.queryBysampleClass(sample.getSampleClass());
		return "classList";
	}
	
	public String query() {
		sample = sampleImpl.querySampleByID(sample.getId());
		return "showDetail";
	}
	
	public String list() {
        samples = sampleImpl.queryAllSample();
        return "listJsp";
	}
	
	public String home() {
		return "goHome";
	}
	
}
