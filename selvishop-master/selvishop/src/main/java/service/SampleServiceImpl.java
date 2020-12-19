package service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;


import org.springframework.stereotype.Service;

import dao.SampleDAO;

@Service("SampleService")
public class SampleServiceImpl  implements SampleService {
	
	 
     
	    @Resource(name="SampleDAO")
	    private SampleDAO SampleDAO;
	     
	    @Override
	    public List<Map<String, Object>> selectBoardList(Map<String, Object> map,String state) throws Exception {
	        return SampleDAO.selectBoardList(map,state);
	    }


}
