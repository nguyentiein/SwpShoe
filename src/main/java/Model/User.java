package Model;

import DAL.DBContext;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class User {
    private int userid;
    private String username;
    private String password;
    private String email;

    private String address;
    private String phone_number;

    private String code;


    public User() {
        connect ();
    }

    public User(String username, String password) {
        this.username = username;
        this.password = password;
        connect ();
    }

    public User(String username, String password, String code, String email) {
        this.username = username;
        this.password = password;
        this.email = email;
        this.code = code;
        connect ();
    }

    public User(int id, String username, String password, String email, String address, String phone, String code) {
        this.userid = id;
        this.username = username;
        this.password = password;
        this.email = email;
        this.address = address;
        this.phone_number = phone;
        this.code = code;
        connect ();
    }

    public User(String username, String password, String email, String address, String phone, String code) {

        this.username = username;
        this.password = password;
        this.email = email;
        this.address = address;
        this.phone_number = phone;
        this.code = code;
        connect ();
    }


    public User(int id, String username, String password, String email, String address, String phone) {
        this.userid = id;
        this.username = username;
        this.password = password;
        this.email = email;
        this.address = address;
        this.phone_number = phone;
        connect ();
    }

    public int getUserid() {
        return userid;
    }

    public String getCode() {
        return code;
    }

    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }

    public String getEmail() {
        return email;
    }

    public String getAddress() {
        return address;
    }

    public String getPhone_number() {
        return phone_number;
    }


    // Setter methods
    public void setUserid(int userid) {
        this.userid = userid;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setPhone_number(String phone_number) {
        this.phone_number = phone_number;
    }

    public void setCode(String code) {
        this.code = code;
    }



    Connection cnn;
    Statement stm;//thuc thi cau lenh sql
    PreparedStatement pstm;
    ResultSet rs;//luu tru du lieu vaxu li

    //PreparedStatement pstm; //thuc thi cau lenh spl
    private void connect() {
        try {
            cnn = (new DBContext ()).connection;
            if (cnn != null) {
                System.out.println ( "Connect success" );
            }
        } catch (Exception e) {
        }
    }

    public boolean checkUser() {
        try {
            String strSelect = "SELECT * FROM Users "
                    + "WHERE username=? "
                    + "AND password=?";
            pstm = cnn.prepareStatement ( strSelect );
            pstm.setString ( 1, username );
            pstm.setString ( 2, password );
            rs = pstm.executeQuery ();
            while (rs.next ()) {
                return true;
            }
        } catch (Exception e) {
            System.out.println ( "checkUser: " + e.getMessage () );
        }

        return false;
    }


    public boolean checkAccount() {
        try {
            String strSelect = "select * from Users "
                    + "where username=? ";
            pstm = cnn.prepareStatement ( strSelect );
            pstm.setString ( 1, username );
            rs = pstm.executeQuery ();
            while (rs.next ()) {
                return true;
            }
        } catch (Exception e) {
            System.out.println ( "checkAccount" + e.getMessage () );
        }
        return false;
    }

    public void addUser() {
        try {
            String sql = "INSERT INTO Users (username, password, email, address, phone_number) VALUES (?, ?, ?, ?, ?)";
            pstm = cnn.prepareStatement(sql);

            pstm.setString(1, username);
            pstm.setString(2, password);
            pstm.setString(3, email);
            pstm.setString(4, address);
            pstm.setString(5, phone_number);

            pstm.executeUpdate();
            System.out.println("User added successfully.");
        } catch (Exception e) {
            System.out.println("addUser: " + e.getMessage());
        } finally {
            // Close resources in the finally block
            try {
                if (rs != null) {
                    rs.close();
                }
                if (pstm != null) {
                    pstm.close();
                }
            } catch (Exception e) {
                System.out.println("addUser - Error closing resources: " + e.getMessage());
            }
        }
    }


    public User getUserByAccount2(String acc) {
        User u = null;
        try {
            String strSelect = "SELECT * FROM Users "
                    + "WHERE username = '" + acc + "'";
            stm = cnn.createStatement ( ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE );
            rs = stm.executeQuery ( strSelect );
            while (rs.next ()) {
                String username = rs.getString ( 2 );
                String password = rs.getString ( 3 );
                String email = rs.getString ( 4 );

                return u = new User ( userid, username, password, email, address, phone_number, code );
            }
        } catch (Exception e) {
            System.out.println ( "getUserByAccount: " + e.getMessage () );
        }

        return u;
    }


    public int getUserByRole(String acc, String pass) {
        int role = 0;
        try {
            String strSelect = "SELECT * FROM Users "
                    + "WHERE username = '" + acc + "' AND password = '" + pass + "'";

            stm = cnn.createStatement ( ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE );
            rs = stm.executeQuery ( strSelect );
            while (rs.next ()) {

                role = rs.getInt ( 5 );

            }
        } catch (Exception e) {
            System.out.println ( "getUserByAccount: " + e.getMessage () );
        }

        return role;
    }


    public void updatePassword(User u) {
        try {
            String strUpdate = "UPDATE Users SET password=? WHERE username=?";

            pstm = cnn.prepareStatement ( strUpdate );
            pstm.setString ( 1, u.getPassword () );
            pstm.setString ( 2, u.getUsername () );
            pstm.execute ();
        } catch (Exception e) {
            System.out.println ( "updatePassword: " + e.getMessage () );
        }
    }

    public List<User> getListUser() {
        List<User> userList = new ArrayList<>();

        try {
            String strSelect = "SELECT * FROM Users";
            stm = cnn.createStatement();
            rs = stm.executeQuery(strSelect);
            while (rs.next()) {

                int id = rs.getInt("userid"); // Change "id" to "userid"
                String username = rs.getString("username");
                String password = rs.getString("password");
                String email = rs.getString("email");
                String address = rs.getString("address");
                String phone = rs.getString("phone_number");

                User user = new User(id, username, password, email, address, phone);
                userList.add(user);
            }
        } catch (Exception e) {
            System.out.println("getListUser: " + e.getMessage());
        }

        return userList;
    }


    public void editOrder(String orderId, String newState, double newTotal, String newOrderDate) {
        try {
            String strUpdate = "UPDATE Orders SET state=?, total=?, order_date=? WHERE order_id=?";
            pstm = cnn.prepareStatement ( strUpdate );
            pstm.setString ( 1, orderId );
            pstm.setString ( 2, newState );
            pstm.setDouble ( 3, newTotal );
            pstm.setString ( 4, newOrderDate );
            pstm.executeUpdate ();
        } catch (Exception e) {

            System.out.println ( "editOrder: " + e.getMessage () );
        }
    }

    public List<User> searchUsersByName(String name) {
        List<User> userList = new ArrayList<> ();

        try {
            String strSelect = "SELECT * FROM Users WHERE username LIKE ?";
            pstm = cnn.prepareStatement ( strSelect );
            pstm.setString ( 1, "%" + name + "%" );
            rs = pstm.executeQuery ();

            while (rs.next ()) {
                int id = rs.getInt ( "userid" );
                String username = rs.getString ( "username" );
                String password = rs.getString ( "password" );
                String email = rs.getString ( "email" );
                String address = rs.getString ( "address" );
                String phone = rs.getString ( "phone_number" );
                User user = new User ( id, username, password, email, address, phone);
                userList.add ( user );
            }
        } catch (Exception e) {
            System.out.println ( "searchUsersByName: " + e.getMessage () );
        }

        return userList;


    }


 //   Trong ví dụ trên, chúng ta tạo một đối tượng User và gọi phương thức searchUsersByName với tham số là tên người dùng cần tìm. Kết quả trả về là một danh sách người dùng thỏa mãn tên tìm kiếm. Sau đó, chúng ta duyệt qua danh sách người dùng và in ra thông tin của từng người dùng tìm thấy.

  //  Hãy chạy chương trình và kiểm tra xem liệu hàm searchUsersByName có hoạt động chính xác và trả về danh sách người dùng tìm thấy không.









}