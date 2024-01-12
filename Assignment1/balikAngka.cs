using System;  
  public class balikAngka
   {  
     public static void Main(string[] args)  
      {  
       int  i, j, reverse=0;           
       Console.Write("Enter a number: ");      
       i= int.Parse(Console.ReadLine());     
       while(i!=0)      
       {      
        j=i%10;        
        reverse=reverse*10+j;      
        i/=10;      
       }      
       Console.Write("Reversed Number: "+reverse);       
    }  
  }  