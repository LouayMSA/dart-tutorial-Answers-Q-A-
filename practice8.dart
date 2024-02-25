import 'dart:async';
import 'dart:io';
//Question 1

//Asynchronous Programming is a way of writing code that allows a program to do multiple tasks at the same time. Time consuming operations like fetching data from the internet, writing to a database, reading from a file, and downloading a file can be performed without blocking the main thread of execution.

//Question 2

// Future represents a value or error that is not yet available. It is used to represent a potential value, or error, that will be available at some time in the future.



Future<String> simulateAsyncTask(
    String taskName, int delayInMilliseconds) async {
  await Future.delayed(Duration(milliseconds: delayInMilliseconds));
  return "$taskName completed after $delayInMilliseconds ms";
}

Future<int> addNumbers(int a, int b) async {
  await Future.delayed(const Duration(seconds: 3));
  return  a + b;
}

void main(List<String> args) async {
  //Question 3
  print("Question 3:\n");
  Future.delayed(const Duration(seconds: 2), () => print(DateTime.now()));

  print("Question 4:\n");
  File file = File("Async.csv");
  file.writeAsStringSync('ID,Name\n');
  String name = "louay";
  for (int i = 0; i < 2; i++) {
    file.writeAsStringSync('${i + 1},$name\n', mode: FileMode.append);
  }

  if (await file.exists()) {
    final contents = file.readAsStringSync();

    final List<String> lines = contents.split("\n");

    print('---------------------');

    for (final line in lines) {
      print(line);
    }
  } else {
    print("The specified CSV file does not exist.");
  }
  print("\nQuestion 5:\n");
  final List<Future<String>> asyncTasks = [
    simulateAsyncTask("Task 1", 3000),
    simulateAsyncTask("Task 2", 2000),
    simulateAsyncTask("Task 3", 4000),
  ];

  // Use Future.wait to wait for all tasks to complete
  Future.wait(asyncTasks).then((List<String> results) {
    print("All tasks comleted. Results:");
    for (var task in results) {
      print(task);
    }
  });

  print("\nQuestion 6:\n");

  int num1 =5;
  int num2=15;
  

  print("the shum of $num1 and $num2 is:${await addNumbers(num1,num2)} ");

  print("\nQuestion 7:\n");
  stdout.write("Pease Enter Your First Number:");
  int? uInput = int.parse(stdin.readLineSync()!);
  
  stdout.write("\nPease Enter Your Second Number:");
  int? uInput1 = int.parse(stdin.readLineSync()!);
  
  print("The Sum of the entered two numbers is:${await addNumbers(uInput, uInput1)} ");


}
