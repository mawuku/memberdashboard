package io.github.mawuku.memberdashboard.memberdashboard.utility;

import org.springframework.stereotype.Component;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoField;
import java.time.temporal.TemporalAccessor;
import java.util.Locale;

@Component
public class DateUtility {

    public static LocalDate convertToLocalDate(String day, String month) {
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("d/MM/yyyy");
        String date = buildDate(day, month);

        //convert String to LocalDate
        LocalDate localDate = LocalDate.parse(date, formatter);

        return localDate;
    }

    private static String buildDate(String day, String month) {

        String dateFormatSeparator = "/";
        String dummyYear = "2000";
        String monthOfYear;

        // Converting month String to number value. Eg Feb to 2
        DateTimeFormatter parser = DateTimeFormatter.ofPattern("MMM").withLocale(Locale.ENGLISH);
        TemporalAccessor accessor = parser.parse(month);

        //Adding a leading zero to months less tha 10. January -> 01.
        if (accessor.get(ChronoField.MONTH_OF_YEAR) < 10) {
            monthOfYear = "0" + accessor.get(ChronoField.MONTH_OF_YEAR);
        } else {
            monthOfYear = String.valueOf(accessor.get(ChronoField.MONTH_OF_YEAR));
        }


        StringBuilder dateBuilder = new StringBuilder(day);
        dateBuilder.append(dateFormatSeparator);
        dateBuilder.append(monthOfYear);
        dateBuilder.append(dateFormatSeparator);
        dateBuilder.append(dummyYear);

        return dateBuilder.toString();
    }



}
