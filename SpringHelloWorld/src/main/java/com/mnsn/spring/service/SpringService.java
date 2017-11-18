package com.mnsn.spring.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.mnsn.spring.vo.SpringVo;

@Service
public class SpringService {
	
	public static List<SpringVo> users=new ArrayList<>();

	public SpringVo getSpringVoObj(){
		SpringVo springVo=new SpringVo();
		springVo.setAddress("Address Of User");
		springVo.setPinCode(12345L);
		springVo.setUserId(12345);
		springVo.setUserName("APJ Abdul Kalam");
		return springVo;
	}
	
	public List<SpringVo> listObjs(){
		/*List<SpringVo> users=new ArrayList<>();
		for(int i=0;i<9;i++){
			SpringVo springVo=new SpringVo();
			springVo.setAddress("Address Of User");
			springVo.setPinCode(12345L);
			springVo.setUserId(12345);
			if(i!=0 && i%2==0){springVo.setUserName("Srinath N");}
			else if(i!=0 && i%3==0){springVo.setUserName("Dayakar");}
			else{
				springVo.setUserName("Default-User");
			}
			users.add(springVo);
		}*/
		
		return users;
		
	}
	
	public List<SpringVo>  addUser(SpringVo userVo){
		userVo.setUserId(users.size()+1);
		users.add(userVo);
		return users;
	}
	
	public List<SpringVo> updateUser(SpringVo userVo,Integer userId){
		SpringVo user=users.get(userId);
		user.setAddress(userVo.getAddress());
		user.setUserName(userVo.getUserName());
		return users;
	}
	
	public List<SpringVo> deleteUser(int index){
		users.remove(index);
		System.out.println(users);
		return users;
	}
	
}
