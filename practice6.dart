//1
import 'dart:io';

class Laptop {
  int? id;
  String? name;
  String? ram;
  Laptop({this.id, this.name, this.ram});

  void display() {
    print("Laptop ID:${this.id}");
    print("Laptop Name:${this.name}");
    print("Laptop Ram:${this.ram}");
    print("---------------");
  }
}

//2
class House {
  int? id;
  String? name;
  double? prize;
  House({this.id, this.name, this.prize});

  void display() {
    print("Laptop ID:${this.id}");
    print("Laptop Name:${this.name}");
    print("Laptop Prize:${this.prize}");
    print("---------------");
  }
}

//3
enum Gender { Male, Female, Other }

//4
class Animal {
  int? id;
  String? name;
  String? color;
  Animal({this.id, this.name, this.color});
}

class Cat extends Animal {
  String? sound;
  Cat({
    int? id,
    String? name,
    String? color,
    this.sound,
  }) : super(
          id: id,
          name: name,
          color: color,
        );
  void display() {
    print("Cat ID:${this.id}");
    print("Cat Name:${this.name}");
    print("Cat color:${this.color}");
    print("Cat Sound:${this.sound}");
    print("---------------");
  }
}

//5
class Camera {
  int? _id;
  String? _brand;
  String? _color;
  double? _prize;

  set id(int id) => this._id = id;
  set brand(String brand) => this._brand = brand;
  set color(String color) => this._color = color;
  set prize(double prize) => this._prize = prize;
  int get id => this._id!;
  String get brand => this._brand!;
  String get color => this._color!;
  double get prize => this._prize!;

  void display() {
    print(this._id);
    print(this._brand);
    print(this._color);
    print(this._prize);
    print("---------------");
  }
}

//6
abstract class Bottle {
  factory Bottle() {
    return CokeBottle();
  }
  void open();
}

class CokeBottle implements Bottle {
  void open() {
    print("Coke bottle is opened");
  }
}

//7

// Enum to represent quiz difficulty levels
enum QuizDifficulty { easy, medium, hard }

class Quiz {
  final String question;
  final List<String> options;
  final int correctAnswer;

  Quiz(this.question, this.options, this.correctAnswer);

  bool isCorrect(int selectedAnswer) {
    return selectedAnswer == correctAnswer;
  }
}

// Singleton pattern for managing the quiz app
class QuizApp {
  static final QuizApp _instance = QuizApp._internal(QuizDifficulty.easy);

  factory QuizApp(QuizDifficulty difficulty) {
    return _instance.._setDifficulty(difficulty);
  }

  QuizDifficulty _difficulty;
  int score;

  QuizApp._internal(this._difficulty) : score = 0;

  void _setDifficulty(QuizDifficulty difficulty) {
    _difficulty = difficulty;
  }

  void start(List<Quiz> quizzes) {
    print("Welcome to the Quiz App!");

    for (var i = 0; i < quizzes.length; i++) {
      final quiz = quizzes[i];
      print("\nQuestion ${i + 1}: ${quiz.question}");
      for (var j = 0; j < quiz.options.length; j++) {
        print("  ${j + 1}. ${quiz.options[j]}");
      }

      stdout.write("Your answer: ");
      final selectedAnswer = int.tryParse(stdin.readLineSync() ?? '');
      if (selectedAnswer != null && quiz.isCorrect(selectedAnswer - 1)) {
        print("Correct!");
        score++;
      } else {
        print(
            "Incorrect. The correct answer is: ${quiz.options[quiz.correctAnswer]}");
      }
    }

    print("\nQuiz completed! Your score: $score/${quizzes.length}");
  }
}

void main() {
  //1
  print("Question 1:\n");
  Laptop l1 = Laptop(id: 1, name: "HP", ram: " 8GB");
  Laptop l2 = Laptop(id: 2, name: "Dell", ram: " 16GB");
  Laptop l3 = Laptop(id: 3, name: "Lenovo", ram: " 32GB");

  l1.display();
  l2.display();
  l3.display();

  //2
  print("\nQuestion 2:\n");
  House h1 = House(id: 1, name: "Lenovo", prize: 100);
  House h2 = House(id: 2, name: "Lenovo", prize: 200);
  House h3 = House(id: 3, name: "Lenovo", prize: 300);

  List<House> listOfHouse = [];
  listOfHouse.add(h1);
  listOfHouse.add(h2);
  listOfHouse.add(h3);

  for (House house in listOfHouse) {
    house.display();
  }

  //3
  print("Question 3:\n");

  for (Gender gender in Gender.values) {
    print(gender);
  }

  //4
  print("\nQuestion 4:\n");
  Cat cat = Cat(id: 1, name: "meme", color: "Orange", sound: "Mew");
  cat.display();

  //5
  print("\nQuestion 5:\n");
  Camera c1 = Camera();
  c1.id = 1;
  c1.brand = "Canon";
  c1.color = "black";
  c1.prize = 369.33;
  Camera c2 = Camera();
  c2.id = 2;
  c2.brand = "Samsung";
  c2.color = "white";
  c2.prize = 9.33;
  Camera c3 = Camera();
  c3.id = 3;
  c3.brand = "Nokia";
  c3.color = "blackAndWhite";
  c3.prize = 69.33;

  c1.display();
  c2.display();
  c3.display();

  //6
  print("\nQuestion 6:\n");

  final cb = Bottle();
  cb.open();

  //7
  print("\nQuestion 7:\n");
  final easyQuizzes = [
    Quiz("What is the capital of France?", ["Paris", "Berlin", "London"], 0),
    Quiz("Which planet is known as the Red Planet?",
        ["Mars", "Venus", "Jupiter"], 0),
    Quiz("What is 2 + 2?", ["3", "4", "5"], 1),
  ];

  final mediumQuizzes = [
    Quiz("What is the largest mammal?", ["Elephant", "Blue Whale", "Giraffe"],
        1),
    Quiz("How many continents are there?", ["5", "6", "7"], 2),
    Quiz("Which gas do plants absorb?",
        ["Oxygen", "Carbon Dioxide", "Nitrogen"], 1),
  ];

  // Create quiz apps for different difficulty levels
  final easyQuizApp = QuizApp(QuizDifficulty.easy);
  final mediumQuizApp = QuizApp(QuizDifficulty.medium);

  easyQuizApp.start(easyQuizzes);
/*   mediumQuizApp.start(mediumQuizzes); */
}
