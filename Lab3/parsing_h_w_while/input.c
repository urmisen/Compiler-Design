int main()
{
     int a = 10;
     int b = 20;

     while(a>=10)
     {
         if(a==10)
         {
            printf("%d is 10", a);
         }
         else if(b==10)
         {
            int count = a++;
         }
         else
         {
            a--;
         }
     }
}