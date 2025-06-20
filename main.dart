// Task 1 
int sumNumbers(int x, int y, int z) {
  return x + y + z ;
}

// Task 2 
int getStringLength(String text) {
  return text.length;
}

// Task 3
final regExpVokal = RegExp(r'^[aeiou]$', caseSensitive: false);

int getVocalAmount(String text) {
  int amount = 0;
  for (var i = 0; i < text.length; i++) {
    if (regExpVokal.hasMatch(text[i])) {
      amount++;
    }
  }
  return amount;
}

void main() {
  // Task 1
  print("Die Summe der Zahlen ist: ${sumNumbers(4, 6, 8)}");
  print("Die Summe der Zahlen ist: ${sumNumbers(12, 55, 7)}");
  print("Die Summe der Zahlen ist: ${sumNumbers(5, 5, 5)}");
// Task 2 
  print("Die länge des Strings ist: ${getStringLength("Sonne")}");
  print("Die länge des Strings ist: ${getStringLength("Nachrichten")}");
  print("Die länge des Strings ist: ${getStringLength("454545")}");
// Task 3
  print("Der String beinhaltet ${getVocalAmount("Code läuft gut auf dem Server.")} Vokale");
  print("Der String beinhaltet ${getVocalAmount("Der frühe Vogel fängt den Wurm.")} Vokale");
  print("Der String beinhaltet ${getVocalAmount("Wie ist das Wetter heute?")} Vokale");
}
