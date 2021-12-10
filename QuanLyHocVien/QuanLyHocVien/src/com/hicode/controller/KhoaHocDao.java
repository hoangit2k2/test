/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hicode.controller;
import com.hicode.service.ConnectSQL;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author HieuHoang
 */
public class KhoaHocDao {
    private Connection conn;

    public KhoaHocDao() {
        conn = ConnectSQL.getConnectSQL();
    }
    public int countKhoaHoc(){
        
        if (conn!=null){
            String sql = "select count(*) from KhoaHoc";
            try {
                PreparedStatement ps = conn.prepareStatement(sql);
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {                    
                    return rs.getInt(1);
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
        
        return -1;
        
    }
    
}
