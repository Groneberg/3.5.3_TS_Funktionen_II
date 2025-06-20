import 'dart:math';

List<int> createList(int n, int max) {
  List<int> numbersList = [];
  Random random = Random();
  for (var i = 0; i < n; i++) {
    numbersList.add(random.nextInt(max));
  }
  return numbersList;
}

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

// Bonus Task 9
String getInfoOfStringListElement(List<String> stringList) {
  String info = "";
  for (var element in stringList) {
    info = info + '"$element" -> ${element.length}, ';
  }
  return info;
}

// Bonus Task 10
int getProduct(int x, int y) {
  return x * y;
}

// Bonus Task 11
dynamic changeSignOfNumber(dynamic x) {
  return x * -1; // return -x; get auch
}

// Bonus Task 12
int getMinimumFromList(List<int> numbers) {
  return numbers.reduce((currentMin, element) => min(currentMin, element));
}

// Bonus Task 13
Map<String, int> getWordLength(List<String> wordList) {
  Map<String, int> wordLength = {};
  for (var word in wordList) {
    wordLength[word] = word.length;
  }
  return wordLength;
}

// Bonus Task 14
double convertTemperature(double temperatur, bool inCelsius) {
  if (inCelsius) {
    return (temperatur * 9 / 5) + 32;
  } else {
    return (temperatur - 32) * 5 / 9;
  }
}

// Bonus Task 15
String connectElementsOfList(List<String> stringList) {
  return stringList.reduce((resultString, element) => resultString + element);
}

// Bonus Task 16
bool checkForPrimeNumber(int number) {
  if (number <= 1 || number % 2 == 0) {
    return false;
  }
  if (number == 2) {
    return true;
  }
  for (var i = 3; i * i < number; i += 2) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}

// Bonus Task 17
int reverseInteger(int x) {
  int reversedInteger = 0;
  int temp = 0;
  for (int i = x; i > 0; i ~/= 10) {
    reversedInteger *= 10;
    temp = i % 10;
    reversedInteger += temp;
  }
  return reversedInteger;
}

// Bonus Task 18
String getTimeFromSecond(int inputSecond) {
  int hours = inputSecond ~/ 3600;
  int remainingSecondsAfterHours = inputSecond % 3600;
  int minutes = remainingSecondsAfterHours ~/ 60;
  int seconds = remainingSecondsAfterHours % 60;
  return "$inputSecond Sekunden entsprechen $hours Stunden, $minutes Minuten und $seconds Sekunden.";
}

// Bonus Task 19
bool checkAnagram(String a, String b) {
  if (a.length != b.length) {
    return false;
  }
  bool isAnagram = true;
  a = a.toLowerCase();
  b = b.toLowerCase();
  for (var i = 0; i < a.length; i++) {
    if (b.contains(a[i])) {
      int indexOfLetter = b.indexOf(a[i]);
      b = b.substring(0, indexOfLetter) + b.substring(indexOfLetter + 1);
    } else {
      isAnagram = false;
    }
  }
  
  return isAnagram;
}

// Bonus Task 20
int multiplyWithoutOperator(int x, int y) {
  int result = 0;
  for (var i = x; i > 0; i--) {
    result += y;
  }
  return result;
}

// Bonus Task 21
List<String> getListOfWordsFromString(String text) {
  List<String> wordList = [];
  String tempWord = "";

  for (var i = 0; i < text.length; i++) {
    if (text[i] == " ") {
      if (tempWord.isNotEmpty) {
        wordList.add(tempWord);
        tempWord = "";
      }
    } else {
      tempWord += text[i];
    }
  }
  if (tempWord.isNotEmpty) {
    wordList.add(tempWord);
  }
  return wordList;
}

// Bonus Task 22
bool checkPalindrom(String word) {
  for (var i = 0, j = word.length - 1; i < word.length; i++, j--) {
    if (word[i] != word[j]) {
      return false;
    }
  }
  return true;
}

