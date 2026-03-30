/************************************
 * 클래스 : Json 변환용 클래스
 * 작성자 : 진선용
 * 작성일 : 2026.02.11
 * ***********************************/

package com.elms.util;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

public class ConvertUtil {

	public static String toJson(Object value) {
		ObjectMapper mapper = new ObjectMapper();
		String jsonString = "";
		try {
			jsonString = mapper.writeValueAsString(value);
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return jsonString;
	}
}
