package s02_member;

import static org.junit.jupiter.api.Assertions.*;

import java.sql.Connection;

import org.junit.jupiter.api.Test;

class JunitTest {

	@Test
	void testDBConn() {
		//db컨넥션 
		Connection con = DBConn.getConnection();
		System.out.println(con);
		//con이 null이 아닐때 성공
		assertNotNull(con);
		//assertNull(con); con이 null일때 성공
	}

	@Test
	void testInsert() {
		//Member객체 만들기
		Member member = new Member();
		member.setUserid("hong");
		member.setPasswd("1112");
		member.setName("홍길동");
		member.setEmail("hong@gmail.com");
		System.out.println(member);
		
		MemberDAO mdao = new MemberDAO();
		int cnt = mdao.insert(member);
		System.out.println(cnt+"건 추가");
	}
}