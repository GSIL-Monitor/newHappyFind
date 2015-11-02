package happyfind.utils;



/**
 * 字符串工具
 * <p>包括：空串判断、null值转换
 * 
 * @author yangzi
 * 
 */
public class StrTools {
	
	/**
	 * 比较两个字符串是否内容相同
	 * @param a
	 * @param b
	 * @return
	 */
	public static boolean isSame(String a,String b){				
		return a!=null && a.equals(b);
	}
	

	/**
	 * 判断字符串是否为空	 * 
	 * @date 2008-4-17
	 * @author yangzi
	 * @param str
	 * @return 如果字符串为null或trim之后为"" 返回true
	 */

	public static boolean isEmpty(String str) {
		return (null == str || str.trim().equals(""));
	}
	
//	public static boolean isEmpty(String a,String b,String c) {
//		return (null == str || str.trim().equals(""));
//	}
	

	/**
	 * 判断字符串是否非空	 * 
	 * @date 2008-4-17
	 * @author yangzi
	 * 
	 * @param str
	 * @return 
	 */
	public static boolean isNotEmpty(String str) {
		return !isEmpty(str);
	}
	
	/**
	 * 是否为""或null或NULL
	 * @param str
	 * @return
	 */
	public static boolean isNull(String str) {
		return isEmpty(str)|| "null".equalsIgnoreCase(str.trim());
	}
	
	public static String isStrNull(Object obj) {
		if(obj!=null){
			if(isEmpty(obj.toString())|| "null".equalsIgnoreCase(obj.toString().trim())){
				return "暂无数据";
			}else{
				return obj.toString();
			}
		}else{
			return "暂无数据";
		}
	}
	
	
	/**
	 * 
	 * @param str
	 * @return 如果字符串不为null，且trim()之后也不为""，则返回true
	 */
	public static boolean isNotNull(String str) {
		return !isNull(str);
	}
	
	


	/**
	 * 将null转化为空串 ""
	 * 
	 * @date 2008-4-29
	 * @author yangzi
	 * 
	 * @param str
	 * @return
	 */
	public static String doNull(String str) {
		return doNull(str,"");
	}

	/**
	 * 将空字符串（null和""）替换为参数字符串with
	 * <p>
	 * 如在jsp页面的表格中，单元格值为null或""，则可以用"--"代替
	 * 
	 * @param str
	 *            源字符串
	 * @param with
	 *            替代字符串
	 * @return
	 */
	public static String doNull(String str, String with) {
		return isNull(str) ? with : str;
	}

	/**
	 * 将一个数组转化为split分割的字符串如:
	 * <p>
	 * strArrayToStr({"1","2","3","4"}, "," , null) = "1,2,3,4"
	 * <p>
	 * strArrayToStr({"1","2","3","4"}, "," , "'") = "'1','2','3','4'"
	 * <p>
	 * 
	 * @date 2008-5-22
	 * @author yangzi
	 * @param array
	 *            字符串数组
	 * @param split
	 *            分割符
	 * @param with
	 *            包装字符
	 * @return 转化后的字符串
	 */
	public static String arrayToStr(String[] array, String split, String with) {
		if (null == array) {
			return null;
		}
		if (null == split) {
			split = "";
		}

		if (with == null)
			with = "";

		StringBuffer str = null;
		for (int i = 0; i < array.length; i++) {
			if (isNotEmpty(array[i])) {
				String temp = with + array[i].trim() + with;
				if (null == str) {
					str = new StringBuffer(temp);
				} else {
					str.append(split).append(temp);
				}
			}
		}
		return str == null ? null : str.toString();
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {
	
		System.out.println(isStrNull(null));
//1221554866843
//1221554883625
		
	}

}
