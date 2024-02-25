//1
import 'dart:math';

void printOwnName() {
  print("Question 1");
  print("Hello X");
}

//2
void printEvenNumbersBetweenIntervals(int start, int end) {
  print("\nQuestion 2");
  for (int i = start; i <= end; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }
}

//3
String generateRandomPassword(int length) {
  print("\nQuestion 3");
  const String validChars =
      'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#\$\%^&*()_-+=<>?';
  Random random = Random();

  String password = '';

  for (int i = 0; i < length; i++) {
    int randomIndex = random.nextInt(validChars.length);
    password += validChars[randomIndex];
  }

  return password;
}

//4
num findAreaOfCircle(num radius) {
  print("\nQuestion 4");
  num area = 3.14 * radius;
  return area;
}

//5
findPythagoreantheorem(num a, num b) {
  print("\nQuestion 5");
  num c = sqrt(pow(a, 2) + pow(b, 2));
  return c;
}

//6
String findTheReverseString(String reverse) {
  print("\nQuestion 6");
  String reverseString = reverse.split("").reversed.join();
  return reverseString;
}

//7
calculatePower(a, b) {
  print("\nQuestion 7");
  num calculatedPower = pow(a, b);
  return calculatedPower;
}

void main() {
  //1
  printOwnName();

  //2
  printEvenNumbersBetweenIntervals(1, 5);

  //3
  int passwordLength = 16; // Change this to the desired password length
  String password = generateRandomPassword(passwordLength);
  print("Generated Password: $password");

  //4
  double radius = 4;
  num areaOfCircle = findAreaOfCircle(radius);
  print("The Area of the circle is: $areaOfCircle^2");

  //5
  num a = 5;
  num b = 2;
  num Pythagoreantheorem = findPythagoreantheorem(a, b);
  print("The Pythagoreantheorem is :${Pythagoreantheorem.toStringAsFixed(2)}");

  //6
  String input = "Hello";
  String reverseInput = findTheReverseString(input);
  print("The Reversed String is :$reverseInput");

  //7
  a =5;
  b = 3;
  print("The Power of a and b is: ${calculatePower(a, b)}");
}
