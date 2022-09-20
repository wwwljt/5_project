package com.fivegroup.project.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Random;


/**
 * @author Www
 */
public final class MD5 {
	/**
	 * 对密码进行加密
	 *
	 * @param strSrc
	 * @return
	 */
	public static String encrypt(String strSrc) {
		try {
			char[] hexChars = {'0', '1', '2', '3', '4', '5', '6', '7', '8',
					'9', 'a', 'b', 'c', 'd', 'e', 'f'};
			byte[] bytes = strSrc.getBytes();
			MessageDigest md = MessageDigest.getInstance("MD5");
			md.update(bytes);
			bytes = md.digest();
			int j = bytes.length;
			char[] chars = new char[j * 2];
			int k = 0;
			for (byte b : bytes) {
				chars[k++] = hexChars[b >>> 4 & 0xf];
				chars[k++] = hexChars[b & 0xf];
			}
			return new String(chars);
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
			throw new RuntimeException("MD5加密出错！！+" + e);
		}
	}
	
	public static String getSalt() {
		String str = "qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM1234567890";
		// 由 Random 生成随机数
		Random random = new Random();
		StringBuffer bu = new StringBuffer();
		for (int i = 0; i < 22; i++) {
			int number = random.nextInt(62);
			// 将产生的数字通过length 次承载到 bu中
			bu.append(str.charAt(number));
		}
		return bu.append("==").toString();
	}
	
}
