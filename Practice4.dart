import 'dart:io';

//3
List<double> readExpenses() {
  List<double> expenses = [];

  while (true) {
    stdout.write("Enter an expense amount (or 'done' to finish): ");
    String input = stdin.readLineSync()!;

    if (input.toLowerCase() == 'done') {
      break;
    }

    double? expense = double.tryParse(input);

    if (expense != null) {
      expenses.add(expense);
    } else {
      print("Invalid input. Please enter a valid expense amount.");
    }
  }

  return expenses;
}

double calculateTotal(List<double> expenses) {
  double total = 0;

  for (double expense in expenses) {
    total += expense;
  }

  return total;
}

void main() {
  //1
  print("Question 1");
  List<String> names = ["John", "Doe"];
  print(names);

  //2
  print("\nQuestion 2");
  Set<String> fruits = {"Banana", "Mango", "You", "Me"};
  for (var fruit in fruits) {
    print(fruit);
  }

  //3
  print("\nQuestion 3");
  List<double> expenses = readExpenses();
  double total = calculateTotal(expenses);

  print("Expenses: $expenses");
  print("Total: $total");

  //4
  print("\nQuestion 4");
  List<String> days = [];
  days.addAll({
    "Sunday",
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday"
  });
  print(days);

  //5
  print("\nQuestion 5");
  List<String> friends = ["You", "Me", "He", "She", "a", "aa", "aaa"];
  List<String> filteredFreinds =
      friends.where((element) => element.startsWith("a")).toList();
  print(filteredFreinds);

  //6
  print("\nQuestion 6");
  Map<String, String> personalInfo = {
    "name": "John",
    "address": "SomeWhere",
    "age": "24",
    "Country": "SomeWhereElse"
  };
  print("Before changing Country Name:$personalInfo");
  personalInfo["Country"] = "VSCode";
  print("After changing Country Name:$personalInfo");

  //7
  print("\nQuestion 7");
  Map<String, dynamic> nameAndPhone = {
    "Name": "John",
    "PhoneNumber": 123456789
  };
  print(nameAndPhone.keys.where((element) => element.length == 4));

  //8
  print("\nQuestion 8");
  String? userInput = '';
  Map<int, String> task = {};
  print(
      "\nWelcome to This to-do Application, this application allows you to add, remove and view your tasks\n");
  for (int i = 0;; i++) {
    print('''\nIf you want to add task press 1.
If you want to remove task press 2.
If you want to view your tasks press 3.
If you want to exit press 4\n ''');
    int? userInput = int.parse(stdin.readLineSync().toString());
    switch (userInput) {
      case 1:
        print("\nWrite Your wanted Task");
        task[i] = stdin.readLineSync().toString();
        break;
      case 2:
        print("\nWrite Your the number of the Task");
        int? remove = int.parse(stdin.readLineSync().toString());
        task.remove(remove - 1);
        break;

      case 3:
        task.forEach((key, value) => print("\n${key}. $value"));
        break;
    }

    if (userInput == 4) {
      print("Thank You For Using Our Application, Good Luck!");
      break;
    }
  }
}
