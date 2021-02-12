package com.nenu;

import org.junit.Test;

import java.text.SimpleDateFormat;
import java.util.Date;


public class DateUtil {
    @Test
    public void getDate(){
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String format = sdf.format(new Date());
        System.out.println(format);
    }

}
