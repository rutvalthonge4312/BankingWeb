package bank.doa;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bank.model.dataSetter;
import bank.model.dataTransaction;

public class InsertDataToQury {
	QueryClass query=new QueryClass();
	
	PreparedStatement ps;
	public PreparedStatement insertData(dataSetter data) {
		try {
			ps=query.insert();
			ps.setString(1, data.getName());
			ps.setString(2, data.getPassword());
			ps.setInt(3, data.getAmount());
			ps.setString(4, data.getUsername());
			ps.setString(5, data.getAccount_type());
			return ps;
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		return null;
		
	}
	
	public PreparedStatement authenticateData(dataSetter data) {
		try {
			ps=query.authenticate();
			ps.setString(1, data.getUsername());
			ps.setString(2, data.getPassword());
			
			return ps;
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		return null;
		
	}
	//getRecord
	public PreparedStatement getRecordData(dataSetter data) {
		try {
			ps=query.authenticate();
			ps.setString(1, data.getUsername());
			ps.setString(2, data.getPassword());
			
			return ps;
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		return null;
		
	}
	
	public PreparedStatement updateAmountData(dataSetter data) {
		try {
			ps=query.updateAmount();
			ps.setInt(1,data.getAmount());
			ps.setString(2, data.getUsername());
			ps.setString(3, data.getPassword());
			
			return ps;
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		return null;
		
	}
	//deleteAccount
	public PreparedStatement deleteAccountData(dataSetter data) {
		try {
			ps=query.deleteAccount();
		
			ps.setString(1, data.getUsername());
			ps.setString(2, data.getPassword());
			
			return ps;
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		return null;
		
	}
	//insertTransaction
	public PreparedStatement insertTransactionData(dataTransaction data) {
		try {
			ps=query.insertTransaction();
			
			 java.sql.Date sqlDate = java.sql.Date.valueOf(data.getDate());
			 
			ps.setDate(1,sqlDate);
			ps.setInt(2, data.getAmount());
			ps.setLong(3,data.getMobileNumber());
			ps.setInt(4, data.getAccountNUmber());
			return ps;
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		return null;
		
	}
	//showTransaction
	public ResultSet showTransactionData() {
		try {
			ps=query.showTransaction();
			ResultSet rs=ps.executeQuery();
			return rs;
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		return null;
		
	}
	//showRechargeForMobileNumber
	public ResultSet showRechargeForMobileNumberData(dataTransaction data) {
		try {
			ps=query.showRechargeForMobileNumber();
			ps.setLong(1,data.getMobileNumber());
			ResultSet rs=ps.executeQuery();
			return rs;
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		return null;
		
	}
	
}
