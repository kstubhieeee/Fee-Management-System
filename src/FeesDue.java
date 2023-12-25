import java.awt.BorderLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.*;
import javax.swing.*;
import javax.swing.table.DefaultTableModel;

public class FeesDue {
    Connection con;
    Statement stmt;
    ResultSet rs;

    public FeesDue() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/feems", "kaustubh", "kstubhie541");
            stmt = con.createStatement();

            rs = stmt.executeQuery("SELECT * FROM info WHERE paid <> total ");

            // Create a DefaultTableModel to hold your data
            DefaultTableModel model = new DefaultTableModel();
            model.addColumn("ID");
            model.addColumn("Mobile");
            model.addColumn("Name");
            model.addColumn("Java");
            model.addColumn("Python");
            model.addColumn("DS");
            model.addColumn("AOA");
            model.addColumn("Total fees");
            model.addColumn("Fees Paid");
            model.addColumn("Balance");

            while (rs.next()) {
                String[] rowData = {
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        String.valueOf(Integer.parseInt(rs.getString(10)) - Integer.parseInt(rs.getString(11)))
                };
                model.addRow(rowData);
            }

            JTable jt = new JTable(model);
            JScrollPane sp = new JScrollPane(jt);
            JFrame f = new JFrame();
            f.setLayout(new BorderLayout());
            f.add(sp, BorderLayout.CENTER);

            // Create a back button
            JButton backButton = new JButton("Back");
            backButton.addActionListener(new ActionListener() {
                @Override
                public void actionPerformed(ActionEvent e) {
                    // Assuming Home is a JFrame, create an instance and make it visible
                    Home h = new Home();
                    h.setVisible(true);
                    // Close the current frame
                    f.dispose();
                }
            });

            // Add the back button to the bottom of the frame
            f.add(backButton, BorderLayout.SOUTH);

            f.setSize(800, 400);
            f.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
            f.setVisible(true);

            // Close resources
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        SwingUtilities.invokeLater(() -> new FeesDue());
    }
}

