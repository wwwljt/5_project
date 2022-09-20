package com.fivegroup.project.controller;

import com.fivegroup.project.entity.TblMenu;
import com.fivegroup.project.entity.vo.Menu;
import com.fivegroup.project.service.MenuService;
import com.fivegroup.project.util.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
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
	 * 删除
	 *
	 * @param menuId
	 * @return
	 */
	@PostMapping("/delete")
	public Result delete(Integer menuId) {
		Integer result = menuService.delete(menuId);
		return Result.ok(result);
	}
	
	/**
	 * 保存或修改
	 *
	 * @param tbMenu
	 * @return
	 */
	@PostMapping("/saveOrUpdate")
	public Result saveOrUpdate(TblMenu tbMenu, HttpServletRequest request) {
		System.out.println("tbMenu = " + tbMenu);
		Integer result = menuService.saveOrUpdate(tbMenu, request);
		return Result.ok(result);
	}
	
	
	/**
	 * 根据 id 获取 父级名称
	 *
	 * @param menuId
	 * @return
	 */
	@GetMapping("/getParentNameById")
	public Result getParentNameById(Integer menuId) {
		System.out.println("id = " + menuId);
		TblMenu tblMenu = menuService.getParentNameById(menuId);
		System.out.println("tblMenu = " + tblMenu);
		return Result.ok(tblMenu);
	}
	
	/**
	 * 获取 所有菜单
	 *
	 * @return
	 */
	@GetMapping("/getMenuAll")
	public Result getMenuAll() {
		List<TblMenu> tblMenuList = menuService.getMenuAll();
		return Result.ok(tblMenuList);
	}
	
	
	/**
	 * 获取树形结构
	 *
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
