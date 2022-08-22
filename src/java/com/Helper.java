package com;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Helper {

    public static String Point4(Object point) {
        double value = (double) point;
        if (value >= 8.5) {
            return "A";
        } else if (value >= 8) {
            return "B+";
        } else if (value >= 7) {
            return "B";
        } else if (value >= 6.5) {
            return "C+";
        } else if (value >= 5.5) {
            return "C";
        } else if (value >= 5) {
            return "D+";
        } else if (value >= 4) {
            return "D";
        } else {
            return "F";
        }
    }

    public static String Date(String value) throws Exception {
        Date date = new SimpleDateFormat("yyyy-MM-dd").parse(value);
        return new SimpleDateFormat("dd/MM/yyyy").format(date);
    }

    public static String Phone(String value) {
        return String.valueOf(value).replaceFirst("(\\d{4})(\\d{3})(\\d+)", "$1 $2 $3");
    }
}
