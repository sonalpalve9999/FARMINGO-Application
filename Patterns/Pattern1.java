package Patterns;
import java.util.*;
public class Pattern1 {
    public static void main(String[] args){
    Scanner sc = new Scanner(System.in);
    int n = sc.nextInt();
    //printing star pattern like this of given n number---->
    //if n is even                       if n is odd
    // * * * *                           * * * * 
    // * * * *                           * * * * 
    // * * * *                           * * * *
    // * * * *                           *
    if(n%2==0){
    while(n != 0){
    for(int i = 0 ; i < 4;i++){
        System.out.print("*"+" ");
        n = n-1;
    }System.out.print("\n");
}
}else{
    while(n != 1){
        for(int i = 0 ; i < 4;i++){
            System.out.print("*"+" ");
            n = n-1;
        }System.out.print("\n");
    }System.out.print("*");

}
}
}
