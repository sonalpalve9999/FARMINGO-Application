package DSA.Linkedlist;
import java.util.*;
import DSA.Linkedlist.Linkedlist;
import DSA.Linkedlist.Node;
public class Tester {
    public static void main(String[] args ){
    Linkedlist list = new Linkedlist();
    Scanner sc = new Scanner(System.in);
    System.out.print("Press 1 to start");
    int key = sc.nextInt();  
while(key != 6) {
System.out.print("Choices :\n1.Insert \n2.Insert At Start \n3.Insert At Given Place \n4.Delete At Given place \n5.Show \n 6.Exit\n");
 key = sc.nextInt();  
  int data ; int place;
    switch (key) {
        
        case 1:
        System.out.print("enter the number to be inserted\n");
            data = sc.nextInt();
            Linkedlist.Insert(data);
            break;
        case 2:
        System.out.print("enter the number to be inserted at Start of linkedlist\n");
            data = sc.nextInt();
            Linkedlist.InsertAtStart(data);
            break;
        case 3:
        System.out.print("enter the number to be inserted and the place value too.\n");
            data = sc.nextInt();
            place = sc.nextInt();
            Linkedlist.InsertAtPlace(data, place);
            break;
        case 4:
        System.out.print("enter the place value to be deleted .\n");
            place = sc.nextInt();
            Linkedlist.deleteAtplace(place);
            break;
        case 5:
        System.out.print("Here is the Linked List\n");
            Linkedlist.show();
            break;
        case 6:
            System.exit(0);
            break;
        default:
        System.out.print("you entered wrong Key of choice");
            break;
    }
}  
}
}