package org.zerock.persistence;

import java.util.List;
import java.util.Map;

import org.zerock.domain.Criteria;
import org.zerock.domain.InventoryItemVO;

public interface InventoryItemDAO {
	
	// select one
	public InventoryItemVO read(String itemno) throws Exception;
	
	// select list
	public List<InventoryItemVO> listAll() throws Exception;
	
	// select main
	public List<InventoryItemVO> listBeetween(Criteria cri) throws Exception;
	
	// select list using paging function
	public List<InventoryItemVO> listPaging(int page) throws Exception;
	
	// select list using category
	public List<InventoryItemVO> listCategory(String category) throws Exception;
	
	public List<Map<String, Object>> getJoin();
	
}
