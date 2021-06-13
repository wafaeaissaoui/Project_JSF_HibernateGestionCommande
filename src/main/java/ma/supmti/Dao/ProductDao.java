package ma.supmti.Dao;
import ma.supmti.util.HibernateUtil;
import java.util.ArrayList;
import java.util.List;
import javax.faces.context.FacesContext;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import ma.supmti.entities.*;
import org.hibernate.SessionFactory;

public class ProductDao {
	private static Transaction transObj;
	private static Session sessionObj = HibernateUtil.getSessionFactory().openSession();
	
	
	 @SuppressWarnings("unchecked")
		public List<Product> findAllProducts() {
		        List<Product> products = new ArrayList<Product>();
		      
		        try {
		        	transObj = sessionObj.beginTransaction();
		           products =sessionObj.createQuery("SELECT p FROM product p", Product.class).getResultList();    
		           System.out.println("HELLO ME");
		          transObj.commit();   
		        } catch (RuntimeException e) {
		            e.printStackTrace();
		        } finally {  
		        	 
		        	
		        }
		        return products;
		    }
	 public List<Product> getProductById(int ProductId) { 
		 List<Product> products = new ArrayList<Product>();
	       
	      
	        try {
	        	transObj = sessionObj.beginTransaction();
	        	  products = sessionObj.createQuery("from Product where id= :ProductId").setParameter("ProductId", ProductId).getResultList();    
	              
	        } catch (RuntimeException e) {
	            e.printStackTrace();
	        } finally {
	            sessionObj.close();
	        }
	        return products;
	    }

	
	public void addProduct(Product product) {        
        try {
        	transObj = sessionObj.beginTransaction();
			sessionObj.save(product);
            System.out.println("product ajouter avec succes");
            FacesContext.getCurrentInstance().getExternalContext().getSessionMap().put("createdStudentId",  product.getId());	
        } catch (Exception exceptionObj) {
            exceptionObj.printStackTrace();
        } finally {
        	transObj.commit();
        }
    }
	
	 @SuppressWarnings("deprecation")
	public void deleteProduct(int delProductId) {
	        try {
	        	transObj = sessionObj.beginTransaction();
				Product PROId = (Product)sessionObj.load(Product.class, new Integer(delProductId));
				sessionObj.delete(PROId);
				System.out.println("product Record With Id: " +delProductId+ " Is Successfully Deleted From Database");   
	            // XHTML Response Text
	            FacesContext.getCurrentInstance().getExternalContext().getSessionMap().put("deletedStudentId",  delProductId);  
	        } catch (Exception exceptionObj) {
	            exceptionObj.printStackTrace();
	        } finally {
				transObj.commit();
	        }
	    }
	 public void updateProductRecord(Product updateProduct) {
	        try {
	        	transObj = sessionObj.beginTransaction();
				sessionObj.update(updateProduct);		
				System.out.println("Product Record With Id: " + updateProduct.getId() + " Is Successfully Updated In Database");	
	        
	 
	            // XHTML Response Text
	            FacesContext.getCurrentInstance().getExternalContext().getSessionMap().put("updateProduct",  updateProduct);
	        } catch(Exception exceptionObj){
	            exceptionObj.printStackTrace();
	        } finally {
	            transObj.commit();
	        }
	    }

	
}
