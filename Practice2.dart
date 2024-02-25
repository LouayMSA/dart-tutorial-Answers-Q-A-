import 'dart:io';

void main(){

  //1
  print("Question 1:");
  stdout.write("Enter a number to check if its even or odd: ");
  int? oddOrEven = int.parse(stdin.readLineSync()!);
  String evenOrOdd = (oddOrEven %2 == 0)? "EVEN": "ODD";
  print("Your Interger is: $evenOrOdd");

  //2
  print("\nQuestion 2:");

  bool isLetter(String str) {
  return RegExp(r'^[a-zA-Z]$').hasMatch(str);
  }

  String? vowelOrConstant;
  while(vowelOrConstant != 1){
    try {
      stdout.write("Enter a character to check if it's a vowel or consonant: ");
      vowelOrConstant = stdin.readLineSync();
      
      if (vowelOrConstant!.length == 1 && isLetter(vowelOrConstant)) {
        break; // Exit the loop if a valid single letter is entered
      } else {
        print("Please enter a single letter.");
      }
    } catch (e) {
      print("An error occurred. Please try again.");
    }
  }

  switch(vowelOrConstant)
  { 
  case'a':
  case'e':
  case'i':
  case'o':
  case'u':
  print("You character is Vowel!");
  break;
  default:
    if (vowelOrConstant!.codeUnitAt(0) >= 97 && vowelOrConstant.codeUnitAt(0) <= 122 && vowelOrConstant != 'y') {
        print("$vowelOrConstant is a consonant.");
      } else {
        print("$vowelOrConstant is not a vowel or consonant.");
      }
  }

  //3
  print("\nQuestion 3:");
  int? userInput;
    while(userInput == null){
    try{
    stdout.write ("Enter a number: ");
    userInput = int.parse(stdin.readLineSync()!);
    }
    catch(ex){print("You must to enter an integer");}
    }
    if(userInput>0){
      print("Your Number is Positive!");
      }
      else if(userInput<0){
        print("Your Number is Negative!");
      }
      else{
        print("Your Number is Zero! ");
      }
    
  //4
  print("\nQuestion 4:");
  print("Please Enter Your Name: ");
  String? name= stdin.readLineSync();
  int i = 0;
  do{
    print("$i $name");
    i++;
  }while(i<=100);

  //5
  print("\nQuestion 5:");
  int sum =0;
  int n= 100;
  i = 0;
  while(i<=100)
  {
    sum+=i;
    i++;
  }
  print("Sum is $sum");

  //6
  print("\nQuestion 6:");
  int multiByFive = 5;
  i =1;
  while(i<=10)
  {
    int result = multiByFive*i;
    print("$multiByFive * $i = $result");
    i++;
  }

  //7
  print("\nQuestion 7:");
  int multiFromOneToNine = 1;
  i =1;
  while(i<=11)
  {
    int result = multiFromOneToNine*i;
    print("$multiFromOneToNine * $i = $result");
    if (i ==10 )
    {
      i = 0;
      multiFromOneToNine++;
      if (multiFromOneToNine == 10)
      {
        break;
      }
    }
    i++;
  }

  //Another way to solve Question 7 using Nested loop, this is more readable
/*   for (i = 1; i<=9; i++){
    for (int j=0; j <=10;j++){
      int result = i *j;
      print("$i * $j = $result");
    }
    print("");
  } */


  //8
  print("\nQuestion 8:");
  print("Enter your Desired equation");
  List<String> Operatiors = ["+","-","*","/"];
  String Operatior = "";
  String? userEquation = stdin.readLineSync();
  for (var op in Operatiors) {
  if (userEquation!.contains(op))
  {
    Operatior =op;
    break;
  }
}
print ("this is $Operatior");
List<String> bothNumbers = userEquation!.split(Operatior);
num firstNumber = int.parse(bothNumbers[0].trim());
num secondNumber = int.parse(bothNumbers[1].trim());
num result = 0 ;

switch(Operatior){
case "+":
result = firstNumber + secondNumber;
break;
case "-":
result = firstNumber - secondNumber;
break;
case "*":
result = firstNumber * secondNumber;
break;
case "/":
result = firstNumber / secondNumber;
break;

}
print("The Result is: $result");

//9
print("\nQuestion 9:");
i = 0;
for (i=1;i<=100;i++){
  
  if (i ==41)
  {
    continue;
  }
  print("$i");
}

}