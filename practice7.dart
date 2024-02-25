import 'dart:math';

void main() {
//Question 1

//The purpose of ? operator in Null Safety is to create nullable variable in dart in where u can pass null value or change it to to a constant

  //2
  print("\nQuestion 2:");
  late String address = "US";
  print(address);

  //3
  // By using "?".

  //4 
  int? age = null;

  //5
  int acceptsNull(int? para){

      return para ?? 0;

  }

  acceptsNull(null);

  //6
  generateRandom(){
    return Random().nextBool()? 100 : null;
  }
  int status = generateRandom()?? 0 ;

  print("The Status is: $status");
}
