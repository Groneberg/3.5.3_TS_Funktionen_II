import 'dart:ffi';
import 'dart:math';

// Bonus Task 1
int getBiggerNumber(int x, int y) {
  return max(x, y);
}

// Bonus Task 2
bool checkIfEven(int x) {
  return x % 2 == 0 ? true : false;
}

// Bonus Task 3
int getSumOfList(List<int> numbers) {
  return numbers.reduce((sum, number) => sum + number);
}

// Bonus Task 4
double getAVGOfList(List<int> numbers) {
  return getSumOfList(numbers) / numbers.length;
}

// Bonus Task 5
int getAmountOfChar(String char, String text) {
  int amount = 0;
  for (var i = 0; i < text.length; i++) {
    if (text[i] == char) {
      amount++;
    }
  }
  return amount;
}

// Bonus Task 6
bool checkIfStringContainsChar(String char, String text) {
  return text.contains(char);
}

// Bonus Task 7
String checkNumber(int x) {
  switch (x) {
    case > 0:
      return "Die Zahl ist positiv.";
    case < 0:
      return "Die Zahl ist negativ";
    default:
      return "Die Zahl ist 0";
  }
}

// Bonus Task 8
List<String> getListOfChar(String text) {
  return text.split('');
}

// Bonus Task 8
String getInfoOfStringListElement(List<Strings> stringList) {
  String info = "";

  return info;
}

void main(){
  print(getSumOfList([1,2,1,2]));
  print(getSumOfList([25,25]));
  print(getSumOfList([6,60,600]));

  print(checkIfStringContainsChar("e", "text"));
  print(checkIfStringContainsChar("e", "otto"));
  print(checkIfStringContainsChar("e", "Alle meine Entchen"));

  print(checkNumber(10));
  print(checkNumber(-5));
  print(checkNumber(0));

  print(getListOfChar("text"));
}

