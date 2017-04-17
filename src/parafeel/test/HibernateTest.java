package parafeel.test;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.junit.Before;
import org.junit.Test;

import parafeel.dao.SampleImpl;
import parafeel.dao.UserImpl;
import parafeel.pojo.Sample;
import parafeel.pojo.User;

public class HibernateTest {

	@Before
	public void setUp() throws Exception {
	}

	@Test
	public void test() {
		Sample s = new Sample();
		s.setResourceID("1017");
		s.setSampleName("gui");
		s.setSpecificUse("zboli");
		new SampleImpl().insertSample(s);
		//new SampleImpl().deleteSampleById(2);
		//List<Sample> l = new SampleImpl().queryAllSample();

	}

}
