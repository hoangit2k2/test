package com.hicode.swing;

import bll.BLLChiTietHoaDon;
import bll.BLLHoaDon;
import bll.BLLKhachHang;
import bll.BLLLoaiSanPham;
import bll.BLLSanPham;
import bll.ChuyenDoi;
import dao.DAOHoaDon;
import dao.DBConnection;
import dto.ChiTietHoaDon;
import dto.HoaDon;
import dto.KhachHang;
import dto.MyCombobox;
import gui.jdlAddSanPham;
import gui.jdlThemKhachHang;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Hashtable;
import javax.swing.table.DefaultTableModel;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.view.JasperViewer;

/**
 *
 * @author Owner
 */
public class Form6 extends javax.swing.JPanel {

    public Form6() {
        initComponents();
        conn = new DBConnection();
        ResultSet rsSP = dao.DAOSanPham.GetAll();
       // BLLSanPham.DoDuLieu(tblSanPham, rsSP);
//
//        BLLLoaiSanPham.DoDuLieuVaoCBBLoaiSanPham(cbbLoaiSP);
////        //keyword = ""; là load tất cả khách hàng
//        String keyword = "";
//        BLLKhachHang.DoDuLieuVaoCBBKhachHang(cbbKH, keyword);
////
//        txtSoHoaDon.setText(SoHoaDon());
////
//        txtNgayTao.setText(ChuyenDoi.DinhDangNgay(new Date()));

    }


    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        pnlSanPham = new javax.swing.JPanel();
        cbbLoaiSP = new javax.swing.JComboBox<>();
        txtTimTen = new javax.swing.JTextField();
        jScrollPane2 = new javax.swing.JScrollPane();
        tblSanPham = new javax.swing.JTable();
        pnlTTHoaDon = new javax.swing.JPanel();
        jLabel10 = new javax.swing.JLabel();
        txtTongTien = new javax.swing.JTextField();
        btnThanhToan = new javax.swing.JButton();
        jScrollPane1 = new javax.swing.JScrollPane();
        tblCTHD = new javax.swing.JTable();
        pnlHoaDon = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        txtNgayTao = new javax.swing.JTextField();
        jLabel2 = new javax.swing.JLabel();
        txtSoHoaDon = new javax.swing.JTextField();
        jLabel5 = new javax.swing.JLabel();
        txtTimKhachHang = new javax.swing.JTextField();
        jLabel6 = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        txtDiaChi = new javax.swing.JTextField();
        jLabel8 = new javax.swing.JLabel();
        txtDienThoai = new javax.swing.JTextField();
        jComboBox2 = new javax.swing.JComboBox<>();
        jLabel15 = new javax.swing.JLabel();
        txtGhiChu = new javax.swing.JTextField();
        cbbKH = new javax.swing.JComboBox<>();
        jLabel3 = new javax.swing.JLabel();
        jButton1 = new javax.swing.JButton();

        setBackground(new java.awt.Color(255, 255, 255));

