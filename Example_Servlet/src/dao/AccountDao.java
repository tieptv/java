package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import connect.ConnectDB;
import model.Account;
import model.Car;

import org.apache.log4j.Logger;

import Until.MyUtils;

public class AccountDao implements Dao<Account> {
	private static AccountDao _instance;
	static Logger log = Logger.getLogger(AccountDao.class);

	public static AccountDao instance() {
		if (_instance == null)
			_instance = new AccountDao();
		return _instance;
	}

	public Account findAccount(String email, String password) {
		Connection con = ConnectDB.getConnection();
		String sql = "select * from Account where email=? and password=?";
		boolean flag = false;
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, email);
			String pass=MyUtils.getSHA256Hash(password);
			ps.setString(2, pass);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				Account user = new Account();
				user.setEmail(rs.getString(2));
				user.setPassword(rs.getString(3));
				return user;
			}
			rs.close();
			ps.close();
			con.close();

		} catch (SQLException e) {
			e.printStackTrace();
			log.debug("error");
		}
		return null;
	}

	public boolean insert(Account a) {
		Connection con = ConnectDB.getConnection();
		String sql = "insert into Account values(?,?)";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, a.getEmail());
			String pass=MyUtils.getSHA256Hash(a.getPassword());
			ps.setString(2,pass);
            ps.executeUpdate();		
			ps.close();
			con.close();
			return true;

		} catch (SQLException e) {
			e.printStackTrace();
			log.debug("error");
			return false;
		}
	}
	@Override
	public boolean update(Account o) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(Object o) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Account> getAll() {
		ArrayList<Account> list = new ArrayList<Account>();
		try {
			Connection con = ConnectDB.getConnection();
			String sql = "select * from account";
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(sql);
			while (rs.next()) {
             Account a=new Account();
             a.setId(rs.getInt(1));
             a.setEmail(rs.getString(2));
             a.setPassword(rs.getString(3));
             list.add(a);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public boolean delete(String a) {
		// TODO Auto-generated method stub
		return false;
	}


}
