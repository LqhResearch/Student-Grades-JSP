package com;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Helper {

    public static Object GPA4(Object point, String type) {
        double value = (double) point;
        if (type.equals("number")) {
            if (value >= 9) {
                return "4.0";
            } else if (value >= 8) {
                return "3.5";
            } else if (value >= 7) {
                return "3.0";
            } else if (value >= 6.5) {
                return "2.5";
            } else if (value >= 5.5) {
                return "2.0";
            } else if (value >= 5) {
                return "1.5";
            } else if (value >= 4) {
                return "1.0";
            } else {
                return "0.0";
            }
        } else if (type.equals("text")) {
            if (value >= 9) {
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
        return "";
    }

    public static String Date(String value) throws Exception {
        Date date = new SimpleDateFormat("yyyy-MM-dd").parse(value);
        return new SimpleDateFormat("dd/MM/yyyy").format(date);
    }

    public static String Phone(String value) {
        return String.valueOf(value).replaceFirst("(\\d{4})(\\d{3})(\\d+)", "$1 $2 $3");
    }
}
