package com.attitude.dal.mybatis.dao;

import com.attitude.dal.mybatis.entity.UserComment;
import com.attitude.dal.mybatis.entity.UserCommentExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface UserCommentMapper {
    int countByExample(UserCommentExample example);

    int deleteByExample(UserCommentExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(UserComment record);

    int insertSelective(UserComment record);

    List<UserComment> selectByExampleWithBLOBs(UserCommentExample example);

    List<UserComment> selectByExample(UserCommentExample example);

    UserComment selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") UserComment record, @Param("example") UserCommentExample example);

    int updateByExampleWithBLOBs(@Param("record") UserComment record, @Param("example") UserCommentExample example);

    int updateByExample(@Param("record") UserComment record, @Param("example") UserCommentExample example);

    int updateByPrimaryKeySelective(UserComment record);

    int updateByPrimaryKeyWithBLOBs(UserComment record);

    int updateByPrimaryKey(UserComment record);
}