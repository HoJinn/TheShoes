package com.theshoes.jsp.member.model.serivce;

import static com.theshoes.jsp.common.mybatis.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.theshoes.jsp.member.model.dao.MemberDAO;
import com.theshoes.jsp.member.model.dto.MemberDTO;
import com.theshoes.jsp.member.model.dto.WishDTO;

public class MemberService {
	
	private final MemberDAO memberDAO;
	
	public MemberService() {
		memberDAO = new MemberDAO();
	}
	
	public MemberDTO loginMember(MemberDTO member) {
		SqlSession session = getSqlSession();
		
		MemberDTO returnMember = null;
		MemberDTO loginMember = memberDAO.selectMemberById(session, member.getId());

		if(loginMember != null) {
			BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
			if(passwordEncoder.matches(member.getPwd(), loginMember.getPwd())) {
				returnMember = loginMember;
			}
		}
		
		session.close();
		
		return returnMember;
	}

	public MemberDTO selectMemberById(String id) {
		SqlSession session = getSqlSession();
		
		MemberDTO member = memberDAO.selectMemberById(session, id);
		
		session.close();
		
		return member;
	}

	public MemberDTO selectMemberByEmail(String email) {
		SqlSession session = getSqlSession();
		
		MemberDTO member = memberDAO.selectMemberByEmail(session, email);
		
		session.close();
		
		return member;
	}

	public int registMember(MemberDTO member) {
		SqlSession session = getSqlSession();
		
		int result = memberDAO.registMember(session, member);
		
		if (result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

	public int passwordChange(MemberDTO member) {
		SqlSession session = getSqlSession();
		
		int result = memberDAO.passwordChange(session, member);
		
		if (result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}
	/* 회원탈퇴 */ 
	public int withDraw(MemberDTO member) {
		SqlSession session = getSqlSession();
		
		int result = memberDAO.withDraw(session, member);
		
		if (result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

	public MemberDTO selectAllWishList(String id) {
		SqlSession session = getSqlSession();
		
		MemberDTO member = memberDAO.selectAllWishList(session, id);
		
		session.close();
		
		return member;
	}

	public int deleteWish(String wishNo) {
		SqlSession session = getSqlSession();
		
		int result = memberDAO.deleteWish(session, wishNo);
		
		if (result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

	public int phoneChange(MemberDTO member) {
		SqlSession session = getSqlSession();
		
		int result = memberDAO.phoneChange(session, member);
		
		if (result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

	public int birthChange(MemberDTO member) {
		SqlSession session = getSqlSession();
		
		int result = memberDAO.birthChange(session, member);
		
		if (result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

	public int insertWish(WishDTO wish) {
		SqlSession session = getSqlSession();
		
		int result = memberDAO.insertWish(session, wish);
		
		if (result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

}
