import com.fivegroup.project.entity.TblTestResultSas;
import com.fivegroup.project.service.TblQuestionSasService;
import com.fivegroup.project.service.TblTestResultSasService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.ArrayList;
import java.util.List;

/**
 * @author DonaldChen
 * @date 2022/9/13 17:03
 * @description: 取法于上，仅得为中；取法于中，故为其下
 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class oneTest {

    @Autowired
    private TblQuestionSasService tblQuestionSasService;

    @Autowired
    private TblTestResultSasService tblTestResultSasService;



    @Test
    public void testResult() {

        List<TblTestResultSas> all = tblTestResultSasService.findAnswer();

        System.out.println();

        List<Character> answer = new ArrayList<>();

        for (TblTestResultSas tbl: all) {

            char[] charArray = tbl.getAnswer().toCharArray();
            for (char i:charArray){
                System.out.println("====000"+i);
                answer.add(i);
            }

        }


        System.out.print(answer);



        }




}
