package name;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

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

}