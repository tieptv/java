package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;

import connect.ConnectDB;
import model.Car;

public class CarDao implements Dao<Car>{
	private static CarDao _instance;
	public static CarDao instance() {
		if (_instance == null)
			_instance = new CarDao();
		return _instance;
	}
	Logger log=Logger.getLogger(CarDao.class);
	@Override
	public List<Car> getAll() {
		ArrayList<Car> list = new ArrayList<Car>();
		try {
			Connection con = ConnectDB.getConnection();
			String sql = "select * from car";
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(sql);
			while (rs.next()) {
             Car car=new Car();
             car.setId(rs.getString(1));
             car.setMaker(rs.getString(2));
             car.setModel(rs.getString(3));
             car.setYear(rs.getInt(4));
             car.setColor(rs.getString(5));
             car.setNote(rs.getString(6));
             list.add(car);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;

	}
	@Override
	public boolean insert(Car o) {
		
	return false;
	}
	@Override
	public String update(Car o) {
		log.info(o.getId());
		String sql="update car set maker=?,model=?,year=?,color=?,note=? where carid=?";
		try {
			Connection con = ConnectDB.getConnection();
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, o.getMaker());
			ps.setString(2, o.getModel());
			ps.setInt(3, o.getYear());
			ps.setString(4, o.getColor());
			ps.setString(5, o.getNote());
			ps.setString(6, o.getId());
			ps.executeUpdate();
			ps.close();
			con.close();
			return "true";
		} catch (SQLException e) {
			return "false";
		}
	}
	@Override
	public boolean delete(String a) {
		String sql="delete from car where carid=?";
		try {
			Connection con = ConnectDB.getConnection();
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1,a);
			ps.executeUpdate();
			ps.close();
			con.close();
			return true;
		} catch (SQLException e) {
			return false;
		}
	}
	@Override
	public boolean delete(Object o) {
		// TODO Auto-generated method stub
		return false;
	}
	
}
