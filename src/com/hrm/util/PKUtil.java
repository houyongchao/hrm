package com.hrm.util;

import java.util.UUID;

public class PKUtil {

	public static String getPk(){
		UUID uuid = UUID.randomUUID();
		return uuid.toString();
	}
}
