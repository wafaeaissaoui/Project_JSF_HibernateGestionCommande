package ma.supmti.entities;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Table;

import ma.supmti.Dao.CommandDao;
import ma.supmti.Dao.ProductDao;
import ma.supmti.Dao.UserDao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import static javax.persistence.GenerationType.IDENTITY;




@Entity
@Table(name = "user", catalog = "hibernate")
public class User implements java.io.Serializable {
	//private static final long serialVersionUID = 1L;

	@Id
    @Column(name = "id", unique = true, nullable = false)
	@GeneratedValue(strategy = IDENTITY)
	private Integer id;
	public User() {
		super();
	}
	public Integer getId() {
		return id;
	}
    
	public User(Integer id, String name, String tele, String email) {
		this.id = id;
		this.name = name;
		this.tele = tele;
		this.email = email;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTele() {
		return tele;
	}
	public void setTele(String tele) {
		this.tele = tele;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Column(name = "name")
	private String name;
	 @Column(name = "tele")
	private String tele;
	 @Column(name = "email",nullable = false)
	 private String email;
	 
	
	 public void saveUserRecord() {
	        System.out.println("Calling saveUserRecord() Method To Save user Record");
	        UserDao c= new UserDao();
	        c.addUser(this);
	    }
	 public List<User> getUser() {
		 UserDao dao = new UserDao();
			return dao.findAllUsers();
	}
	 public void delete(int id ) {
			System.out.println("Calling delete  Method To delete user Record");
			UserDao dao = new UserDao();
			  dao.deleteUser(id);
		}


}
