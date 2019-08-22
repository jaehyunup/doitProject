package com.kakaolove.doit.vo;

import java.io.File;
import java.io.FileInputStream;

import org.springframework.web.multipart.MultipartFile;

public class projectVO {
	private int no;
	private String name;
	private String explan;
	private int maxMember;
	private String img;
	private MultipartFile uploadFile;
	private String leader;
	private String type;
	
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getExplan() {
		return explan;
	}
	public void setExplan(String text) {
		this.explan = text;
	}
	public int getMaxMember() {
		return maxMember;
	}
	public void setMaxMember(int maxMember) {
		this.maxMember = maxMember;
	}

	public String getLeader() {
		return leader;
	}
	public void setLeader(String leader) {
		this.leader = leader;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public MultipartFile getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}
}
