void main() {
  // Variable Declaration and Initialization
  int myInt = 42;
  double myDouble = 42.42;
  String myString = "Hello, Dart!";
  bool myBool = true;
  List<int> myList = [1, 2, 3, 4, 5];

  // Type Conversion
  String toIntStr = "123";
  String toDoubleStr = "123.45";
  
  print("String to int: ${stringToInt(toIntStr)}");
  print("String to double: ${stringToDouble(toDoubleStr)}");

  int myNum = 456;
  print("Int to String: ${intToString(myNum)}");
  print("Int to Double: ${intToDouble(myNum)}");

  // Conversion and Display Function
  convertAndDisplay("789");

  // Control Flow with If-Else
  int number = -10;
  checkNumber(number);

  int age = 20;
  checkVotingEligibility(age);

  // Switch Case for Day of the Week
  int dayOfWeek = 3;
  printDayOfWeek(dayOfWeek);

  // Loops
  print("For loop from 1 to 10:");
  forLoopExample();

  print("While loop from 10 to 1:");
  whileLoopExample();

  print("Do-while loop from 1 to 5:");
  doWhileLoopExample();

  // Combining Data Types and Control Flow
  List<int> numbers = [3, 14, 67, 101, 150];
  processList(numbers);
}

// Function to convert String to int
int stringToInt(String value) {
  return int.parse(value);
}

// Function to convert String to double
double stringToDouble(String value) {
  return double.parse(value);
}

// Function to convert int to String
String intToString(int value) {
  return value.toString();
}

// Function to convert int to double
double intToDouble(int value) {
  return value.toDouble();
}

// Function to convert and display int and double from String
void convertAndDisplay(String numberStr) {
  int convertedInt = stringToInt(numberStr);
  double convertedDouble = stringToDouble(numberStr);
  print("Converted to int: $convertedInt");
  print("Converted to double: $convertedDouble");
}

// Function to check if number is positive, negative, or zero
void checkNumber(int num) {
  if (num > 0) {
    print("$num is positive");
  } else if (num < 0) {
    print("$num is negative");
  } else {
    print("$num is zero");
  }
}

// Function to check voting eligibility
void checkVotingEligibility(int age) {
  if (age >= 18) {
    print("You are eligible to vote.");
  } else {
    print("You are not eligible to vote.");
  }
}

// Function to print the day of the week using switch case
void printDayOfWeek(int day) {
  switch (day) {
    case 1:
      print("Monday");
      break;
    case 2:
      print("Tuesday");
      break;
    case 3:
      print("Wednesday");
      break;
    case 4:
      print("Thursday");
      break;
    case 5:
      print("Friday");
      break;
    case 6:
      print("Saturday");
      break;
    case 7:
      print("Sunday");
      break;
    default:
      print("Invalid day");
  }
}

// For loop example (1 to 10)
void forLoopExample() {
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
}

// While loop example (10 to 1)
void whileLoopExample() {
  int i = 10;
  while (i >= 1) {
    print(i);
    i--;
  }
}

// Do-while loop example (1 to 5)
void doWhileLoopExample() {
  int i = 1;
  do {
    print(i);
    i++;
  } while (i <= 5);
}

// Process a list with if-else and switch case
void processList(List<int> numbers) {
  for (int number in numbers) {
    print("Number: $number");
    
    // Check if the number is even or odd
    if (number % 2 == 0) {
      print("$number is even");
    } else {
      print("$number is odd");
    }

    // Categorize the number using switch
    switch (number) {
      case 1 ... 10:
        print("$number is small");
        break;
      case 11 ... 100:
        print("$number is medium");
        break;
      default:
        print("$number is large");
    }
  }
}
