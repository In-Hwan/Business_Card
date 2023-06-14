package business;
import java.sql.*;
import java.util.ArrayList;

public class BusinessDAO {
    private Connection conn;
    private ResultSet rs;

    public BusinessDAO() {
        try {
            String dbURL = "jdbc:mysql://smartfarmtest.cdletczkpejm.ap-northeast-2.rds.amazonaws.com:3306/smartfarm";
            String dbID = "admin";
            String dbPassword = "smartadmin";
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(dbURL, dbID, dbPassword);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public int getBcID() {
        String SQL = "SELECT bcID FROM business ORDER BY bcID DESC LIMIT 1";
        try {
            PreparedStatement pstmt = conn.prepareStatement(SQL);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                return rs.getInt(1);
            }
            return 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1;  // 데이터베이스 오류
    }

    public int getNext() {
        String SQL = "SELECT bcID FROM business ORDER BY bcID DESC";
        try {
            PreparedStatement pstmt = conn.prepareStatement(SQL);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                return rs.getInt(1) + 1;
            }
            return 1;

        } catch(Exception e){
            e.printStackTrace();
        }
        return -1;  // 데이터 베이스 오류
    }

    public int write(String company, String name, String phone, String fax, String address, String email) {
        String SQL = "INSERT INTO business VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        try {
            PreparedStatement pstmt = conn.prepareStatement(SQL);
            pstmt.setInt(1, getNext());
            pstmt.setString(2, company);
            pstmt.setString(3, name);
            pstmt.setString(4, phone);
            pstmt.setString(5, fax);
            pstmt.setString(6, address);
            pstmt.setString(7, email);
            pstmt.setInt(8,1);
            return pstmt.executeUpdate();

        } catch(Exception e){
            e.printStackTrace();
        }
        return -1;  // 데이터 베이스 오류
    }

    public ArrayList<Business> getList(int pageNumber) {
        String SQL = "SELECT * FROM business WHERE bcID < ? AND bcAvailable = 1 ORDER BY bcID DESC LIMIT 10";
        ArrayList<Business> list = new ArrayList<Business>();
        try {
            PreparedStatement pstmt = conn.prepareStatement(SQL);
            pstmt.setInt(1, getNext() - (pageNumber - 1) * 10);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                Business business = new Business();
                business.setBcID(rs.getInt(1));
                business.setCompany(rs.getString(2));
                business.setName(rs.getString(3));
                business.setPhone(rs.getString(4));
                business.setFax(rs.getString(5));
                business.setAddress(rs.getString(6));
                business.setEmail(rs.getString(7));
                business.setBcAvailable(rs.getInt(8));
                list.add(business);

            }

        } catch(Exception e){
            e.printStackTrace();
        }
        return list;
    }

    public boolean nextPage(int pageNumber) {
        String SQL = "SELECT * FROM business WHERE bcID < ? AND bcAvailable = 1";
        try {
            PreparedStatement pstmt = conn.prepareStatement(SQL);
            pstmt.setInt(1, getNext() - (pageNumber - 1) * 10);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                return true;
            }

        } catch(Exception e){
            e.printStackTrace();
        }
        return false;
    }

    public Business getBusiness(int bcID) {
        String SQL = "SELECT * FROM business WHERE bcID = ?";
        try {
            PreparedStatement pstmt = conn.prepareStatement(SQL);
            pstmt.setInt(1, bcID);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                Business business = new Business();
                business.setBcID(rs.getInt(1));
                business.setCompany(rs.getString(2));
                business.setName(rs.getString(3));
                business.setPhone(rs.getString(4));
                business.setFax(rs.getString(5));
                business.setAddress(rs.getString(6));
                business.setEmail(rs.getString(7));
                business.setBcAvailable(rs.getInt(8));
                return business;
            }

        } catch(Exception e){
            e.printStackTrace();
        }
        return null;
    }

    public int update(String company, String name, String phone, String fax, String address, String email, int bcID) {
        String SQL = "UPDATE business  SET company = ?, name = ?, phone = ?, fax = ?, address = ?, email = ? WHERE bcID = ?";
        try {
            PreparedStatement pstmt = conn.prepareStatement(SQL);
            pstmt.setString(1, company);
            pstmt.setString(2, name);
            pstmt.setString(3, phone);
            pstmt.setString(4, fax);
            pstmt.setString(5, address);
            pstmt.setString(6, email);
            pstmt.setInt(7, bcID);
            return pstmt.executeUpdate();

        } catch(Exception e){
            e.printStackTrace();
        }
        return -1;  // 데이터 베이스 오류
    }

    public int delete(int bcID) {
        String SQL = "UPDATE business SET bcAvailable = 0 WHERE bcId = ?";
        try {
            PreparedStatement pstmt = conn.prepareStatement(SQL);
            pstmt.setInt(1, bcID);
            return pstmt.executeUpdate();
        } catch(Exception e){
            e.printStackTrace();
        }
        return -1;  // 데이터 베이스 오류
    }

}