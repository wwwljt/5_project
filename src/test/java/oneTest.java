import com.fivegroup.project.entity.TblTesterSas;
import com.fivegroup.project.service.TblQuestionSasService;
import com.fivegroup.project.service.TblTestResultSasService;
import com.fivegroup.project.service.TblTesterSasService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.math.BigDecimal;
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

    @Autowired
    private TblTesterSasService tblTesterSasService;


    @Test
    public void testResult() {

        List<TblTesterSas> pie = tblTesterSasService.findPie();

        List<Integer> peopleNums = new ArrayList<>();

        System.out.println("SIZE:::::"+pie.size());

        BigDecimal score, bInt;
        int a1;

        for (TblTesterSas tbl: pie) {
            BigDecimal forward = tbl.getForward();
            BigDecimal inversion = tbl.getInversion();

            // 把BigDecimal转换成int类型
            score = forward.add(inversion);
            bInt =new BigDecimal(String.valueOf(score));
            a1 = bInt.intValue();

            peopleNums.add(a1);

        }

        System.out.println("===========777==========");
        System.out.println("==========666===========");
        System.out.println(peopleNums);


        int a = 0, b = 0, c = 0, d = 0;

        for (int i = 0; i < peopleNums.size(); i++) {
            if (peopleNums.get(i) <= 50){
                a += 1;
            } else if (peopleNums.get(i) <= 60) {
                b += 1;
            } else if (peopleNums.get(i) <= 70) {
                c += 1;
            } else if (peopleNums.get(i) > 70) {
                d += 1;
            }
        }

        List<Integer> backNum = new ArrayList<>();

        backNum.add(a);
        backNum.add(b);
        backNum.add(c);
        backNum.add(d);

        System.out.println("9999999999999======"+backNum);



    }


}
