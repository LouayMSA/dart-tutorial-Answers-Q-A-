import 'dart:io';

void main(){

  //1
  print("Question 1:");
  File myName = File("myname.txt");
  myName.writeAsStringSync("Jonh");
  String name = myName.readAsStringSync();
  print(name);

  //2
  print("\nQuestion 2:");
  myName.writeAsStringSync("\nDoe",mode: FileMode.append);
  String friendName = myName.readAsStringSync();
  print(friendName);

  //3
  print("\nQuestion 3:");
  Directory currentDirectory = Directory.current;
  print("Current Working Directory: ${currentDirectory.path}");
  
  //4
  print("\nQuestion 4:");
  name = myName.readAsStringSync();
  File myNameCopy = File("myname_copy.txt");
  myNameCopy.writeAsStringSync(name);

  //5
  print("\nQuestion 5:");
/*   for (int i = 0 ; i<100;i++)
  {
    File create = File("content$i.txt");
    create.create();
  } */

  //6
  print("\nQuestion 6:");
  myName.deleteSync();  
    if (myNameCopy.existsSync()) {
    print('File myName_copy Still Exist.');
  }

  //7
   File csv = File("studentsPractice.csv");
  csv.writeAsStringSync("Name,Age,Address\n");
  
  for (int i = 0; i < 3; i++) {
    stdout.write("Enter name of student ${i + 1}: ");
    String? name = stdin.readLineSync();
    stdout.write("Enter Age of student ${i + 1}: ");
    // user input phone
    String? Age = stdin.readLineSync();
    stdout.write("Enter Address of student ${i + 1}: ");
    String? address = stdin.readLineSync();
    csv.writeAsStringSync('$name,$Age,$address\n', mode: FileMode.append);
  }
String students = csv.readAsStringSync();
print("\n $students");


}