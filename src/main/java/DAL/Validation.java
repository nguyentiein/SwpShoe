package DAL;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Validation {
    public static String checkEmpty(String s) {
        if (s.isEmpty()) {
            return "* Please fill out this field!";
        }

        return "";
    }

    private static boolean isNumeric(String strNum) {
        if (strNum == null) {
            return false;
        }
        try {
            double d = Double.parseDouble(strNum);
        } catch (NumberFormatException nfe) {
            return false;
        }
        return true;
    }

    public static String checkNum(String s) {
        if (s.isEmpty()) {
            return "* Please enter a number!";
        }

        if (!isNumeric(s) || s.contains(" ")) {
            return "* Input must be a number!";
        }

        return "";
    }

    public static String checkDate(String s) {
        if (s.isEmpty()) {
            return "* Please enter a date!";
        }

        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        dateFormat.setLenient(false);

        try {
            Date date = dateFormat.parse(s);
            // Kiểm tra nếu ngày đã được chuyển đổi thành đối tượng Date thành công
            // và không có lỗi ngoại lệ, thì trả về một chuỗi rỗng
            return "";
        } catch (ParseException e) {
            // Nếu có lỗi khi chuyển đổi ngày, trả về thông báo lỗi
            return "* Invalid date format!";
        }
    }
}
