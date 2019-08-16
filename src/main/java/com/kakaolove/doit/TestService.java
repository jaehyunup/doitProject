package com.kakaolove.doit;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
 
@Service
public class TestService {
 
    @Autowired
    private testMapper mapper;
    
    public String selectNow() {
        return mapper.selectNow();
    }
}