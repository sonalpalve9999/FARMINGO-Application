//print the star pattern ex n = 5
// *
// **
// ***
// ****
// *****
package Patterns ;
import java.util.*;
public class Pattern1{
    public static void main(String[] args){
        Scanner sc= new Scanner (System.in);
        int n = sc.nextInt();
        for (int i = 1 ; i <= n ; i++ ){
            String k = "*";
            System.out.print(k.repeat(i)+" "); // str.repeat(no. of times repeat) --use to repeat 
            System.out.print("\n");            //a string a particular no. of times 
        }
    }
}
