#include <iostream>
#include "char_stack.cpp"
using namespace std;


int main(){
    
    Stack A;
    
    
    cout<< "A.empty()= " << A.empty()<< ":\n";
    A.push("Bob");
    A.push("Alice");
    
    cout<< "A.empty()= " << A.isEmpty()<< ":\n";
    
    whit(! A.isEmpty()){
        cout<< "A.pop()="<< A.pop()<<":\n";
    }
    
    cout<<"Test finish";
    

    return 0;
    
}