package com.db;

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
}
