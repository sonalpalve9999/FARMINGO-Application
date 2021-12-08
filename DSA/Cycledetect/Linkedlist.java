package DSA.Cycledetect;
//this is floyd's Algorithm to detect the cycle in Linkedlist
public class Linkedlist {
    static Node head;    //head of the linkedlist 
    static class Node{    //Node holding the data and the next part 
      int data;
      Node next;
    }

public static Node detectloop(Node head){  //function to detect the loop
  if(head == null && head.next == null){   //check first if the linkedlist is empty or not
    return null;
  }
  else {                       //if linkedlist is not empty
    Node slow = head;          //set slow node to point to  head 
    Node fast = head;          //set fats node to point to the head
    slow =slow.next ; fast = fast.next.next;   //let the slow node traverse one node next to it and 
                                               //let fast node traverse two nodes next to it 

    while(fast != null && fast.next != null){   //now till  the fast node and the node next to it does not 
                                                //become null keep traversing 
      if(slow == fast){          //while traversing if we found slow is equal to fast
        break;                 //then break the loop and exit (we need to break because if slow == fast
                            //then it means loop is present and hence while loop will become infinite loop as there is no null present in this case)
      }
      slow =slow.next;     //if we not found slow == fast then keep traversing 
      fast =fast.next.next;  

    }  
    if(slow != fast){   //Now if we traversed whole linkelist and dod not found the cycle (i.e slow != fast) case
      return null;     //then return null
    }
    else{             //if we found slow == fast that means we detect the cycle
      slow = head;     //then make slow =head and let fat be at the meeting point don't change it
      while(slow != fast){ //Now untill you reach to the node from where the cycle started keep traversing
        slow =slow.next;  // so move slow to  one node ahead 
        fast = fast.next; // move fast to one node ahead 
      }
    }return slow;  //now this is where slow==fast ..i.e we found the node from where the cycle has been started 
  }
}

    public static void printlist(Node hd){  //function for printing the node
      Node k = hd;
      while(k!= null){   //traverse till you reach the end 
          System.out.print(k.data+ " ");   //print the data part 
          k = k.next;  //node by node
      }System.out.print("\n");
      }

    public static void main(String[] args){
     
     Node head = new Node();
     head.data = 1;                //start filling the data part of Linkedlist ..here is head
     Node second = new Node();
     second.data = 2;               //second node of linkedlist 
     head.next = second;            //linking the next part to the head to second node
     Node third = new Node();
     third.data=3;                   //third node of linkedlist 
     second.next = third;            //linking the next part to the second to third node
     Node  fourth = new Node();
     fourth.data = 4;                //fourth node of linkedlist
     third.next = fourth;           //linking the next part to the third to fourth node
     Node fifth = new Node();
     fifth.data = 5;                 //fifth node of linkedlist
     fourth.next = fifth;          //linking the next part to the fourth to fifth node
     
     fifth.next = second;   //made cycle by linking next part of fifth node to second
     
     Node meet = detectloop(head);
     System.out.print("the data stored in the node from where the cycle started is " + meet.data);
   }
}
