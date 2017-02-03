package org.zerock.persistence;

import java.util.List;
import java.util.Map;

public interface CartDAO {
	// select cart
	public List<Map<String, Object>> listCart() throws Exception;
}
