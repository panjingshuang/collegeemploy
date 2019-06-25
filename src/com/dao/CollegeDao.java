package com.dao;

import java.util.List;
import java.util.Map;


import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import com.po.MyCollege;


<<<<<<< HEAD
@Repository("collegeDao")
@Mapper
public interface CollegeDao {
    public List<MyCollege> selectAllinfo();

    public MyCollege selectCollegeByphone(Map<String, Object> param);

    public void updatebaseinfo(MyCollege myCollege);

    public int getCollegeId(Map<String, Object> param);

    public void updatejob_expectation(MyCollege myCollege);

    public void updateself_evaluation(MyCollege myCollege);

    public MyCollege selectAllinfoByid(int id);
    public void insertintoValues(MyCollege myCollege);
=======

@Repository("collegeDao")
@Mapper
public interface CollegeDao {
	public List<MyCollege> selectAllinfo();
	public MyCollege selectCollegeByphone(Map<String, Object> param);
	public void updatebaseinfo(MyCollege myCollege);
	public int getCollegeId(Map<String, Object> param);
	public void updatejob_expectation(MyCollege myCollege);
	public void updateself_evaluation(MyCollege myCollege);
>>>>>>> fbfe18d1c5300530420e3ecf43f68621616c954e
}
