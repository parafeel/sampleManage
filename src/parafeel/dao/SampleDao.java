package parafeel.dao;

import java.util.List;

import parafeel.pojo.Sample;
import parafeel.pojo.User;

public interface SampleDao {
	void insertSample(Sample s);
	void deleteSampleById(int id);
	void upadeSample(Sample s,int id);
	Sample querySampleByID(int id);

	List<Sample> queryBysampleClass(String sampleClass);
	List<Sample> querySampleByResourceID(String resourceID);
	List<Sample> querySampleBysampleName(String sampleName);
	List<Sample> querySampleBySecectaction(String sampleClass,String resourceID,String sampleName);
	
	List<Sample> queryAllSample();
	
}
