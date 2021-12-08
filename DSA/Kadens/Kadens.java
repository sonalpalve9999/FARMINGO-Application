package DSA.Kadens;
//You are given an array by user you ahve to find the Maximum sum of Subarray 
//genrally whenyou prefer to solve this problem through nest loop you will get time complexity of O(n^2) but you can 
//solve this question within the time complexity of O(n) by using Kaeden's Algorithm
//A= [2,4,-6,4,6,1] = we will choose the subarray [4,6,1] = 4+6+1 = 11 which is maximum.


import java.util.*;
public class Kadens {
    public static void main(String[] args){
        Scanner sc= new Scanner (System.in);
        System.out.print("please insert the size of array\n");
        int n = sc.nextInt();
        int arr[] = new int[n];
        System.out.print("please insert the elements in array one by one\n ");
        for(int i = 0 ; i< n ; i++){
            arr[i] = sc.nextInt();
        }
        int maxsum = Integer.MIN_VALUE;
        int sum = 0 ;
        for(int i = 0 ; i<arr.length ; i++){
           sum = sum + arr[i];
           if( sum > maxsum){
               maxsum = sum;
           }else if(sum < 0){
               sum = 0 ;
           }
        }System.out.print("maximum sum of subarray of given array is " + maxsum);

    }
}
