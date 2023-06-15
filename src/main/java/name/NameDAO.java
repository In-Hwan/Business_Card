package name;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class NameDAO {
    private Connection conn;
    private PreparedStatement pstmt;
    private ResultSet rs;

    public NameDAO() {
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

    // 로그인 메서드
    public int login(String userID, String userPassword) {
        String SQL = "SELECT userPassword FROM name WHERE userID = ?";
        try {
            pstmt = conn.prepareStatement(SQL);
            pstmt.setString(1, userID);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                if (rs.getString(1).equals(userPassword))
                    return 1; // 로그인 성공
                else
                    return 0; // 로그인 실패
            }
            return -1; // 아이디가 없음
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -2; // DB오류
    }

    public int join(Name name) {
        String SQL = "INSERT INTO name VALUES (?, ?, ?, ?)";
        try {
            pstmt = conn.prepareStatement(SQL);
            pstmt.setString(1, name.getUserID());
            pstmt.setString(2, name.getUserPassword());
            pstmt.setString(3, name.getUserName());
            pstmt.setString(4, name.getUserEmail());
            return pstmt.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();

        }
        return -1; // 데이터베이스 오류
    }

    public Name getName() {
        String SQL = "SELECT * FROM name";
        try {
            PreparedStatement pstmt = conn.prepareStatement(SQL);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                Name name = new Name();
                name.setUserID(rs.getString(1));
                name.setUserPassword(rs.getString(2));
                name.setUserName(rs.getString(3));
                name.setUserEmail(rs.getString(4));
                return name;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public ArrayList<Name> getList() {
        String SQL = "SELECT * FROM name";
        ArrayList<Name> list = new ArrayList<>();
        try {
            PreparedStatement pstmt = conn.prepareStatement(SQL);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                Name name = new Name();
                name.setUserID(rs.getString("userID"));
                name.setUserPassword(rs.getString("userPassword"));
                name.setUserName(rs.getString("userName"));
                name.setUserEmail(rs.getString("userEmail"));
                list.add(name);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

}