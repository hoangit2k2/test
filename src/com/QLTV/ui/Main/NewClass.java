/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.QLTV.ui.Main;

import com.QLTV.DAO.PhieuMuonDAO;
import com.QLTV.DAO.ThongKeDAO;
import com.QLTV.utils.Share;
import java.sql.SQLException;

/**
 *
 * @author Owner
 */
public class NewClass {

    public static void main(String[] args) throws SQLException {
        ThongKeDAO dao = new ThongKeDAO();
        //int soluong = dao.demsoluong(Share.DocGia.getDgID());
        System.out.println(Share.thongKe.getSL());

    }
}
