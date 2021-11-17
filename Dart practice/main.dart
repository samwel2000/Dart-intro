void main() {
  // single comment in dart

  /* 
  This is a 
  Multi comment in dart
  */

  // Data types in dart
  int age = 11; //Integer
  var length = 20.20; //Integer in double --> cant be assigned with int keyword
  String name = 'Samwel'; //string data type
  bool isMarried = false; //Boolean datatype

  // How to declare variables in dart
  // --> first is statistically declaring variable using their data type
  var sex = "male"; //using var keyword --[same data type as during declaration]
  const gender = "female"; // for variables that do not change
  final gender2 = "female"; // for variables that do not change
  dynamic isNative = true; // Special for variables which may change data type
  isNative = "yoo this can take any data type";
  isNative = 10;

  // Containers in dart
  List languages = [
    "python",
    "java",
    "dart"
  ]; // declaring a list with no specific data type
  List canMixDatatype = [10, "samwel", true];
  List<String> languages2 = [
    "python",
    "java",
    "dart"
  ]; // declaring a list explicitly with data type

  // Some list methods
  languages.add(["javascript", 10]);
  languages.remove("java");

  // Slicing
  print(languages[0]);
  print(languages[1]);

  Map dictionary = {'id': 1, "name": "samwel", "language": "python"};
  print(dictionary);
  print(dictionary["name"]); // slicing

  // dictionary methods
  print(dictionary.keys);
  print(dictionary.values);
  print(dictionary.isEmpty);
  print(dictionary.isNotEmpty);
  print(dictionary.length);

  // Calling a function
  Name();
  Name2();
  add(10, 20);
  print(Welcome());
  print(Names());

  // Creating a new object of a class
  Parent charles = Parent("charles", "samwel");
  print(charles.getFullName());

  dynamic child =
      new Child("joan", "charles"); // another way of creating a class instance
  print(child.getFullName());
  child.newMethod();

  // Control structures and loops
  if (age < 10) {
    print("age less than 10");
  } else if (age > 10 && age < 20) {
    print("age btn 10 and 20");
  } else {
    print("age above 20");
  }

  // If statement comprehension
  age < 20 ? print("age less than 20") : print("age above 20");

  // Looping
  for (var i = 0; i < 10; i++) {
    print(i);
  }
  for (var language in languages) {
    print(language);
  }
}

// ----------------- Functions in Dart ---------------------
// --> f(x) which do not return anything start with key word void
// you can not use return statemet in this f(x)
void Name() {
  print("samwel is my name");
}

// can also be written using arrow f(x)
void Name2() => print("samwel is my name");

// Statistically typed f(x)
String Welcome() {
  return "Hello world";
}

List Names() {
  return ['samwel', 'mark', 'john'];
}

// Passing parameters in f(x)
void add(int a, int b) => print("sum of ${a} and ${b} is ${a + b}");

// ------------------ Classes in dart ------------------------
class Parent {
  String first_name = "";
  String last_name = "";
  // String first_name;
  // String last_name;

  Parent(String first_name, String last_name) {
    this.first_name = first_name;
    this.last_name = last_name;
  }

  String getFullName() => "My name is: ${first_name} ${last_name}";
}

// Inheritance in dart classes
class Child extends Parent {
  Child(String first_name, String last_name) : super(first_name, last_name);
  void newMethod() => print("I am a child");
}
