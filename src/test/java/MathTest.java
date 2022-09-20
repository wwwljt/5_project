import com.fivegroup.project.util.MD5;

import java.util.Random;
import java.util.UUID;

/**
 * <p>
 *
 * @author Www
 * <p>
 * 邮箱： 483223455@qq.com
 * <p>
 * 创建时间: 2022/9/14  19:50  星期三
 * <p>
 */
public class MathTest {
	/**
	 * 方法入口
	 *
	 * @param args 参数
	 */
	public static void main(String[] args) {
		Random random = new Random();
		int num = random.nextInt(899999) + 100000;
		System.out.println("Math.random() = " + Math.floor(Math.random()*100000+1));
		System.out.println("Math.random() = " + num);
		
		System.out.println("UUID.randomUUID() = " + UUID.randomUUID());
		UUID uuid = UUID.randomUUID();
		String replace = uuid.toString().replace("-", "");
		System.out.println("replace = " + replace);
		String substring = replace.substring(0, 22);
		System.out.println("substring = " + substring);
		System.out.println("MD5.getSalt() = " + MD5.getSalt());
		System.out.println("MD5.encrypt(MD5.getSalt()) = " + MD5.encrypt(MD5.getSalt()));
	}
	

	

	
}
