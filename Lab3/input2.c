int main(){
    int a=10;
    int count=0;

    for(a=0;a<10;){
        if(a==10){
            count=count+1;
        }
    }
    while(1){
        a=a+10.2;
        if(a==10){
            break;
        }
        else if(a>=20){
            count=a++;
        }
        else{
            a--;
        }
    }
}