package org.zerock.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.zerock.domain.Criteria;
import org.zerock.domain.InventoryItemVO;
import org.zerock.persistence.InventoryItemDAO;

@Service
public class InventoryItemServiceImpl implements InventoryItemService{
	
	@Inject
	private InventoryItemDAO dao;

	@Override
	public List<InventoryItemVO> listAll() throws Exception {
		return dao.listAll();
	}
	
	@Override
	public List<InventoryItemVO> listBeetween(Criteria cri) throws Exception {
		return dao.listBeetween(cri);
	}

	@Override
	public InventoryItemVO read(String itemno) throws Exception {
		return dao.read(itemno);
	}
	
	//Join test
	public List<Map<String, Object>> jointest() throws Exception {
		return dao.getJoin();
	}
	

}
