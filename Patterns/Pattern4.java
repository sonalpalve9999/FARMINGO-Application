package Patterns;
//print the star pattern ex n = 4
//*
//* *
//* * *
//* * * *
//* * * 
//* *
//*
import java.util.*;
public class Pattern4 {
    public static void main(String[] args) {
        Scanner sc= new Scanner (System.in);
        int n = sc.nextInt();
        int c = 1 ;
        for(int i = 1 ; i <= (2*n-1) ; i++ ){
            if( i <= n){
                String k = "* ";
                System.out.print(k.repeat(i));
            }else{
                String k = "* ";
                System.out.print(k.repeat(n - c++));
            }System.out.print("\n");
        }
    }
}
