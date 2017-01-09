#include "char_stack.h"
#include <iostream>
using namespace std;

char_stack::char_stack{
    top_index = -1;
}


void char_stack::push(char item){
    if(top_index == -1 ){
        cout<<"stack is full";
    }
    
    top_index= top_index +1;
    
    A[top_index] = item;
    
}

char char_stack::pop(){
    if(top_index == -1){
        cout<<"stack is empty";

    }
    
    top_index = top_index -1 ;
    
    return A[top_index+1];
    
}

char char_stack::top(){
    return A[top_index];
    
}

bool char_stack::empty(){
    
    return top_index == -1;
}

int char_stack::size(){
    
    int size;
    size = top_index + 1;
    return size;
    
}

