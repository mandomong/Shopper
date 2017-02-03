package org.zerock.persistence;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.zerock.domain.Criteria;
import org.zerock.domain.InventoryItemVO;

@Repository
public class InventoryItemDAOImpl implements InventoryItemDAO{
	
	@Inject
	private SqlSession session;
	
	private static String namespace = "org.zerock.mapper.InventoryItemMapper";
	
	@Override
	public InventoryItemVO read(String itemno) throws Exception {
		return session.selectOne(namespace + ".read", itemno);
	}

	@Override
	public List<InventoryItemVO> listAll() throws Exception {

		return session.selectList(namespace + ".listAll");
	}
	
	public List<InventoryItemVO> listBeetween(Criteria cri) throws Exception {
		System.out.println(cri.getStartNum());
		System.out.println(cri.getEndNum());
		return session.selectList(namespace + ".listMain", cri);
	}

	@Override
	public List<InventoryItemVO> listPaging(int page) throws Exception {

		
		return null;
	}

	@Override
	public List<InventoryItemVO> listCategory(String category) throws Exception {

		return null;
	}
	
	// TODO: jointest
	@SuppressWarnings("unchecked")
    public List<Map<String, Object>> getJoin(){
        return (List)session.selectList(namespace+".jointest");
    }

	
}
