import 'dart:io';

void main()
{
  String name = "John Doe";
  // 1
  print('\nQuestion 1:\nHello I am "$name"' );
  // 2
  print("\nQuestion 2:\nHello I'am "+name+" ");
  // 3
  const int value= 7 ;
  print("\nQuestion 3: ${value.runtimeType} ");
  
  // 4
  print("\nQuestion 4:");
  double principal = 1000; // Principal amount
  double rate = 5;         // Rate of interest in percentage
  double time = 2;         // Time in years
  double simpleInterest = (principal * time * rate) / 100;
  
  print("Principal amount: \$${principal.toStringAsFixed(2)}");
  print("Rate of interest: $rate%");
  print("Time in years: $time");
  print("Simple Interest: \$${simpleInterest.toStringAsFixed(2)}");

  //5 
    print("\nQuestion 5:");
    print("\nPlease enter a number:");
    String? input = stdin.readLineSync();
    int value1 = int.parse(input.toString());
    int square = value1 * value1 ; 
    print("Square is\t:$square");

  //6
  print("\nQuestion 6:");
  stdout.write("Please Enter Your First Name: "); 
  String? firstName = stdin.readLineSync();
  print("\nPlease Enter Your Last Name");
  String? lastName = stdin.readLineSync();
  print("Your full name is:\t$firstName $lastName.");

  //7
  print("\nQuestion 7:");
  int num1 = 14;
  int num2 = 3;
  double quotient = num1 / num2;
  int reminder = num1 %num2;
  print("\nThe quotient of two integers is :\t ${quotient.toStringAsFixed(2)}.\nThe reminder of two integers is:\t $reminder. ");

  //8
  print("\nQuestion 8:");
  print("\nBefore swapping: num1 = $num1, num2 = $num2"); 
  int temp = num1;
  num1 = num2;
  num2 = temp;
  print("After swapping: num1 = $num1, num2 = $num2");

  //9
  print("\nQuestion 9:");
  String address1 = " Egypt ";
  print("\nResult of address1 trim is:${address1.trim()}.");

  //10
  print("\nQuestion 10:");
  String convert= "1";
  print("\nType of strvalue is${convert.runtimeType}");
  int converter = int.parse(convert);
  print("The converted String to int is:$converter, ${converter.runtimeType}");

  //11
  print("\nQuestion 11:");
  print("\nPlease Enter the total bill amount");
  String? billAmount = stdin.readLineSync();
  int numericBillAmount = int.parse(billAmount.toString());
  print("Please Enter the number of People");
  String? numOfPeople = stdin.readLineSync();
  int numericNumOfPeople = int.parse(numOfPeople.toString());
  num Formula= numericBillAmount /numericNumOfPeople;
  print("The split amount of bill is: ${Formula.toStringAsFixed(2)}");
}