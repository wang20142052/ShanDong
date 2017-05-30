package com.dao;
import com.db.DBHelper;
import com.bean.applicationbean;

import java.util.*;
import java.sql.*;
public class applicationdao {
	//获取列表
	public List<applicationbean> GetList(String strwhere,String strorder){
		String sql="select * from TB,Teacher,Building where TB_TeacherID=Teacher_ID and TB_BuildingID=Building_ID";
		if(!(isInvalid(strwhere)))
		{
			sql+=" and "+strwhere;
		}
		if(!(isInvalid(strorder)))
		{
			sql+=" order by "+strorder;
		}
		Statement stat = null;
		ResultSet rs = null;
		Connection conn = new DBHelper().getConn();
		List<applicationbean> list=new ArrayList<applicationbean>();
		try{
			stat = conn.createStatement();
			rs = stat.executeQuery(sql);
			while(rs.next()){
				applicationbean cnbean=new applicationbean();
				cnbean.setenterprice_ID(rs.getString("enterprice_ID"));
				cnbean.setinvest_time(rs.getInt("invest_time"));
				cnbean.setstart_num(rs.getInt("start_num"));
				cnbean.setinvest_num(rs.getInt("invest_num"));
				cnbean.setdecrease_type(rs.getString("decrease_type"));
				cnbean.setfirst_reason(rs.getString("first_reason"));
				cnbean.setsecond_reason(rs.getString("second_reason"));
				cnbean.setthird_reason(rs.getString("third_reason"));
				list.add(cnbean);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (conn != null)
					conn.close();
				if (stat != null)
					stat.close();
				if (rs != null)
					rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
	}
	//得到特定表单
	public applicationbean GetBean(String enterpriceID){
		String sql="select * from  where enterprice_ID="+enterpriceID;
		Statement stat = null;
		ResultSet rs = null;
		Connection conn = new DBHelper().getConn();
		applicationbean cnbean=new applicationbean();
		try{
			stat = conn.createStatement();
			rs = stat.executeQuery(sql);
			while(rs.next()){
				cnbean.setenterprice_ID(rs.getString("enterprice_ID"));
				cnbean.setinvest_time(rs.getInt("invest_time"));
				cnbean.setstart_num(rs.getInt("start_num"));
				cnbean.setinvest_num(rs.getInt("invest_num"));
				cnbean.setdecrease_type(rs.getString("decrease_type"));
				cnbean.setfirst_reason(rs.getString("first_reason"));
				cnbean.setsecond_reason(rs.getString("second_reason"));
				cnbean.setthird_reason(rs.getString("third_reason"));
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (conn != null)
					conn.close();
				if (stat != null)
					stat.close();
				if (rs != null)
					rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return cnbean;
	}
	public void Add(applicationbean cnbean){
		String sql="insert into application (";
		sql+="enterprice_ID,invest_time,start_num,invest_num,decrease_type,first_reason,second_reason,third_reason,area_name";
		sql+=") values(";
		sql+="'"+cnbean.getenterprice_ID()+"','"+cnbean.getinvest_time()+"','"+cnbean.getstart_num()+"','"+cnbean.getinvest_num()+"','"+cnbean.getdecrease_type()+","+cnbean.getfirst_reason()+","+cnbean.getsecond_reason()+","+cnbean.getthird_reason()+","+cnbean.getarea_name()+"'";
		sql+=")";
		Statement stat = null;
		ResultSet rs = null;
		Connection conn = new DBHelper().getConn();
		try{
			stat = conn.createStatement();
			stat.executeUpdate(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (conn != null)
					conn.close();
				if (stat != null)
					stat.close();
				if (rs != null)
					rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	//修改
	public void Update(applicationbean cnbean){
		String sql="update application set ";
		sql+="start_num='"+cnbean.getstart_num()+"',";
		sql+="invest_num='"+cnbean.getinvest_num()+"',";
		sql+="decrease_type='"+cnbean.getdecrease_type()+"',";
		sql+="first_reason='"+cnbean.getfirst_reason()+"',";
		sql+="second_reason='"+cnbean.getsecond_reason()+"'";
		sql+="third_reason='"+cnbean.getthird_reason()+"'";
		sql+=" where enterprice_ID='"+cnbean.getenterprice_ID()+"'"+"&&invest_time='"+cnbean.getinvest_time()+"'";
		Statement stat = null;
		ResultSet rs = null;
		Connection conn = new DBHelper().getConn();
		try{
			stat = conn.createStatement();
			stat.executeUpdate(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (conn != null)
					conn.close();
				if (stat != null)
					stat.close();
				if (rs != null)
					rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	//删除
	public void Delete(String strwhere){
		String sql="delete application where ";
		sql+=strwhere;
		Statement stat = null;
		ResultSet rs = null;
		Connection conn = new DBHelper().getConn();
		try{
			stat = conn.createStatement();
			stat.executeUpdate(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (conn != null)
					conn.close();
				if (stat != null)
					stat.close();
				if (rs != null)
					rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	//判断是否为空
	private boolean isInvalid(String value) {
		return (value == null || value.length() == 0);
	}
	
	//测试
	public static void main(String[] args) {
		System.out.println("");
	}
}
