package com.fivegroup.project.controller;

import com.fivegroup.project.entity.vo.Menu;
import com.fivegroup.project.service.MenuService;
import com.fivegroup.project.util.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Arrays;
import java.util.List;

/**
 * <p>
 *
 * @author Www
 * <p>
 * 邮箱： 483223455@qq.com
 * <p>
 * 创建时间: 2022/9/16  17:46  星期五
 * <p>
 */
@RestController
@RequestMapping("/system/menu/")
public class MenuController {
	
	@Autowired
	private MenuService menuService;
	
	/**
	 * 获取树形结构
	 *
	 * @param id
	 * @return
	 */
	@GetMapping("/getTree")
	public Result getTree() {
		List<Menu> menuList = menuService.getTree();
		System.out.println("menuList = " + menuList);
		return Result.ok(menuList);
	}
	
	/**
	 * 根据 roleId 获取 menuId
	 *
	 * @param roleId
	 * @return
	 */
	@GetMapping("/getTree/{roleId}")
	public Result getMenuId(@PathVariable("roleId") Integer roleId) {
		Integer[] menuId = menuService.getMenuId(roleId);
		System.out.println("menuId = " + Arrays.toString(menuId));
		return Result.ok(menuId);
	}
}
