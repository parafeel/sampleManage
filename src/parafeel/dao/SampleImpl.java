package parafeel.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import parafeel.pojo.Sample;

public class SampleImpl implements SampleDao {

	@Override
	public void insertSample(Sample s) {
		// TODO Auto-generated method stub
		Session session = null;
		Transaction transaction = null;
		try {
			session = HibernateUtil.getSession();
			transaction = session.beginTransaction();
			session.save(s);
			transaction.commit();
		} catch (HibernateException e) {
			// TODO: handle exception
			if(transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		} finally {
			if(session != null) {
				session.close();
			}
		}
	}

	@Override
	public void deleteSampleById(int id) {
		// TODO Auto-generated method stub
		Session session = null;
		Transaction transaction = null; 
        try{  
        	session = HibernateUtil.getSession();
			transaction = session.beginTransaction();
            //User user=(User)session.get(User.class, id);    
            Sample sample = new Sample();
            sample.setId(id);
			session.delete(sample); 
            transaction.commit();
        }catch(HibernateException e){  
        	if(transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
        }finally{  
        	if(session != null) {
				session.close();
			} 
        }  
	}

	@Override
	public void upadeSample(Sample s, int id) {
		// TODO Auto-generated method stub
		Session session = null;
		Transaction transaction = null;
		try {
			session = HibernateUtil.getSession();
			transaction = session.beginTransaction();
			//User user = (User) session.load(User.class, id);
			
			Sample sample = new Sample();
			sample.setId(id);
			sample.setResourceID(s.getResourceID());
			sample.setSampleID(s.getSampleID());
			sample.setSampleName(s.getSampleName());
			sample.setForeignName(s.getForeignName());
			sample.setOrigin(s.getOrigin());
			sample.setProvince(s.getProvince());
			sample.setCountry(s.getCountry());
			sample.setSampleClassID(s.getSampleClassID());
			sample.setSampleClass(s.getSampleClass());
			sample.setMainUse(s.getMainUse());
			sample.setGeologyPosition(s.getGeologyPosition());;
			sample.setBriefDescription(s.getBriefDescription());
			sample.setSpecificUse(s.getSpecificUse());
			sample.setSampleProvider(s.getSampleProvider());
			sample.setSampleProvideTime(s.getSampleProvideTime());
			sample.setSaveLocation(s.getSaveLocation());
			sample.setSampleNumber(s.getSampleNumber());
			sample.setLocationNumber(s.getLocationNumber());
			sample.setCollectionNumber(s.getCollectionNumber());
			sample.setCollectionCount(s.getCollectionCount());
			if(s.getResourceID() != null && s.getSampleID() !=null && s.getSampleName() !=null )
				session.update(sample);
			transaction.commit();
		} catch (HibernateException e) {
			// TODO: handle exception
			if(transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		} finally {
			if(session != null) {
				session.close();
			}
		}
	}
	
	@Override
	public Sample querySampleByID(int id) {
		Session session = null;
		Transaction transaction = null;
		Sample sample = null;
		try {
			session = HibernateUtil.getSession();
			transaction = session.beginTransaction();
			//User user = (User) session.load(User.class, id);
			//from User 中Sample应为映射的pojo
			sample = (Sample) session.get(Sample.class, id);
			transaction.commit();
		} catch (HibernateException e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			if(session != null) {
				session.close();
			}
		}
		return sample;
	}

	@Override
	public List<Sample> queryBysampleClass(String sampleClass) {
		// TODO Auto-generated method stub
		Session session = null;
		Transaction transaction = null;
		List<Sample> list = null;
		try {
			session = HibernateUtil.getSession();
			transaction = session.beginTransaction();
			String sql = "FROM Sample WHERE sampleClass = ?";
			Query q = session.createQuery(sql);
			q.setParameter(0, sampleClass);
			list = q.list();
			transaction.commit();
		} catch (HibernateException e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			if(session != null) {
				session.close();
			}
		}
		return list;
	}
	
	@Override
	public List<Sample> querySampleByResourceID(String resourceID) {
		// TODO Auto-generated method stub
		Session session = null;
		Transaction transaction = null;
		List<Sample> list = null;
		try {
			session = HibernateUtil.getSession();
			transaction = session.beginTransaction();
			//User user = (User) session.load(User.class, id);
			//from Sample 中Sample应为映射的pojo
			String sql = "FROM Sample WHERE resourceID like ?";
			Query q = session.createQuery(sql);
			q.setParameter(0, "%" + resourceID +"%");
			list = q.list();
			transaction.commit();
		} catch (HibernateException e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			if(session != null) {
				session.close();
			}
		}
		return list;
	}

	@Override
	public List<Sample> querySampleBysampleName(String sampleName) {
		// TODO Auto-generated method stub
		Session session = null;
		Transaction transaction = null;
		List<Sample> list = null;
		try {
			session = HibernateUtil.getSession();
			transaction = session.beginTransaction();
			//User user = (User) session.load(User.class, id);
			//from Sample 中Sample应为映射的pojo
			String sql = "FROM Sample WHERE sampleName like ?";
			Query q = session.createQuery(sql);
			q.setParameter(0,"%" + sampleName + "%");
			list = q.list();
			transaction.commit();
		} catch (HibernateException e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			if(session != null) {
				session.close();
			}
		}
		return list;
	}
	
	@Override
	public List<Sample> querySampleBySecectaction(String sampleClass,String resourceID, String sampleName) {
		// TODO Auto-generated method stub
				Session session = null;
				Transaction transaction = null;
				List<Sample> list = null;
				try {
					session = HibernateUtil.getSession();
					transaction = session.beginTransaction();
					String sql = "FROM Sample WHERE sampleclass like ? AND sampleName like ? AND resourceID like ?";
					Query q = session.createQuery(sql);
					q.setParameter(0, "%" + sampleClass + "%");
					q.setParameter(1, "%" + sampleName + "%");
					q.setParameter(2, "%" + resourceID + "%");
					list = q.list();
					transaction.commit();
				} catch (HibernateException e) {
					// TODO: handle exception
					e.printStackTrace();
				} finally {
					if(session != null) {
						session.close();
					}
				}
				return list;
	}

	@Override
	public List<Sample> queryAllSample() {
		Session session = null;
		Transaction transaction = null;
		List<Sample> list = null;
		try {
			session = HibernateUtil.getSession();
			transaction = session.beginTransaction();
			//User user = (User) session.load(User.class, id);
			//from Sample 中Sample应为映射的pojo
			String sql = "FROM Sample";
			Query q = session.createQuery(sql);
			list = q.list();
			transaction.commit();
		} catch (HibernateException e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			if(session != null) {
				session.close();
			}
		}
		return list;
	}

	
}
