package com.fivegroup.project.service;

import com.fivegroup.project.entity.vo.StatisticsVo;
import com.fivegroup.project.entity.vo.TblTestResultVo;

import java.util.List;

/**
 * <p>
 *
 * @author Www
 * <p>
 * 邮箱： 483223455@qq.com
 * <p>
 * 创建时间: 2022/9/14  20:39  星期三
 * <p>
 */
public interface TblTesterSdsService {
	/**
	 * 根据条件查询总记录数
	 *
	 * @param tblTestResultVo
	 * @return
	 */
	Integer getTbTestResultSdsCount(TblTestResultVo tblTestResultVo);
	
	/**
	 * 根据条件获取分页数据
	 *
	 * @param tblTestResultVo
	 * @param page
	 * @param limit
	 * @return
	 */
	List<TblTestResultVo> getTbTestResultSdsPageAll(TblTestResultVo tblTestResultVo, Integer page, Integer limit);
	
	/**
	 * 根据 id 批量删除
	 *
	 * @param ids
	 * @return
	 */
	Integer deleteTblTestResulSds(Integer[] ids);
	
	/**
	 * 获取总记录数
	 * @return
	 */
	Integer getTblTestCount();
	
	/**
	 * 获取统计数据
	 * @return
	 */
	StatisticsVo getTbTestStatistics();
}
