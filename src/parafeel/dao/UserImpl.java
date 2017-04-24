package parafeel.dao;


import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import parafeel.pojo.User;

@Repository
public class UserImpl implements UserDao {

	@Override
	public void register(User u) {
		// TODO Auto-generated method stub
		Session session = null;
		Transaction transaction = null;
		try {
			session = HibernateUtil.getSession();
			transaction = session.beginTransaction();
			session.save(u);
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
	public User findUserByID(int id) {
		// TODO Auto-generated method stub
		Session session=null;  
        try{  
            session=HibernateUtil.getSession();  
            User user=(User)session.get(User.class, id);    
            return user;  
        }catch(HibernateException e){  
            e.printStackTrace();  
            return null;  
        }finally{  
            if(session!=null){  
                session.close();  
            }  
        }  
	}
	
	@Override
	public void deleteUser(int id) {
		// TODO Auto-generated method stub
		Session session = null;
		Transaction transaction = null; 
        try{  
        	session = HibernateUtil.getSession();
			transaction = session.beginTransaction();
            //User user=(User)session.get(User.class, id);    
            User user = new User();
            user.setId(id);
			session.delete(user); 
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
	public void upadeUser(User u,int id) {
		// TODO Auto-generated method stub
		Session session = null;
		Transaction transaction = null;
		try {
			session = HibernateUtil.getSession();
			transaction = session.beginTransaction();
			//User user = (User) session.load(User.class, id);
			User user = new User();
			user.setId(id);
			user.setUserName(u.getUserName());
			user.setUserPassword(u.getUserPassword());
			user.setUserEmail(u.getUserEmail());
			session.update(user);
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
	public boolean Login(User u) {
		// TODO Auto-generated method stub
		Session session = null;
		Transaction transaction = null;
		try {
			session = HibernateUtil.getSession();
			transaction = session.beginTransaction();
			//User user = (User) session.load(User.class, id);
			//from User 中User应为映射的pojo
			String sql = "FROM User WHERE userName = ? AND userPassword = ?";
			Query q = session.createQuery(sql);
			q.setParameter(0, u.getUserName());
			q.setParameter(1, u.getUserPassword());
			List<User> list = q.list();
			transaction.commit();
			if(!list.isEmpty()) {
				return true;
			} else {
				return false;
			}
		} catch (HibernateException e) {
			// TODO: handle exception
			e.printStackTrace();
			return false;
		} finally {
			if(session != null) {
				session.close();
			}
		}
	}


	
}
