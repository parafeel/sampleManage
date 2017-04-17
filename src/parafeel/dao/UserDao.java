package parafeel.dao;


import parafeel.pojo.User;


public interface UserDao {
	void register(User u);
	User findUserByID(int id);
	void deleteUser(int id);
	void upadeUser(User u,int id);
	boolean Login(User user);
}
