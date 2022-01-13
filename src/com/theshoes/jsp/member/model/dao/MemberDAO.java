package com.theshoes.jsp.member.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.theshoes.jsp.member.model.dto.MemberDTO;
import com.theshoes.jsp.member.model.dto.WishDTO;

public class MemberDAO {

	public MemberDTO selectMemberById(SqlSession session, String id) {
		return session.selectOne("MemberDAO.selectMemberById", id);
	}

	public MemberDTO selectMemberByEmail(SqlSession session, String email) {
		return session.selectOne("MemberDAO.selectMemberByEmail", email);
	}

	public int registMember(SqlSession session, MemberDTO member) {
		return session.insert("MemberDAO.registMember", member);
	}

	public int passwordChange(SqlSession session, MemberDTO member) {
		return session.update("MemberDAO.passwordChange", member);
	}
	/* 회원정보 수정*/
	public int withDraw(SqlSession session, MemberDTO member) {
		return session.update("MemberDAO.withDraw", member);
	}

	public MemberDTO selectAllWishList(SqlSession session, String id) {
		return session.selectOne("MemberDAO.selectAllWishList", id);
	}
	/* 회원탈퇴 */
	public int deleteWish(SqlSession session, String wishNo) {
		return session.delete("MemberDAO.deleteWish", wishNo);
	}
	/* 핸드폰 번호 변경 */
	public int phoneChange(SqlSession session, MemberDTO member) {
		return session.update("MemberDAO.phoneChange", member);
	}
	/* 생년월일 수정 */
	public int birthChange(SqlSession session, MemberDTO member) {
		return session.update("MemberDAO.birthChange", member);
	}

	public int insertWish(SqlSession session, WishDTO wish) {
		return session.insert("MemberDAO.insertWish", wish);
	}

}
