package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import connect.ConnectDB;
import model.Car;

public class CarDao {
	private static CarDao _instance;
	public static CarDao instance() {
		if (_instance == null)
			_instance = new CarDao();
		return _instance;
	}
	public List<Car> getListAll() {
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
}
