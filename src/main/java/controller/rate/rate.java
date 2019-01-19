package controller.rate;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.sql.Connection;
//import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;

public class rate {
	public static void main(String[] args) {
		String s = null;
		Connection conn = null;
		try {
			String connUrl = "jdbc:sqlserver://localhost:1433;databaseName=Travel;useUnicode=true;characterEncoding=UTF-8;sendStringParametersAsUnicode=true";
			conn = DriverManager.getConnection(connUrl, "sa", "passw0rd");
			File f = new File("C:\\ratecsv.csv");
			BufferedReader br = new BufferedReader(new FileReader(f));

			String insStmt = "insert into rate (currency,updateTime,cashBuy,cashSell,spotBuy,spotSell,country) "
					+ "values(?,?,?,?,?,?,?)";
			PreparedStatement pstmt = conn.prepareStatement(insStmt);
			br.readLine();
			while ((s = br.readLine()) != null) {
				String[] a = s.split(",");
				pstmt.setString(1, a[0]);
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
				java.util.Date d = sdf.parse(a[1]);
				long l = d.getTime();
				pstmt.setDate(2, new java.sql.Date(l));
				pstmt.setDouble(3, Double.parseDouble(a[2]));
				pstmt.setDouble(4, Double.parseDouble(a[3]));
				pstmt.setDouble(5, Double.parseDouble(a[4]));
				pstmt.setDouble(6, Double.parseDouble(a[5]));
				pstmt.setString(7, a[6]);
				pstmt.executeUpdate();
			}
			br.close();
			pstmt.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (conn != null)
				try {
					conn.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
		}
	}
}
