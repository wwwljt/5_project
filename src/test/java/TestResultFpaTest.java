import com.aaa.entity.Test_result_fpa;
import com.aaa.mapper.Test_result_fpaMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

/**
 * @ClassName TestResultFpaTest
 * @Description TODO
 * @Author WangDeSheng
 * @Date 2022/9/19 9:07
 * @Version 1.0
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class TestResultFpaTest {
    @Autowired
    private Test_result_fpaMapper mapper;
    @Test
    public void getAll(){
        Test_result_fpa test_result_fpa = new Test_result_fpa();
        test_result_fpa.setName("白");
        System.out.println(test_result_fpa);
        List<Test_result_fpa> allTRF = mapper.getAllTRF(1, 10,test_result_fpa);
        System.out.println(allTRF.size());
        for (Test_result_fpa item:allTRF
             ) {
            System.out.println(item);
        }
    }
    @Test
    public void getCount(){
        Test_result_fpa test_result_fpa = new Test_result_fpa();
        test_result_fpa.setName("白");
        int i = mapper.countTRF(test_result_fpa);
        System.out.println(i);
    }
}
