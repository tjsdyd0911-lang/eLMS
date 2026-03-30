package com.elms.util;

import java.text.DecimalFormat;

public class FileUtil {
	public static String getFileSize(long size) {
		if(size <= 0) return "0 B";
		final String[] units = new String[]{"B", "KB", "MB", "GB"};
		int sizeCalc = (int) (Math.log10(size) / Math.log10(1024));
		return new DecimalFormat("#,##0.#").format(size / Math.pow(1024, sizeCalc)) + " " + units[sizeCalc];
	}
}
