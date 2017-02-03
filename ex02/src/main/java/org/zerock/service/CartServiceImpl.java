package org.zerock.service;

import java.util.List;
import java.util.Map;
import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.zerock.persistence.CartDAO;

@Service
public class CartServiceImpl implements CartService{
	@Inject
	private CartDAO dao;
	
	@Override
	public List<Map<String, Object>> listCart() throws Exception {
		// TODO Auto-generated method stub
		return dao.listCart();
	}

}
