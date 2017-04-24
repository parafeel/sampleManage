package parafeel.Action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import parafeel.dao.SampleImpl;
import parafeel.pojo.Sample;


public class SelectAction {
	
	SampleImpl sampleImpl = new SampleImpl();
	
	String selectSampleClass;
	String selectSampleName;
	String selectResourceID;
	List<Sample> samples;
	
	public String getSelectSampleClass() {
		return selectSampleClass;
	}
	public void setSelectSampleClass(String selectSampleClass) {
		this.selectSampleClass = selectSampleClass;
	}
	public String getSelectSampleName() {
		return selectSampleName;
	}
	public void setSelectSampleName(String selectSampleName) {
		this.selectSampleName = selectSampleName;
	}
	public String getSelectResourceID() {
		return selectResourceID;
	}
	public void setSelectResourceID(String selectResourceID) {
		this.selectResourceID = selectResourceID;
	}
	public List<Sample> getSamples() {
		return samples;
	}
	public void setSamples(List<Sample> samples) {
		this.samples = samples;
	}
	
	public String adminSelect() {
		if(selectSampleName == null && selectResourceID==null) {
			samples = sampleImpl.queryBysampleClass(selectSampleClass);
		} 
		if(selectSampleName == null ) {
			samples = sampleImpl.querySampleBySecectaction(selectSampleClass, selectResourceID, "");
		}
		if(selectResourceID==null) {
			samples = sampleImpl.querySampleBySecectaction(selectSampleClass, "", selectSampleName);
		}
		samples = sampleImpl.querySampleBySecectaction(selectSampleClass, selectResourceID, selectSampleName);
		return "adminSelect";
	}
	
}
