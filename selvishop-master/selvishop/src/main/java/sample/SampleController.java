package sample;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
 
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;


import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import service.SampleService;
 
@Controller
public class SampleController {
   ;
     
    @Resource(name="SampleService")
    private SampleService SampleService;
     
    @RequestMapping(value="/selvi/table")
    public ModelAndView openSampleBoardList(Map<String,Object> commandMap) throws Exception{
        ModelAndView mv = new ModelAndView("/home");
        commandMap.put("idx", "2");
        List<Map<String,Object>> list = SampleService.selectBoardList(commandMap,"ewqqwe");
        mv.addObject("list", list);
         
        return mv;
    }
    
    @RequestMapping(value="/selvi/table",  method = RequestMethod.POST)
    @ResponseBody
    public HashMap<String, Object>  postSampleBoardList(HttpServletRequest req) throws Exception{
    	HashMap<String, Object> map = new HashMap<String, Object>(); 
    	map.put("dat", "1213213");
    
    	return map;
    }
}


