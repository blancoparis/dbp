package org.dbp.tlddbp;

import java.io.StringWriter;

import com.fasterxml.jackson.databind.ObjectMapper;

public class JacksonUtils {
	private static final ObjectMapper mapper = new ObjectMapper();
	public static String getJson(Object objeto){
		StringWriter writer = new StringWriter();
		try {
			mapper.writeValue(writer, objeto);
		} catch (RuntimeException e) {
			throw e;
		} catch (Exception e) {
			return null;
		}
		return writer.toString();
	}

}
