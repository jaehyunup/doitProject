package com.kakaolove.doit.vo;

public class userProfileVO {
	private String id; // 아이디
	private String introduce; // 자기소개
	private String filed; // 전문분야
	private String spec; //경력사항
	private String edumajor;// 학력 및 전공
	private String certificate; // 보유자격증
	private String position; // 직군
	private String nickname; // 닉네임
	
	
	
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	
	public String getFiled() {
		return filed;
	}
	public void setFiled(String filed) {
		this.filed = filed;
	}
	public String getSpec() {
		return spec;
	}
	public void setSpec(String spec) {
		this.spec = spec;
	}
	public String getEdumajor() {
		return edumajor;
	}
	public void setEdumajor(String edumajor) {
		this.edumajor = edumajor;
	}
	public String getCertificate() {
		return certificate;
	}
	public void setCertificate(String certificate) {
		this.certificate = certificate;
	}
	
	
}