        pnlSanPham.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(153, 153, 153)));

        cbbLoaiSP.setForeground(new java.awt.Color(255, 51, 102));
        cbbLoaiSP.addItemListener(new java.awt.event.ItemListener() {
            public void itemStateChanged(java.awt.event.ItemEvent evt) {
                cbbLoaiSPItemStateChanged(evt);
            }
        });

        txtTimTen.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                txtTimTenKeyReleased(evt);
            }
        });

        tblSanPham.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null, null},
                {null, null, null, null, null},
                {null, null, null, null, null},
                {null, null, null, null, null}
            },
            new String [] {
                "Mã", "Tên", "Giá", "Số lượng", "IDSanPham"
            }
        ) {
            boolean[] canEdit = new boolean [] {
                false, false, false, false, true
            };

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        tblSanPham.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                tblSanPhamMouseClicked(evt);
            }
        });
        jScrollPane2.setViewportView(tblSanPham);

        javax.swing.GroupLayout pnlSanPhamLayout = new javax.swing.GroupLayout(pnlSanPham);
        pnlSanPham.setLayout(pnlSanPhamLayout);
        pnlSanPhamLayout.setHorizontalGroup(
            pnlSanPhamLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(pnlSanPhamLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(pnlSanPhamLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
                    .addGroup(pnlSanPhamLayout.createSequentialGroup()
                        .addComponent(cbbLoaiSP, javax.swing.GroupLayout.PREFERRED_SIZE, 109, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(txtTimTen, javax.swing.GroupLayout.DEFAULT_SIZE, 122, Short.MAX_VALUE)))
                .addContainerGap())
        );
        pnlSanPhamLayout.setVerticalGroup(
            pnlSanPhamLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(pnlSanPhamLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(pnlSanPhamLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(cbbLoaiSP, javax.swing.GroupLayout.PREFERRED_SIZE, 31, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txtTimTen, javax.swing.GroupLayout.PREFERRED_SIZE, 31, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jScrollPane2, javax.swing.GroupLayout.DEFAULT_SIZE, 405, Short.MAX_VALUE)
                .addContainerGap())
        );

        pnlTTHoaDon.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(153, 153, 153)));

        jLabel10.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        jLabel10.setForeground(new java.awt.Color(51, 51, 255));
        jLabel10.setText("Tổng cộng");

        btnThanhToan.setText("Thanh toán");
        btnThanhToan.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnThanhToanActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout pnlTTHoaDonLayout = new javax.swing.GroupLayout(pnlTTHoaDon);
        pnlTTHoaDon.setLayout(pnlTTHoaDonLayout);
        pnlTTHoaDonLayout.setHorizontalGroup(
            pnlTTHoaDonLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(pnlTTHoaDonLayout.createSequentialGroup()
                .addGap(309, 309, 309)
                .addComponent(jLabel10)
                .addGap(0, 0, Short.MAX_VALUE))
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, pnlTTHoaDonLayout.createSequentialGroup()
                .addContainerGap(259, Short.MAX_VALUE)
                .addGroup(pnlTTHoaDonLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(txtTongTien, javax.swing.GroupLayout.PREFERRED_SIZE, 172, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, pnlTTHoaDonLayout.createSequentialGroup()
                        .addComponent(btnThanhToan)
                        .addGap(44, 44, 44)))
                .addGap(252, 252, 252))
        );
        pnlTTHoaDonLayout.setVerticalGroup(
            pnlTTHoaDonLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(pnlTTHoaDonLayout.createSequentialGroup()
                .addComponent(jLabel10)
                .addGap(12, 12, 12)
                .addComponent(txtTongTien, javax.swing.GroupLayout.PREFERRED_SIZE, 28, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(8, 8, 8)
                .addComponent(btnThanhToan, javax.swing.GroupLayout.DEFAULT_SIZE, 34, Short.MAX_VALUE)
                .addContainerGap())
        );

        tblCTHD.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "STT", "Mã hàng", "Tên hàng", "Số lượng", "Đơn giá", "Thành tiền", "Ghi chú", "IDSanPham"
            }
        ) {
            boolean[] canEdit = new boolean [] {
                true, false, false, true, true, false, false, false
            };

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        jScrollPane1.setViewportView(tblCTHD);

        pnlHoaDon.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(153, 153, 153)));

        jLabel1.setFont(new java.awt.Font("Arial", 1, 12)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(0, 0, 204));
        jLabel1.setText("Ngày tạo");

        jLabel2.setFont(new java.awt.Font("Arial", 1, 12)); // NOI18N
        jLabel2.setForeground(new java.awt.Color(0, 0, 204));
        jLabel2.setText("Số hóa đơn");

        jLabel5.setFont(new java.awt.Font("Arial", 1, 12)); // NOI18N
        jLabel5.setForeground(new java.awt.Color(0, 0, 204));
        jLabel5.setText("Tìm khách hàng");

        txtTimKhachHang.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                txtTimKhachHangKeyReleased(evt);
            }
        });

        jLabel6.setFont(new java.awt.Font("Arial", 1, 12)); // NOI18N
        jLabel6.setForeground(new java.awt.Color(0, 0, 204));
        jLabel6.setText("Nhân viên");

        jLabel7.setFont(new java.awt.Font("Arial", 1, 12)); // NOI18N
        jLabel7.setForeground(new java.awt.Color(0, 0, 204));
        jLabel7.setText("Địa chỉ");

        jLabel8.setFont(new java.awt.Font("Arial", 1, 12)); // NOI18N
        jLabel8.setForeground(new java.awt.Color(0, 0, 204));
        jLabel8.setText("Điện thoại");

        jComboBox2.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Nguyễn Bá Hoàng", "Ngô Duy Hòa", "Bùi Quốc Thinh", "Hồ Nguyên Quốc" }));

        jLabel15.setFont(new java.awt.Font("Arial", 1, 12)); // NOI18N
        jLabel15.setForeground(new java.awt.Color(0, 0, 204));
        jLabel15.setText("Ghi chú");

        cbbKH.addItemListener(new java.awt.event.ItemListener() {
            public void itemStateChanged(java.awt.event.ItemEvent evt) {
                cbbKHItemStateChanged(evt);
            }
        });

        jLabel3.setFont(new java.awt.Font("Arial", 1, 12)); // NOI18N
        jLabel3.setForeground(new java.awt.Color(0, 0, 204));
        jLabel3.setText("Khách hàng");

        jButton1.setText("+");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout pnlHoaDonLayout = new javax.swing.GroupLayout(pnlHoaDon);
        pnlHoaDon.setLayout(pnlHoaDonLayout);
        pnlHoaDonLayout.setHorizontalGroup(
            pnlHoaDonLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, pnlHoaDonLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(pnlHoaDonLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel6)
                    .addComponent(jLabel2)
                    .addComponent(jLabel1))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(pnlHoaDonLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(txtNgayTao)
                    .addComponent(txtSoHoaDon)
                    .addComponent(jComboBox2, 0, 143, Short.MAX_VALUE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(pnlHoaDonLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel3)
                    .addComponent(jLabel5)
                    .addComponent(jLabel7))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(pnlHoaDonLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(cbbKH, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addGroup(pnlHoaDonLayout.createSequentialGroup()
                        .addComponent(txtTimKhachHang, javax.swing.GroupLayout.PREFERRED_SIZE, 140, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jButton1))
                    .addComponent(txtDiaChi))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(pnlHoaDonLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel8)
                    .addComponent(jLabel15))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(pnlHoaDonLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(txtDienThoai, javax.swing.GroupLayout.DEFAULT_SIZE, 102, Short.MAX_VALUE)
                    .addComponent(txtGhiChu))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        pnlHoaDonLayout.setVerticalGroup(
            pnlHoaDonLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(pnlHoaDonLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(pnlHoaDonLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel1)
                    .addComponent(txtNgayTao, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel8)
                    .addComponent(txtDienThoai, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txtTimKhachHang, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel5)
                    .addComponent(jButton1))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(pnlHoaDonLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txtSoHoaDon, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel2)
                    .addComponent(jLabel3)
                    .addComponent(cbbKH, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel15)
                    .addComponent(txtGhiChu, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(pnlHoaDonLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel6)
                    .addComponent(jComboBox2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel7)
                    .addComponent(txtDiaChi, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(2, 2, 2)
                .addComponent(pnlSanPham, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(pnlHoaDon, javax.swing.GroupLayout.PREFERRED_SIZE, 685, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                        .addComponent(pnlTTHoaDon, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 685, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(pnlSanPham, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(pnlHoaDon, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(pnlTTHoaDon, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addGap(6, 6, 6))
        );
    }// </editor-fold>//GEN-END:initComponents

    private void cbbLoaiSPItemStateChanged(java.awt.event.ItemEvent evt) {//GEN-FIRST:event_cbbLoaiSPItemStateChanged
        MyCombobox cbb = (MyCombobox) cbbLoaiSP.getSelectedItem();
        ResultSet rsall = dao.DAOSanPham.Search(cbb.Value.toString(), txtTimTen.getText());
        BLLSanPham.DoDuLieu(tblSanPham, rsall);
    }//GEN-LAST:event_cbbLoaiSPItemStateChanged

    private void txtTimTenKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtTimTenKeyReleased
        MyCombobox cbb = (MyCombobox) cbbLoaiSP.getSelectedItem();
        ResultSet rsall = dao.DAOSanPham.Search(cbb.Value.toString(), txtTimTen.getText());
        BLLSanPham.DoDuLieu(tblSanPham, rsall);
    }//GEN-LAST:event_txtTimTenKeyReleased

    private void tblSanPhamMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_tblSanPhamMouseClicked
        if (evt.getClickCount() >= 2) {
            MaSP = tblSanPham.getValueAt(tblSanPham.getSelectedRow(), 0).toString();
            SoLuong = Integer.parseInt(tblSanPham.getValueAt(tblSanPham.getSelectedRow(), 3).toString());
            jdlAddSanPham jdl = new jdlAddSanPham(null, true);
            jdl.setVisible(true);
            System.out.println(SoLuong);
            System.out.println(GhiChu);

            String tenSP = tblSanPham.getValueAt(tblSanPham.getSelectedRow(), 1).toString();
            double thanhTien, dongia;
            dongia = Double.parseDouble(tblSanPham.getValueAt(tblSanPham.getSelectedRow(), 2).toString());
            thanhTien = dongia * SoLuong;

            int IDSanPham = Integer.parseInt(tblSanPham.getValueAt(tblSanPham.getSelectedRow(), 4).toString());

            ThemSanPhamTbCTHD(MaSP, tenSP, SoLuong, dongia, thanhTien, GhiChu, IDSanPham);
            txtTongTien.setText(ChuyenDoi.DinhDangTien(TinhTien()));
        }
    }//GEN-LAST:event_tblSanPhamMouseClicked

    private void btnThanhToanActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnThanhToanActionPerformed
        if (tblCTHD.getRowCount() <= 0) {
            GUI.ThongBao.ThongBao("Chưa chọn sản phẩm!", "Thông báo");
            return;
        }
        HoaDon hd = new HoaDon();
        hd.setSoHoaDon(txtSoHoaDon.getText());
        hd.setNgayTao(ChuyenDoi.LayNgay(txtNgayTao.getText()));
        hd.setMaNhanVien(2); //Đang gán cố định,
        MyCombobox cbb = (MyCombobox) cbbKH.getSelectedItem();
        hd.setMaKhachHang(Integer.parseInt(cbb.Value.toString()));
        hd.setTongTien(ChuyenDoi.ChuyenTien(txtTongTien.getText()));
        hd.setGhiChu(txtGhiChu.getText());

        //Thêm hóa đơn vào database
        DAOHoaDon.ThemHoaDon(hd);

        //Set MaHD mới thêm dc vào Hóa đơn hd
        hd.setMaHD(BLLHoaDon.GetMaHDBySoHoaDon(hd.getSoHoaDon()));

        //Thêm tất cả chi tiết hóa đơn theo MaHD vừa thêm
        ThemCTHDTuTable(hd.getMaHD());

        //gọi hàm xuất hóa đơn
        XuatHoaDon(hd.getMaHD());

        //tạo lại hóa đơn mới
        TaoMoiHD();

    }//GEN-LAST:event_btnThanhToanActionPerformed

    private void txtTimKhachHangKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtTimKhachHangKeyReleased
        String keyword = txtTimKhachHang.getText();
        BLLKhachHang.DoDuLieuVaoCBBKhachHang(cbbKH, keyword);
    }//GEN-LAST:event_txtTimKhachHangKeyReleased

    private void cbbKHItemStateChanged(java.awt.event.ItemEvent evt) {//GEN-FIRST:event_cbbKHItemStateChanged
        if (cbbKH.getItemCount() > 0) {
            MyCombobox cbb = (MyCombobox) cbbKH.getSelectedItem();
            KhachHang kh = BLLKhachHang.GetKHByMaKH(cbb.Value.toString());
            if (kh != null) {
                txtDiaChi.setText(kh.getDiaChi());
                txtDienThoai.setText(kh.getSoDienThoai());

            }
        }
    }//GEN-LAST:event_cbbKHItemStateChanged

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        jdlThemKhachHang jdl = new jdlThemKhachHang(null, true);
        jdl.setVisible(true);
        //Đổ lại dữ liệu tất cả cbb khách hàng
        String keyword = "";
        BLLKhachHang.DoDuLieuVaoCBBKhachHang(cbbKH, keyword);
    }//GEN-LAST:event_jButton1ActionPerformed


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnThanhToan;
    private javax.swing.JComboBox<String> cbbKH;
    private javax.swing.JComboBox<String> cbbLoaiSP;
    private javax.swing.JButton jButton1;
    private javax.swing.JComboBox<String> jComboBox2;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel15;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JPanel pnlHoaDon;
    private javax.swing.JPanel pnlSanPham;
    private javax.swing.JPanel pnlTTHoaDon;
    private javax.swing.JTable tblCTHD;
    private javax.swing.JTable tblSanPham;
    private javax.swing.JTextField txtDiaChi;
    private javax.swing.JTextField txtDienThoai;
    private javax.swing.JTextField txtGhiChu;
    private javax.swing.JTextField txtNgayTao;
    private javax.swing.JTextField txtSoHoaDon;
    private javax.swing.JTextField txtTimKhachHang;
    private javax.swing.JTextField txtTimTen;
    private javax.swing.JTextField txtTongTien;
    // End of variables declaration//GEN-END:variables
    public static DBConnection conn;
    public static String MaSP;
    public static int SoLuong;
    public static String GhiChu;

    private String SoHoaDon() {
        String soHoaDon = "";
        try {

            DateFormat dateFormat = new SimpleDateFormat("yyMMdd");

            Date d = new Date();

            soHoaDon = dateFormat.format(d);
            System.out.println("soHoaDon: " + soHoaDon);
            ResultSet rs = DAOHoaDon.CountSoHoaDon(soHoaDon);
            int rowCount = 0;
            if (rs.next()) {
                rowCount = rs.getInt(1);
            }
            boolean dup = false;
            do {
                if (rowCount > 98) {
                    soHoaDon = soHoaDon + (rowCount + 1);
                } else if (rowCount > 8) {
                    soHoaDon = soHoaDon + "0" + (rowCount + 1);
                } else {
                    soHoaDon = soHoaDon + "00" + (rowCount + 1);
                }
                System.out.println("soHoaDon: " + soHoaDon);
                ResultSet rs2 = DAOHoaDon.GetBySoHoaDon(soHoaDon);
                if (rs2.next()) {
                    dup = true;
                    rowCount++;
                    soHoaDon = dateFormat.format(d);
                } else {
                    dup = false;
                }
            } while (dup);

        } catch (SQLException ex) {
            System.out.println("Lỗi số hóa đơn");
        }

        return soHoaDon;
    }

    private void ThemCTHDTuTable(int MaHD) {
        for (int i = 0; i < tblCTHD.getRowCount(); i++) {

            int IDSanPham = Integer.parseInt(tblCTHD.getValueAt(i, 7).toString());
            int SoLuong = Integer.parseInt(tblCTHD.getValueAt(i, 3).toString());
            double ThanhTien = ChuyenDoi.ChuyenTien(tblCTHD.getValueAt(i, 5).toString());
            String GhiChu = tblCTHD.getValueAt(i, 6).toString();

            ThemChiTietHoaDon(MaHD, IDSanPham, SoLuong, ThanhTien, GhiChu);
        }
    }

    private void ThemChiTietHoaDon(int MaHD, int IDSanPham, int SoLuong,
            double ThanhTien, String GhiChu) {

        ChiTietHoaDon cthd = new ChiTietHoaDon();
        cthd.setMaHD(MaHD);
        cthd.setIDSanPham(IDSanPham);
        cthd.setSoLuong(SoLuong);
        cthd.setThanhTien(ThanhTien);
        cthd.setGhiChu(GhiChu);

        BLLChiTietHoaDon.Them(cthd);
    }

    public void XuatHoaDon(int idhd) {
        try {

            Hashtable map = new Hashtable();
            JasperReport report = JasperCompileManager.compileReport("src/gui/rptXuatHoaDon.jrxml");

            map.put("MaHD", idhd);

            JasperPrint p = JasperFillManager.fillReport(report, map, DBConnection.conn);
            JasperViewer.viewReport(p, false);
            JasperExportManager.exportReportToPdfFile(p, "test.pdf");
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
    }

    private void TaoMoiHD() {
        txtSoHoaDon.setText(SoHoaDon());

        DefaultTableModel tbModel = (DefaultTableModel) tblCTHD.getModel();
        tbModel.setRowCount(0);
    }

    private void ThemSanPhamTbCTHD(String maSP, String tenSP, int soLuong,
            double donGia, double thanhTien, String ghiChu, int IDSanPham) {

        DefaultTableModel tbModel = (DefaultTableModel) tblCTHD.getModel();

        Object obj[] = new Object[8];

        obj[0] = tbModel.getRowCount() + 1;
        obj[1] = maSP;
        obj[2] = tenSP;
        obj[3] = soLuong;
        obj[4] = ChuyenDoi.DinhDangTien(donGia);
        obj[5] = ChuyenDoi.DinhDangTien(thanhTien);
        obj[6] = ghiChu;
        obj[7] = IDSanPham;
        tbModel.addRow(obj);
    }

    private double TinhTien() {
        double tongTien = 0;
        for (int i = 0; i < tblCTHD.getRowCount(); i++) {
            tongTien += ChuyenDoi.ChuyenTien(tblCTHD.getValueAt(i, 5).toString());
        }

        return tongTien;
    }

}
