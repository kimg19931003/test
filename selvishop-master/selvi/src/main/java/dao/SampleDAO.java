package dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import dao.Abstractdao;
 
@Repository("SampleDAO")
public class SampleDAO extends Abstractdao{
	@SuppressWarnings("unchecked")
    public List<Map<String, Object>> selectBoardList(Map<String, Object> map,String state) throws Exception{
        return (List<Map<String, Object>>)selectList(state, map);
    }

}

