/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hicode.swing;

import com.hicode.component.ListMenu;
import com.hicode.component.MenuModel;
import com.hicode.event.EventMenuSelected;
import java.awt.Color;
import java.awt.GradientPaint;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.RenderingHints;

/**
 *
 * @author HieuHoang
 */
public class Menu extends javax.swing.JPanel {

    private EventMenuSelected event;

    public void addEventMenuSelected(EventMenuSelected event) {
        this.event = event;
        listMenu1.addEventMenuSelected(event);
    }

    /**
     * Creates new form Menu
     */
    public Menu() {
        initComponents();
        setOpaque(false);
        listMenu1.addItem(new MenuModel("src\\com\\hicode\\icons\\7.png", "Trang Chủ", MenuModel.MenuType.MENU));
        listMenu1.addItem(new MenuModel("src\\com\\hicode\\icons\\7.png", "Trang Chủ", MenuModel.MenuType.EMPTY));

        listMenu1.addItem(new MenuModel("src\\com\\hicode\\icons\\10.png", "Kho Sách", MenuModel.MenuType.MENU));
        listMenu1.addItem(new MenuModel("src\\com\\hicode\\icons\\7.png", "Trang Chủ", MenuModel.MenuType.EMPTY));

        listMenu1.addItem(new MenuModel("src\\com\\hicode\\icons\\4.png", "Bán Sách", MenuModel.MenuType.MENU));
        listMenu1.addItem(new MenuModel("src\\com\\hicode\\icons\\7.png", "Trang Chủ", MenuModel.MenuType.EMPTY));

        listMenu1.addItem(new MenuModel("src\\com\\hicode\\icons\\5.png", "Mượn Sách ", MenuModel.MenuType.MENU));
        listMenu1.addItem(new MenuModel("src\\com\\hicode\\icons\\7.png", "Trang Chủ", MenuModel.MenuType.EMPTY));

        listMenu1.addItem(new MenuModel("src\\com\\hicode\\icons\\11.png", "Đọc Giả ", MenuModel.MenuType.MENU));
        listMenu1.addItem(new MenuModel("src\\com\\hicode\\icons\\7.png", "Trang Chủ", MenuModel.MenuType.EMPTY));

        listMenu1.addItem(new MenuModel("src\\com\\hicode\\icons\\6.png", "Nhân Viên", MenuModel.MenuType.MENU));
        listMenu1.addItem(new MenuModel("src\\com\\hicode\\icons\\7.png", "Trang Chủ", MenuModel.MenuType.EMPTY));

        listMenu1.addItem(new MenuModel("src\\com\\hicode\\icons\\8.png", "Thống Kê", MenuModel.MenuType.MENU));
        listMenu1.addItem(new MenuModel("src\\com\\hicode\\icons\\7.png", "Trang Chủ", MenuModel.MenuType.EMPTY));

    

    }

    @Override
    protected void paintComponent(Graphics g) {
        Graphics2D g2 = (Graphics2D) g;
        g2.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);
        GradientPaint gp = new GradientPaint(0, 0, Color.decode("#283E51"), 0, getHeight(), Color.decode("#4B79A1"));
        g2.setPaint(gp);
        g2.fillRect(0, 0, getWidth(), getHeight());
        super.paintComponent(g); //To change body of generated methods, choose Tools | Templates.
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        listMenu1 = new com.hicode.component.ListMenu<>();
        jLabel2 = new javax.swing.JLabel();

        jPanel1.setOpaque(false);

        jLabel1.setFont(new java.awt.Font("Arial", 1, 16)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(255, 255, 255));
        jLabel1.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/hicode/icons/book_1.png"))); // NOI18N
        jLabel1.setText("LBBooK");

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(43, 43, 43)
                .addComponent(jLabel1)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(jLabel1)
                .addContainerGap())
        );

        listMenu1.setOpaque(false);

        jLabel2.setFont(new java.awt.Font("Segoe Script", 1, 10)); // NOI18N
        jLabel2.setForeground(new java.awt.Color(247, 133, 151));
        jLabel2.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel2.setText("Design by LovePink");

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addComponent(listMenu1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addGap(90, 90, 90))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(listMenu1, javax.swing.GroupLayout.DEFAULT_SIZE, 395, Short.MAX_VALUE)
                .addGap(18, 18, 18)
                .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 32, javax.swing.GroupLayout.PREFERRED_SIZE))
        );
    }// </editor-fold>//GEN-END:initComponents

    public ListMenu<String> getListMenu1() {
        return listMenu1;
    }


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JPanel jPanel1;
    private com.hicode.component.ListMenu<String> listMenu1;
    // End of variables declaration//GEN-END:variables
}
