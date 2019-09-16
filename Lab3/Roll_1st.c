#include<iostream>
#include<bits/stdc++.h>
using namespace std;

int main()
{
string roll;
int state=0,d;
char ch;

cin>>roll;
d=roll.length();
cout<<"---path---"<<endl<<state;
for(int i=0;i<d;i++){
ch=roll[i];

if(state==0){

if(ch=='1')
 {
  state=1;
  cout<<"-->"<<state;
 }
else
{
  state=-1;
  break;
}
}
else if(state==1){
if(ch=='5')

 {
  state=2;
  cout<<"-->"<<state;
 }

else
{
  state=-1;
  break;
}
}
else if(state==2){

if(ch=='0')
   {
  state=3;
  cout<<"-->"<<state;
 }
else
{
  state=-1;
  break;
}
}

else if(state==3){
if(ch=='3')
   {
  state=4;
  cout<<"-->"<<state;
 }
else
{
  state=-1;
  break;
}
}

else if(state==4){
if(ch=='0')
   {
  state=5;
  cout<<"-->"<<state;
 }
else if(ch=='1')
   {
  state=6;
  cout<<"-->"<<state;
 }
else
{
  state=-1;
  break;
}
}

else if(state==5){

if(ch=='0')
   {
  state=8;
  cout<<"-->"<<state;
 }
else if(ch=='1' || ch=='2' || ch=='3' || ch=='4' || ch=='5' || ch=='6' || ch=='7' || ch=='8' || ch=='9')
   {
  state=7;
  cout<<"-->"<<state;
 }
else
{
  state=-1;
  break;
}

}

else if(state==6){
if(ch=='0' || ch=='1')
  {
  state=11;
  cout<<"-->"<<state;
 }
 else if(ch=='2')
 {
  state=13;
  cout<<"-->"<<state;
 }
 else{
 state=-1;
 break;
 }


}

else if(state==7){

if(ch=='0' || ch=='1' || ch=='2' || ch=='3' || ch=='4' || ch=='5' || ch=='6' || ch=='7' || ch=='8' || ch=='9')
   {
  state=10;
  cout<<"-->"<<state;
 }
else
{
  state=-1;
  break;
}
}
else if(state==8)
{
 if(ch=='1' || ch=='2' || ch=='3' || ch=='4' || ch=='5' || ch=='6' || ch=='7' || ch=='8' || ch=='9')
   {
  state=10;
  cout<<"-->"<<state;
 }
else
{
  state=-1;
  break;
}
}
else if(state==11){
if(ch=='0' || ch=='1' || ch=='2' || ch=='3' || ch=='4' || ch=='5' || ch=='6' || ch=='7' || ch=='8' || ch=='9')
  {
  state=12;
  cout<<"-->"<<state;
 }
else
{
  state=-1;
  break;
}
}


else if(state==13){
if(ch=='0')
  {
  state=12;
  cout<<"-->"<<state;
 }
else
{
  state=-1;
  break;
}
}

}




cout<<endl<<"------result----"<<endl;

if(state==-1)
 cout<<"Rejected"<<endl;

 else
 cout<<"Accepted"<<endl;

 cout<<"state: "<<state<<endl;
return 0;

}
