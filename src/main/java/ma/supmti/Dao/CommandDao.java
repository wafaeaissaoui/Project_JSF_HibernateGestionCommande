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

public class CommandDao {
	private static Transaction transObj;
	private static Session sessionObj = HibernateUtil.getSessionFactory().openSession();
	
	public List<Command> findAllCommands() {
        List<Command> c = new ArrayList<Command>();
      
        try {
        	transObj = sessionObj.beginTransaction();
          c =sessionObj.createQuery("SELECT p FROM command p", Command.class).getResultList();    
           System.out.println("HELLO ME");
          transObj.commit();   
        } catch (RuntimeException e) {
            e.printStackTrace();
        } finally {  
        	 
        	
        }
        return c;
    }
	public List<Command> getCommandById(int CommandId) { 
		 List<Command> Command = new ArrayList<Command>();
	       
	      
	        try {transObj = sessionObj.beginTransaction();
	        Command =sessionObj.createQuery("from command where id= :CommandId").setParameter("CommandId", CommandId).getResultList();    
	              
	        } catch (RuntimeException e) {
	            e.printStackTrace();
	        } finally {
	            sessionObj.close();
	        }
	        return Command;
	    }
	public void addCommand(Command command) {        
        try {
        	transObj = sessionObj.beginTransaction();  
		     
		      User a =new User();
		      sessionObj.save(command);
		      transObj.commit(); 
            System.out.println("Command Record With Id: " + command.getId() + " Is Successfully Created In Database");

            FacesContext.getCurrentInstance().getExternalContext().getSessionMap().put("createdcommandId",  command.getId());                        
        } catch (Exception exceptionObj) {
            exceptionObj.printStackTrace();
        } finally {
        	
        }
    }
	 @SuppressWarnings("deprecation")
		public void deleteCommand(int delCommandId) {
		        try {
		        	transObj = sessionObj.beginTransaction();
					Product PROId = (Product)sessionObj.load(Product.class, new Integer(delCommandId));
					sessionObj.delete(PROId);
					System.out.println("command Record With Id: " +delCommandId+ " Is Successfully Deleted From Database");   
		            // XHTML Response Text
		            FacesContext.getCurrentInstance().getExternalContext().getSessionMap().put("deletedCommand Id",  delCommandId);  
		        } catch (Exception exceptionObj) {
		            exceptionObj.printStackTrace();
		        } finally {
					transObj.commit();
		        }
		    }
		 public void updateCommand(Command updateCommand ) {
		        try {
		        	transObj = sessionObj.beginTransaction();
					sessionObj.update(updateCommand );		
					System.out.println("Product Record With Id: " + updateCommand .getId() + " Is Successfully Updated In Database");	
		        
		 
		            // XHTML Response Text
		            FacesContext.getCurrentInstance().getExternalContext().getSessionMap().put("updateCommand ",  updateCommand );
		        } catch(Exception exceptionObj){
		            exceptionObj.printStackTrace();
		        } finally {
		            transObj.commit();
		        }
		    }


}
