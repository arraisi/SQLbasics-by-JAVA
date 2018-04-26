package com.tabeldata.training.jdbc.belajar.jdbc;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;

public class Koneksi {

    //    format jdbc url yaitu jdbc:sqlserver://LOKASI_DATABASE:PORT_DATABASE;databaseName=NAMA_DATABASE
    private static final String URL = "jdbc:sqlserver://localhost;databaseName=JDBC_ABDUL;instanceName=SQLEXPRESS2017";
    private static final String username = "sa";
    private static final String password = "16agustus1994";

    public static void main(String[] args) throws SQLException {

        try {
            // untuk membuat koneksi ke database
            Connection connection = DriverManager.getConnection(URL, username, password);
            System.out.println("Database terkoneksi");
        } catch (SQLException sqle) {
            // handling ketika terjadi error koneksi ke database
            sqle.printStackTrace();
        }
        //CARA MENGAMBIL DATA DARI TABEL SQL
        Connection koneksi = DriverManager.getConnection(URL, username, password);
        
        /*
//***********************************************************************************************************************
//CARA BACA DATA DARI TABEL SQL
//***********************************************************************************************************************
        //CARA MENGAMBIL DATA DARI TABEL SQL
        Connection koneksi = DriverManager.getConnection(URL, username, password);
        //(CARA STATEMENT)MENGAMBIL PERINTAH PADA KONEKSI
        //Statement perintah = koneksi.createStatement();
        
        //(BACA DATA DENGAN CARA PREPAREDSTATEMENT)MENGAMBIL PERINTAH PADA KONEKSI
        PreparedStatement perintah = koneksi.prepareStatement("SELECT * FROM BUKU WHERE ID = ? AND Nama_Pengarang like ?");
          perintah.setInt(1, 1); //--ARTINYA TANDA TANYA 1 = 1 JADI ID = 1
          perintah.setString(2, "%"); //--escape character % ignore_only one character
        //(BACA DATA DENGAN CARA STATEMENT)MENGAMBIL HASIL DARI PERINTAH
        //ResultSet hasil = perintah.executeQuery("SELECT * FROM BUKU");
        //(CARA PREPAREDSTATEMENT)MENGAMBIL HASIL DARI PERINTAH
        ResultSet hasil = perintah.executeQuery();
         
        //AMBIL DATA SELAMA DATA MASIH ADA hasil.next()
        while (hasil.next()){
            String namaPengarang = hasil.getString("Nama_Pengarang");
            String judulBuku = hasil.getString("Judul_Buku");
            String ISBN = hasil.getString("ISBN");
            //mengambil kolom ke 1 dari tabel buku
            Integer ID = hasil.getInt(1);
            
            System.out.println("ID : "+ID+" Nama Pengaran : "+namaPengarang+" Judul Buku : "+judulBuku+" No. ISBN : "+ISBN);   
        };
        hasil.close();
        perintah.close();
        koneksi.close();
        */
        
        /*
//***********************************************************************************************************************
//CARA INSERT DATA KE TABEL
//***********************************************************************************************************************
        
        //(BACA DATA DENGAN CARA PREPAREDSTATEMENT)MENGAMBIL PERINTAH PADA KONEKSI
        PreparedStatement perintah = koneksi.prepareStatement("INSERT INTO BUKU (Judul_Buku, Nama_Pengarang, Penerbit_ID, "
                + "Tahun_Terbit, Tanggal_Publish, ISBN, Tersedia, Created_Date, Last_Update_Date, Created_By, Updated_By)\n"
        +"VALUES (?, ?, ?, ?, ?, ?, ?, ?, null, ?, null);");
        perintah.setString(1, "PHP Programming");
        perintah.setString(2, "Putri");
        perintah.setInt(3, 1);
        perintah.setInt(4, 2017);
        perintah.setDate(5, Date.valueOf("2017-08-20"));
        perintah.setString(6, "1234-56783-12323435");
        perintah.setBoolean(7, true);
        perintah.setTimestamp(8, Timestamp.valueOf("2017-03-10 10:00:00"));
        perintah.setString(9, "OP");
        perintah.executeUpdate();
        perintah.close();
        koneksi.close();
        */
        
       
//***********************************************************************************************************************
//CARA INSERT DATA KE TABEL
//***********************************************************************************************************************
        //(BACA DATA DENGAN CARA PREPAREDSTATEMENT)MENGAMBIL PERINTAH PADA KONEKSI
        PreparedStatement perintah = koneksi.prepareStatement("UPDATE BUKU\n" 
                + " SET Nama_Pengarang = ?, Last_Update_Date = sysdatetime(), Updated_By = ?\n" 
                + "WHERE ID = ?");
        perintah.setString(1, "Arraisi");
        perintah.setString(2, "OP");
        perintah.setInt(3, 2);
        perintah.executeUpdate();
        perintah.close();
        koneksi.close();
       
    }
}