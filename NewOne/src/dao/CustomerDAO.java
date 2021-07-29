package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import beans.Admin;
import beans.Customer;
public class CustomerDAO {


	@Autowired
	JdbcTemplate template;
		
	public JdbcTemplate getTemplate() {
		return template;
	}

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	public void insert(Customer s)
	{
		template.update("insert into customer values(?,?,?,?,?,?,?,?)",s.getEmail(),s.getFname(),s.getLname(),s.getContact(),s.getPwd(),s.getCity(),s.getCountry(),s.getPincode() );
	}

	public void insert1(Admin a) {
		// TODO Auto-generated method stub
		template.update("insert into admin values(?,?)", a.getEmail(),a.getPassword());
	}

	public List<Customer> check()
	{
		 return template.query("select * from customer", new RowMapper<Customer>() {

			@Override
			public Customer mapRow(ResultSet rs, int n) throws SQLException {
				return new Customer(rs.getString(1),rs.getString(2),rs.getString(3),rs.getInt(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getInt(8));
				
			}
		});
	}
}
