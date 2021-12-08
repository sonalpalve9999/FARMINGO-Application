package DSA.ReverseLL;
import java.util.*;
 // program for reversing a linkedlist : ex. 1 2 3 5 6 is a linkedlist and after reversing it will become
 // 6 5 3 2 1 

public class Linkedlist {  
   static Node head;
   static class Node{ //making the class for holding the parts of Node i.e data and next
       int data ;
       Node next;
   } 

   public static void Insert(int data){ //this method is for inserting  a node wherever the place is empty in linkedlist
    // made a new node for inserting in linkedlist
  Node n = new Node();  //make object of a class which will point to data and next part 
  n.data = data;   // insert data into the node 'n'
  n.next = null;    // intialize the next part of new node to null 

  if(head == null){ // checked if the first place in linkedlist is empty
      head = n;
  }
  else {    //if fist place is not empty then traverse the linked list and find 
            //where the place is empty 
      Node r = head;
      while(r.next != null){ //traverse till the end
            r = r.next;  //node by node
      }
      r.next = n; //finally when you find the empty place insert the node
  }
}
public static void printlist(Node hd){  //function for printing the node
Node k = hd;
while(k!= null){   //traverse till you reach the end 
    System.out.print(k.data+ " ");   //print the data part 
    k = k.next;  //node by node
}System.out.print("\n");
}

public static Node Reverselist(Node n){      //function to reverse the linkedlist , where we are taking the parameter as head node
Node previous = null; 
Node current = n;
Node temp = null;
while(current != null){ 
   temp = current.next;   //for linking the nodes in the reverse order
   current.next = previous;   //please refer the pdf to know how this lines of code works to reverse the LL
   previous = current;
   current = temp;
} n = previous;
  return n;
}
public static void main(String[] args){
    Linkedlist list = new Linkedlist();
    Scanner sc = new Scanner(System.in);
    System.out.println("Enter the no. of elements to be inserted in the linkedlist");
    int n = sc.nextInt();
    System.out.println("Enter the elements one by one");
    while(n!=0){
        int data = sc.nextInt();
        list.Insert(data);
        n = n -1;
    }
    System.out.println("Linkedlist list element before reversing");
    list.printlist(head);
    Node new_head = list.Reverselist(head);
    System.out.println("Linkedlist list element after reversing");
    list.printlist(new_head);
}
}
