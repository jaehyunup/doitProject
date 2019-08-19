package com.kakaolove.doit.service;

import com.kakaolove.doit.vo.userProfileVO;

public interface userProfileService {
	/*프로필 CRUD 정보를 들고 Database에 Accese하는 행동을 정의하는 Interface*/
	/*프로필탭에서는 사용자의 요구사항이 첫 추가,수정 및 가져오기 밖에 없다는 것을 감안 2개의 행위를 위임.*/
	int insertuserProfile(userProfileVO userprofilevo) throws Exception;
	userProfileVO getuserProfile(String id) throws Exception;
	int modifyuserProfile(userProfileVO userprofilevo) throws Exception;
}
