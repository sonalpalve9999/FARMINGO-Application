package DSA.Linkedlist;
import DSA.Linkedlist.Node;
public class Linkedlist {
    static Node head;
    public static void Insert(int data){ //this method is for inserting  a node wherever the place is empty in linkedlist
          // made a new node for inserting in linkedlist
        Node n = new Node(); 
        n.data = data;
        n.next = null;
        if(head == null){ // checked if the first place in linkedlist is empty
            head = n;
        }else {            //if fist place is not empty then traverse the linked list and find 
                            //where the place is empty 
            Node r = head;
            while(r.next != null){ // traverse the linkedlist till the end
                  r = r.next; //node by node 
            }
            r.next = n; //wherever you find empty place insert the new node
        }
    }

    public static void InsertAtPlace(int data , int place){ //insert at the place given by user.
       Node n = new Node();
       n.data = data;
       n.next  = null;
      
       if (place==0){    //check if user has given the place at the start of linkelist or not
        InsertAtStart(data);
       }else{                  //if not at start then find the given place and insert there 
           Node r = head;
           for(int i=0;i<place-1;i++)
		{
			r = r.next;
		} 
        n.next = r.next;
        r.next = n;
        
       }
    }

    public static  void InsertAtStart(int data){ // if you wanna directly insert new node at start 
       Node n = new Node();
        n.data = data;
        n.next = null;
        n.next = head;
        head = n;
    }
    
    public static void deleteAtplace(int place){ //delete the node  at the place you want 
      
        if(place == 0){              //if you want to delete the head
            head = head.next;
        }else{
            Node r = head;      //else traverse untill the place at which node is to be deleted is reached 
            Node temp = new Node();   
            for(int i =0 ; i < place-1 ; i++){
                r =r.next;
            }
            temp = r.next;
            r.next = temp.next;

            temp = null; 
        }
    }

    public static  void show(){  //for printing the elements 
       
        Node node = head;
        while(node != null){   //traverse till the end 
            System.out.println(node.data); //print the data part of linkedlist
			node = node.next;   //node by node 
        }
      
    }
}