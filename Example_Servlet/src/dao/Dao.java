package dao;

import java.util.List;

public interface Dao<T> {
 boolean insert(T o);
 boolean update(T o);
 boolean delete(Object o);
 List<T> getAll();
boolean delete(String a);
}
