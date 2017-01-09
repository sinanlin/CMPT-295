

int lsearch_2(int *A, int n, int target) {

    //.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.
    // Question 3(a):  Replace this code with the new algorithm 
    //.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.
    4         if(n<=0){
        5                 return -1;
        6         }
    7
    8         int temp = A[n-1];
    9         A[n-1] = target;
    10
    11         int i=0;
    12         while(A[i]!=target && i<=n ){
        13                 i++;
        14         }
    15         A[n-1] = temp;
    16         if(i<n-1){
        17                 return i;
        18         }
    19         else if(A[n-1]==target){
        20                 return n-1;
        21         }
    22         else{
        23                 return -1;
        24         }       
    25         
    //.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.
    
}  // lsearch_2


