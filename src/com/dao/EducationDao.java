package com.dao;


import java.util.Map;

import com.po.MyEducation;


public interface EducationDao {
    public void insertinfo(MyEducation myEducation);

    public MyEducation selectEducation(Map<String, Object> map);

}
