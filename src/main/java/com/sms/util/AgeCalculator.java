package com.sms.util;

import java.time.LocalDate;
import java.time.Period;
import java.time.format.DateTimeFormatter;

public class AgeCalculator {
	public static int calculateAge(String birthDate) {
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("MM/dd/yyyy");
		LocalDate date = LocalDate.parse(birthDate, formatter);
		if (date != null) {
			return Period.between(date, LocalDate.now()).getYears();
		} else {
			return 0;
		}
	}
}
