package bank.doa;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class QueryClass {
	
	  connectionClass c=new connectionClass();
	  Connection con=c.connectionMeathod();
		public PreparedStatement insert() {
			PreparedStatement ps;
			try {
				ps = con.prepareStatement("insert into bank (name,password,amount,USERNAME,ACCOUNT_TYPE) values (?,?,?,?,?)");
				return ps;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return null;
		}
		public PreparedStatement authenticate() {
			PreparedStatement ps;
			try {
				ps = con.prepareStatement("select * from bank where username=? and password=?");
				return ps;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return null;
		}
		public PreparedStatement getRecord() {
			PreparedStatement ps;
			try {
				ps = con.prepareStatement("select * from bank where username=? and password=?");
				return ps;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return null;
		}
		
		public PreparedStatement updateAmount() {
			PreparedStatement ps;
			try {
				ps = con.prepareStatement("update bank set AMOUNT=? where USERNAME=? and PASSWORD=?");
				return ps;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return null;
		}
		public PreparedStatement deleteAccount() {
			PreparedStatement ps;
			try {
				ps = con.prepareStatement("delete from bank where USERNAME=? and PASSWORD=?");
				return ps;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return null;
		}
		public PreparedStatement getRecordCount() {
			PreparedStatement ps;
			try {
				ps=con.prepareStatement("SELECT COUNT(*) FROM bank");
				return ps;
			}
			catch (Exception e) {
				System.out.println(e);
			}
			return null;
		}
		public PreparedStatement insertTransaction() {
			PreparedStatement ps;
			try {
				ps=con.prepareStatement("INSERT INTO transaction (transaction_date,amount,mobileNumber,PAYMENT_ACC_NUMBER)values(?,?,?,?)");
				return ps;
			}
			catch (Exception e) {
				System.out.println(e);
			}
			return null;
		}
		public PreparedStatement showTransaction() {
			PreparedStatement ps;
			try {
				ps=con.prepareStatement("SELECT * FROM transaction WHERE TRANSACTION_ID = (SELECT max(TRANSACTION_ID) FROM transaction)");
				return ps;
			}
			catch (Exception e) {
				System.out.println(e);
			}
			return null;
		}
		public PreparedStatement showRechargeForMobileNumber() {
			PreparedStatement ps;
			try {
				ps=con.prepareStatement("SELECT * FROM transaction WHERE MOBILENUMBER=?");
				return ps;
			}
			catch (Exception e) {
				System.out.println(e);
			}
			return null;
		}
		
		
}
