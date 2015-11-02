package happyfind.utils;

public class BianHaoTools {
	     public static void main(String[] args) {
	    	 BianHaoTools test = new BianHaoTools();
	         System.out.println(test.lpad(4, 23));
	     }
	 
	     /**
	      * 补齐不足长度
	      * @param length 长度
	      * @param number 数字
	      * @return
	      */
	     private String lpad(int length, int number) {
	         String f = "%0" + length + "d";
	         return String.format(f, number);
	     }
}
