
package com.mnsn.spring;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.mnsn.spring.service.SpringService;
import com.mnsn.spring.vo.SpringVo;

@RestController
@RequestMapping("/spring-web")
public class SpringController {

	@Autowired
	private SpringService springService;

	@RequestMapping("/test")
	public String printHello(ModelMap model) {
		model.addAttribute("message", "Hello Spring MVC Framework!");
		return "hello";
	}

	@ResponseBody
	@RequestMapping(value = "/json")
	public SpringVo getJson(ModelMap model) {

		return springService.getSpringVoObj();

	}
	@ResponseBody
	@RequestMapping(value = "/list-of-objs")
	public List<SpringVo> getListObjs(){
		return springService.listObjs();
	}
	
	@RequestMapping(value = "/add-user")
	@ResponseBody
	@PostMapping
	public List<SpringVo> addUser(@RequestBody SpringVo userVo){
		return springService.addUser(userVo);
	}
	
	@ResponseBody
	@RequestMapping(value = "/upadate-user/{userId}")
	@PutMapping
	public List<SpringVo> updateUser(@RequestBody SpringVo userVo,@PathVariable("userId") Integer userId){
		return springService.updateUser(userVo, userId);
		
	}
	
	@ResponseBody
	@RequestMapping(value = "/delete-user/{index}")
	@DeleteMapping
	public List<SpringVo> deleteUser(@PathVariable("index") Integer index){
		return springService.deleteUser(index);
	}

	
	
}
