
class char_stack
{
public:
    char_stack(); // constructor
    void push( char item );
    char pop();
    char top();
    bool empty();
    int size();
    
private:
    
    static const int capacity = 2000;
    char A[capacity];

    int top_index;
};