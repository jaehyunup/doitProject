package com.kakaolove.doit.service;

import java.util.List;

import com.kakaolove.doit.vo.projectVO;

public interface projectService {
    public void create(projectVO vo) throws Exception;
    public List<projectVO> listAll() throws Exception;
    public projectVO read(Integer no) throws Exception;
    public void delete(Integer no) throws Exception;
    public void update(projectVO vo) throws Exception;   
    public List<projectVO> listten() throws Exception;
}
