package com.fivegroup.project.controller;

import com.fivegroup.project.bean.LayuiBean;
import com.fivegroup.project.entity.Userinfo;
import com.fivegroup.project.service.UserinfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

/**
 * @author DonaldChen
 * @date 2022/9/21 9:49
 * @description: 取法于上，仅得为中；取法于中，故为其下
 */


@RestController
public class UserinfoController {

    @Autowired
    private UserinfoService userinfoService;


    @RequestMapping(value = "/findUserAll", method = RequestMethod.GET)
    public LayuiBean<Userinfo> findUserAll(int page, int limit, String userId, String userName){

        List<Userinfo> allUser = userinfoService.findAll(page, limit, userId, userName);


        LayuiBean<Userinfo> SasBean = new LayuiBean<>();
        SasBean.setCode(0);
        SasBean.setMsg("");
        SasBean.setCount(50);
        SasBean.setData(allUser);


        return SasBean;
    }



    // 删除数据
    @RequestMapping(value = "/delDataUser")
    public int deleteData(String ids) {

        System.out.println("controller==="+ids);

        List<Integer> idsList = new ArrayList<>();


        String[] strIds = ids.split(";");  // 剔除分号
        for (int i = 0; i < strIds.length; i++){
            idsList.add(Integer.valueOf(strIds[i]));  // 遍历数字添加到数组 idsList
        }

        System.out.println("idsList==="+idsList);

        int i = userinfoService.delData(idsList);

        return i;
    }


    // 添加一条数据
    @RequestMapping(value = "/addDataUser")
    public Integer addData(Userinfo userinfo){

        System.out.println("------------------------------"+userinfo);

        int i = userinfoService.addData(userinfo);

        return i;
    }



    // 编辑一条数据
    @RequestMapping(value = "/editDataUser", method = RequestMethod.POST)
    public Integer editData(Userinfo userinfo){

        System.out.println("==============================="+userinfo);

        int i = userinfoService.editData(userinfo);

        return i;
    }


}
