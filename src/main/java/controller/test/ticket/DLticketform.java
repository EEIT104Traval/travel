package controller.test.ticket;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;

public class DLticketform {
	public static void main(String[] args) throws IOException {

		File ticketincsv = new File("../../../../webapp/resource/Ticket/ticket.csv"); // 讀取的CSV文檔
		File ticketoutcsv = new File("C:/Users/Emma/Desktop");// 寫出的CSV文檔

		try {
			InputStreamReader isr = new InputStreamReader(new FileInputStream(ticketincsv));// 待處理資料的檔案路徑
			BufferedReader reader = new BufferedReader(isr);
			BufferedWriter bw = new BufferedWriter(new FileWriter(ticketoutcsv));
			String line = null;
			while ((line = reader.readLine()) != null) {
				String item[] = line.split(",");
				bw.newLine();// 新起一行
				bw.write(",");// 寫到新檔案中
			}
			bw.close();
			reader.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
	}

}
