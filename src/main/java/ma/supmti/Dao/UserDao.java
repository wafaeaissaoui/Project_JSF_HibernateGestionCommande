package ma.supmti.Dao;

import java.util.ArrayList;
import java.util.List;

import javax.faces.context.FacesContext;

import org.hibernate.Session;
import org.hibernate.Transaction;

import ma.supmti.entities.Command;
import ma.supmti.entities.Product;
import ma.supmti.entities.User;
import ma.supmti.util.HibernateUtil;

public class UserDao {
	private static Transaction transObj;
	private static Session sessionObj = HibernateUtil.getSessionFactory().openSession();
	
	public void addUser(User user) {        
        try {
        	transObj = sessionObj.beginTransaction();  
		     
		      User a =new User();
		      sessionObj.save(user);
		      transObj.commit(); 
            System.out.println("Admin Record With Id: " + a.getEmail() + " Is Successfully Created In Database");
           // System.out.println("Command Record With Id: " + command.getId() + " Is Successfully Created In Database");

            FacesContext.getCurrentInstance().getExternalContext().getSessionMap().put("createdcommandId",  user.getId());                        
        } catch (Exception exceptionObj) {
            exceptionObj.printStackTrace();
        } finally {
        	
        }
    }
	public List<User> findAllUsers() {
        List<User> User = new ArrayList<User>();
      
        try {
        	transObj = sessionObj.beginTransaction();
        	User =sessionObj.createQuery("SELECT p FROM product p", User.class).getResultList();    
           System.out.println("HELLO ME");
          transObj.commit();   
        } catch (RuntimeException e) {
            e.printStackTrace();
        } finally {  
        	 
        	
        }
        return User;
    }
	public void deleteUser(int delUserId) {
        try {
        	transObj = sessionObj.beginTransaction();
        	User UserId = (User)sessionObj.load (User.class, new Integer(delUserId));
			sessionObj.delete(UserId);
			System.out.println("User Record With Id: " +delUserId+ " Is Successfully Deleted From Database");   
            // XHTML Response Text
            FacesContext.getCurrentInstance().getExternalContext().getSessionMap().put("deletedUserId",  delUserId);  
        } catch (Exception exceptionObj) {
            exceptionObj.printStackTrace();
        } finally {
			transObj.commit();
        }
    }

}
