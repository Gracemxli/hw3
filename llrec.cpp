#include "llrec.h"

//*********************************************
// Provide your implementation of llpivot below
//*********************************************

void llhelper (Node*& head, Node*& smaller, Node*& larger, int pivot) {
    if(head ==nullptr){
        return;
    }
    Node* moving = head;
    head = head->next;
    
    llhelper(head, smaller, larger, pivot);

    if(moving->val >  pivot){
        moving->next = larger; 
        larger = moving;
    }
    else{
        moving->next = smaller;
        smaller = moving; 
    }
}

void llpivot (Node*& head, Node*& smaller, Node*& larger, int pivot) {
    smaller=nullptr; 
    larger=nullptr; 
    llhelper(head, smaller, larger, pivot);
}