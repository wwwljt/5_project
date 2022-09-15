package com.fivegroup.project.util;

import java.util.Collections;
import java.util.List;

/**
 * 定义一个泛型类封装分页数据
 *
 * @author Www
 */
public class Page<T> {
	
	/**
	 * 查询数据列表
	 */
	private List<T> data = Collections.emptyList();
	
	/**
	 * 总数
	 */
	private long total = 0;
	/**
	 * 每页显示条数，默认 3
	 */
	private long size = 3;
	
	/**
	 * 当前页
	 */
	private long current = 1;
	
	public Page() {
	}
	
	/**
	 * 分页构造函数
	 *
	 * @param current 当前页
	 * @param size    每页显示条数
	 */
	public Page(List<T> data, long total, long size, long current) {
		this.data = data;
		this.total = total;
		this.size = size;
		this.current = current;
	}
	
	/**
	 * 是否存在上一页
	 *
	 * @return true / false
	 */
	public boolean hasPrevious() {
		return this.current > 1;
	}
	
	/**
	 * 是否存在下一页
	 *
	 * @return true / false
	 */
	public boolean hasNext() {
		return this.current < this.getPages();
	}
	
	public long getPages() {
		if (this.getSize() == 0L) {
			return 0L;
		} else {
			long pages = this.getTotal() / this.getSize();
			if (this.getTotal() % this.getSize() != 0L) {
				++pages;
			}
			
			return pages;
		}
	}
	
	public List<T> getData() {
		return this.data;
	}
	
	public Page<T> setData(List<T> data) {
		this.data = data;
		return this;
	}
	
	public long getTotal() {
		return this.total;
	}
	
	public Page<T> setTotal(long total) {
		this.total = total;
		return this;
	}
	
	public long getSize() {
		return this.size;
	}
}