// Bonus Task 23
bool checkBrackets(String expression) {
  int counter = 0;
  for (var i = 0; i < expression.length; i++) {
    if (expression[i] == "(") {
      counter++;
    }
    if (expression[i] == ")") {
      counter--;
    }
  }
  print(counter);
  if (counter == 0) {
    return true;
  }
  return false;
}

void main() {
  // Bonus Task 1
  print("\n// Bonus Task 1 ");
  print("Die größere Zahl ist ${getBiggerNumber(10, 11)}");
  print("Die größere Zahl ist ${getBiggerNumber(1, -1)}");
  print("Die größere Zahl ist ${getBiggerNumber(25, 9)}");

  // Bonus Task 2
  print("\n// Bonus Task 2 ");
  print("Die  Zahl ist gerade: ${checkIfEven(25)}");
  print("Die  Zahl ist gerade: ${checkIfEven(2)}");
  print("Die  Zahl ist gerade: ${checkIfEven(4)}");

  // Bonus Task 3
  print("\n// Bonus Task 3 ");
  List<int> numbers = createList(10, 20);
  print(
    "Die Summe der Elemente in der Liste $numbers ist: ${getSumOfList(numbers)}",
  );
  print(
    "Die Summe der Elemente in der Liste ${[1, 2, 3, 4, 5, 6, 7]} ist: ${getSumOfList([1, 2, 3, 4, 5, 6, 7])}",
  );
  print(
    "Die Summe der Elemente in der Liste ${[10, 20, 30, 40, 50, 60, 70]} ist: ${getSumOfList([10, 20, 30, 40, 50, 60, 70])}",
  );

  // Bonus Task 4
  print("\n// Bonus Task 4 ");
  numbers = createList(10, 20);
  print(
    "Der Durchschnitt aller Elemente in der Liste $numbers ist: ${getAVGOfList(numbers)}",
  );
  print(
    "Der Durchschnitt aller Elemente in der Liste ${[1, 2, 3, 4, 5, 6, 7]} ist: ${getAVGOfList([1, 2, 3, 4, 5, 6, 7])}",
  );
  print(
    "Der Durchschnitt aller Elemente in der Liste ${[10, 20, 30, 40, 50, 60, 70]} ist: ${getAVGOfList([10, 20, 30, 40, 50, 60, 70])}",
  );

  // Bonus Task 5
  print("\n// Bonus Task 5 ");
  String char = "e", text = "Ich bin ein Text";
  print(
    'Der Buchstabe $char ist in dem String "$text" ${getAmountOfChar("e", "Ich bin ein Text")} mal vorhanden.',
  );
  char = "a";
  text = "Alle meine Entchen";
  print(
    'Der Buchstabe $char ist in dem String "$text" ${getAmountOfChar("e", "otto")} mal vorhanden.',
  );
  char = "f";
  text = "Alle meine Entchen";
  print(
    'Der Buchstabe $char ist in dem String "$text" ${getAmountOfChar("e", "Alle meine Entchen")} mal vorhanden.',
  );

  // Bonus Task 6
  print("\n// Bonus Task 6 ");
  char = "e";
  text = "Ich bin ein Text";
  print(
    'Der Buchstabe $char ist in dem String "$text" vorhanden: ${checkIfStringContainsChar("e", "Ich bin ein Text")}',
  );
  char = "a";
  text = "Alle meine Entchen";
  print(
    'Der Buchstabe $char ist in dem String "$text" vorhanden: ${checkIfStringContainsChar("e", "otto")}',
  );
  char = "f";
  text = "Alle meine Entchen";
  print(
    'Der Buchstabe $char ist in dem String "$text" vorhanden: ${checkIfStringContainsChar("e", "Alle meine Entchen")}',
  );

  // Bonus Task 7
  print("\n// Bonus Task 7 ");
  print(checkNumber(10));
  print(checkNumber(-5));
  print(checkNumber(0));

  // Bonus Task 8
  print("\n// Bonus Task 8 ");
  text = "Hello World!!";
  print(
    "Der String $text sieht als Liste folgendermaßen aus: ${getListOfChar(text)}",
  );
  text = "42";
  print(
    "Der String $text sieht als Liste folgendermaßen aus: ${getListOfChar(text)}",
  );
  text = "Bonus Task 8";
  print(
    "Der String $text sieht als Liste folgendermaßen aus: ${getListOfChar(text)}",
  );

  // Bonus Task 9
  print("\n// Bonus Task 9 ");
  print(
    getInfoOfStringListElement(["Otto", "Erik", "Wie ist das Wetter heute?"]),
  );
  print(getInfoOfStringListElement(["Hello World!!", "42", "Bonus Task 8"]));
  print(
    getInfoOfStringListElement([
      "Das Wette ",
      "ist",
      "an diesem Tag",
      "sehr amgenehm.",
    ]),
  );

  // Bonus Task 10
  print("/\n/ Bonus Task 10 ");
  int x = 12;
  int y = 12;
  int z = 12;
  print(
    "Das Produkt der Zahlen $x, $y und $z ist: ${getProduct(getProduct(x, y), z)}",
  );
  x = 2;
  y = 2;
  z = 2;
  print(
    "Das Produkt der Zahlen $x, $y und $z ist: ${getProduct(getProduct(x, y), z)}",
  );
  x = 24;
  y = 60;
  z = 60;
  print(
    "Das Produkt der Zahlen $x, $y und $z ist: ${getProduct(getProduct(x, y), z)}",
  );

  // Bonus Task 11
  print("/\n/ Bonus Task 11 ");
  x = 12;
  print("Die Zahl $x mit umgedrehten Vorzeichen ist: ${changeSignOfNumber(x)}");
  x = 2;
  print("Die Zahl $x mit umgedrehten Vorzeichen ist: ${changeSignOfNumber(x)}");
  x = 24;
  print("Die Zahl $x mit umgedrehten Vorzeichen ist: ${changeSignOfNumber(x)}");

  // Bonus Task 12
  print("\n// Bonus Task 12 ");
  numbers = createList(10, 20);
  print(
    "Die kleinste Zahl der Liste $numbers ist: ${getMinimumFromList(numbers)}",
  );
  print(
    "Die kleinste Zahl der Liste ${[1, 2, 3, 4, 5, 6, 7]} ist: ${getMinimumFromList([1, 2, 3, 4, 5, 6, 7])}",
  );
  print(
    "Die kleinste Zahl der Liste ${[10, 20, 30, 40, 50, 60, 70]} ist: ${getMinimumFromList([10, 20, 30, 40, 50, 60, 70])}",
  );

  // Bonus Task 13
  print("\n// Bonus Task 13 ");
  List<String> words = ["Apfel", "Banane", "Kirsche", "Dattel"];
  print(
    "Die Länge der Wörter in der Liste $words ist: ${getWordLength(words)}",
  );
  words = ["Hallo", "Welt", "Dart"];
  print(
    "Die Länge der Wörter in der Liste $words ist: ${getWordLength(words)}",
  );
  words = ["Ein", "Zwei", "Drei", "Vier"];
  print(
    "Die Länge der Wörter in der Liste $words ist: ${getWordLength(words)}",
  );

  // Bonus Task 14
  print("\n// Bonus Task 14 ");
  double temperature = 100.0;
  bool inCelsius = true;
  print(
    "Die Temperatur $temperature in Celsius ist in Fahrenheit: ${convertTemperature(temperature, inCelsius)}",
  );
  temperature = 32.0;
  inCelsius = false;
  print(
    "Die Temperatur $temperature in Fahrenheit ist in Celsius: ${convertTemperature(temperature, inCelsius)}",
  );
  temperature = 0.0;
  inCelsius = true;
  print(
    "Die Temperatur $temperature in Celsius ist in Fahrenheit: ${convertTemperature(temperature, inCelsius)}",
  );

  // Bonus Task 15
  print("\n// Bonus Task 15 ");
  words = ["Otto", "Erik", "Wie ist das Wetter heute?"];
  print(
    "Die Strings der Liste $words ergeben zusammegefügt: ${connectElementsOfList(words)}",
  );
  words = ["Hello World!!", "42", "Bonus Task 8"];
  print(
    "Die Strings der Liste $words ergeben zusammegefügt: ${connectElementsOfList(words)}",
  );
  words = ["Das Wette ", "ist", "an diesem Tag", "sehr amgenehm."];
  print(
    "Die Strings der Liste $words ergeben zusammegefügt: ${connectElementsOfList(words)}",
  );

  // Bonus Task 16
  print("\n// Bonus Task 16 ");
  print('Ist 17 eine Primzahl? ${checkForPrimeNumber(17)}');
  print('Ist 25 eine Primzahl? ${checkForPrimeNumber(25)}');
  print('Ist 29 eine Primzahl? ${checkForPrimeNumber(29)}');

  // Bonus Task 17
  print("\n// Bonus Task 17 ");
  x = 4567;
  print("Die Zahl $x umgedreht lautet: ${reverseInteger(x)}");
  x = 123456789;
  print("Die Zahl $x umgedreht lautet: ${reverseInteger(x)}");
  x = 545;
  print("Die Zahl $x umgedreht lautet: ${reverseInteger(x)}");

  // Bonus Task 18
  print("\n// Bonus Task 18 ");
  int seconds = 3661;
  print("${getTimeFromSecond(seconds)}");
  seconds = 3661;
  print("${getTimeFromSecond(seconds)}");
  seconds = 3661;
  print("${getTimeFromSecond(seconds)}");

  // Bonus Task 19
  print("\n// Bonus Task 19 ");
  String a = "Atlas";
  String b = "Salat";
  print("Der String $a ist ein Anagramm von $b: ${checkAnagram(a, b)}");
  b = "Salsa";
  print("Der String $a ist ein Anagramm von $b: ${checkAnagram(a, b)}");
  b = "Salsabar";
  print("Der String $a ist ein Anagramm von $b: ${checkAnagram(a, b)}");

  // Bonus Task 20
  print("\n// Bonus Task 20 ");
  print(multiplyWithoutOperator(10, 10));
  print(multiplyWithoutOperator(12, 2));
  print(multiplyWithoutOperator(6, 4));

  // Bonus Task 21
  print("\n// Bonus Task 21 ");
  print(getListOfWordsFromString("Die Nacht ist dunkel und voller Schrecken."));
  print(
    getListOfWordsFromString("Sein oder nicht sein das ist hier die Frage."),
  );
  print(getListOfWordsFromString("Ein Bett im Kornfeld das ist immer frei."));

  // Bonus Task 22
  print("\n// Bonus Task 22 ");
  String word = "otto";
  print("Der String $word ist ein Palimdrom: ${checkPalindrom(word)}");
  word = "Lagerregal";
  print("Der String $word ist ein Palimdrom: ${checkPalindrom(word)}");
  word = "Test";
  print("Der String $word ist ein Palimdrom: ${checkPalindrom(word)}");

  // Bonus Task 23
  print("\n// Bonus Task 23 ");
  String expression = "(a + b) * ((c + d) * e)";
  print("Die Klammern des Ausdrucks sind in Ordnung: ${checkBrackets(expression)}");
  expression = "(a + b)² = a² + 2ab + b²";
print("Die Klammern des Ausdrucks sind in Ordnung: ${checkBrackets(expression)}");
  expression = "(())(";
print("Die Klammern des Ausdrucks sind in Ordnung: ${checkBrackets(expression)}");

}
