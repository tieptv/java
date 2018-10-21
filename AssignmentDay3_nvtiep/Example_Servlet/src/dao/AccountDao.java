package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import connect.ConnectDB;
import model.Account;
import org.apache.log4j.Logger;

public class AccountDao {
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
			ps.setString(2, password);
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

	public boolean insertAccount(Account a) {
		Connection con = ConnectDB.getConnection();
		String sql = "insert into Account values(?,?)";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, a.getEmail());
			ps.setString(2, a.getPassword());
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

}
