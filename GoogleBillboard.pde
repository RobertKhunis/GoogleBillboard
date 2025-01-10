public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
public void setup(){       
int x = 0;
int y = 10;
String digits = e.substring(x,y);
double dNum = Double.parseDouble(digits);


for(int i = 0; i<e.length()-10; i++){
digits = e.substring(x,y);
dNum = Double.parseDouble(digits);
if (dNum < 10){
dNum = dNum * Math.pow(10, 9);
}
//System.out.print(dNum); 
//System.out.println(isPrime(dNum)); 
if(isPrime(dNum)){
  
  
  System.out.println(dNum);
  System.out.println("Digits: " + (x - 1) + "-" + (y-1));
  break;
}
x += 1;
y+= 1;
}
}
public boolean isPrime(double num){
  for(int i = 2; i <= Math.sqrt(num); i++){
    if(num%i==0){
      return false;
    }
  }
  if(num <= 1){
    return false;
  }
  
  
  return true;
}
