package org.zerock.service;

import java.util.List;

import org.zerock.domain.Criteria;
import org.zerock.domain.InventoryItemVO;

public interface InventoryItemService {
	
	public InventoryItemVO read(String itemno) throws Exception;
	public List<InventoryItemVO> listAll() throws Exception;
	public List<InventoryItemVO> listBeetween(Criteria cri) throws Exception;
}
