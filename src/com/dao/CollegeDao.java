package com.dao;

import java.util.List;
import java.util.Map;


import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import com.po.MyCollege;



@Repository("collegeDao")
@Mapper
public interface CollegeDao {
	public List<MyCollege> selectAllinfo();
	public MyCollege selectCollegeByphone(Map<String, Object> param);
	public void updatebaseinfo(MyCollege myCollege);
	public int getCollegeId(Map<String, Object> param);
	public void updatejob_expectation(MyCollege myCollege);
	public void updateself_evaluation(MyCollege myCollege);
}
