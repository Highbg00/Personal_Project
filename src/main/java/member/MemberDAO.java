package member;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO implements MemberService {
	
	@Autowired private SqlSession sql;
	
	@Override
	public boolean member_join(MemberVO vo) {
		// TODO Auto-generated method stub
		return sql.insert("member.mapper.join", vo) == 1 ? true : false;
	}

	@Override
	public MemberVO member_login(HashMap<String, String> map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean member_update(MemberVO vo) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean member_delete(String id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean member_id_check(String id) {
		// TODO Auto-generated method stub
		return (Integer)sql.selectOne("member.mapper.id_chk",id) == 0 ? true : false ;
	}

}
