//! function types
// No arguments and no return type
// With arguments and no return type
// No arguments and return type
// With arguments and with return type
//! anonymous functions
//!common collection methods
//?isEmpty , isNotEmpty , forEach() , where(), map(), take(), skip(), fold()...

void main() {
  var words = ['I', 'love', 'techstream', 'training', 'program!'];
  var nums = [1, 4, 9, 12, 5, 60, 121, 22, 9, 4, 9, 9];

  int sum = nums.fold(0, (sum, i) => sum + i);

  int mul = nums.fold(1, (mul, i) => mul * i);

  String sentence = words.fold('', (j, i) => '$j $i');

  int maxNumber =
      nums.fold(-1, (max, element) => max > element ? max : element);

  //print(sentence);
  //print(sum);
  //print(mul);
  // print(maxNumber);

  // map
  List<int> doubledNumbers = nums.map((number) => number * 2).toList();
  //print(doubledNumbers);

  //where
  var evenNumbers = nums.where((i) => i % 2 == 0).toList();
  //print(evenNumbers);

  nums.sort(); // Ascending
  nums.sort((a, b) => b - a); // Descending

  bool hasNegative = nums.any((number) => number < 0);

  bool allPositive = nums.every((number) => number > 0);

  List<String> firstThreeNames = words.take(3).toList();

  List<String> remainingNames = words.skip(3).toList();

  bool hasItem = words.contains('techstream');

  int index = words.indexOf('techstream');

  int lastIndex = nums.lastIndexOf(9);

  String commaSeparated = nums.join(", "); //we can use $words here too!

  //nums.clear();

  words.insert(1, 'take a break');

  words.insertAll(2, ['skill', 'issue']);
  //print(words);

  words.remove('I');

  words.removeWhere((element) => element.startsWith("te"));
  print(words);

  //exit(0) terminate the program, 254 and 255 are reserved for windows int32, 256 for linux
  //recommended range from 0 to 127
}

class Student {
  late String name;
  late int age = 10;

  String get stud_name {
    return name;
  }

  set stud_name(String name) {
    this.name = name;
  }

  set stud_age(int age) {
    if (age <= 0) {
      print("Age should be greater than 5");
    } else {
      this.age = age;
    }
  }

  int get stud_age {
    return age;
  }
}

// void main() {
//   Student s1 = new Student();
//   s1.stud_name = 'Nitin';
//   s1.stud_age = 0;
//   print(s1.stud_name);
//   print(s1.stud_age);
// }

//? this was lecture 1 on common collection methods//




























//another example for setters and getters
// Dart program in Dart to illustrate 
// getters and setters #GFG 
// void main() { 
// var cat = new Cat(); 
	
// // Is cat hungry? true 
// print("Is cat hungry? ${cat.isHungry}"); 
	
// // Is cat cuddly? false 
// print("Is cat cuddly? ${cat.isCuddly}"); 
	
// print("Feed cat."); 
// cat.isHungry = false; 
	
// // Is cat hungry? false 
// print("Is cat hungry? ${cat.isHungry}"); 
	
// // Is cat cuddly? true 
// print("Is cat cuddly? ${cat.isCuddly}"); 
// } 

// class Cat { 
// bool _isHungry = true; 
	
// bool get isCuddly => !_isHungry; 
	
// bool get isHungry => _isHungry; 
// bool set isHungry(bool hungry) => this._isHungry = hungry; 
// }
