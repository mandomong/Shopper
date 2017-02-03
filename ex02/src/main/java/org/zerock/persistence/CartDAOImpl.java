package org.zerock.persistence;

import java.util.List;
import java.util.Map;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CartDAOImpl implements CartDAO {
	@Inject
	private SqlSession session;
	
	private static String namespace = "org.zerock.mapper.CartMapper";
	
	@Override
	public List<Map<String, Object>> listCart() throws Exception {
		return session.selectList(namespace + ".listCart");
	}

}
