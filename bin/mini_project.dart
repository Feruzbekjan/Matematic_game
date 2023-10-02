//import 'dart:html';

import 'dart:io';
import 'dart:math';

void main() {
  scoreGame();
}

void scoreGame() {
  print("O'yinimizga Xush kelibsiz!!!");
  print("Matematik qobilyatingizni sinash vaqti keldi");
  print("""
Marhamat tanlang:
1 Easy
2 Medial
3 Difficult""");
  late int qiyinligi;
  int attemp = 0;
  late int firtsNum;
  late int secondNum;
  late int belgi;

  while (true) {
    String? input = stdin.readLineSync();
    if (input != null) {
      qiyinligi = int.tryParse(input) ?? -1;
      if (qiyinligi < 4 && qiyinligi > 0) {
        if (qiyinligi != 0) {
          for (int i = 1; i <= 10; i++) {
            List? ls = randNum(qiyinligi);
            if (ls != null) {
              firtsNum = ls[0];
              secondNum = ls[1];
              belgi = ls[2];
              if (belgi % 2 == 0) {
                print("Vaqt ketti");
                for (int i = 1; i <= 5; i++) {
                  sleep(Duration(seconds: 1));
                  clearTerminal();
                  print(i);
                  print("$firtsNum + $secondNum");
                }
                String? javob = stdin.readLineSync();
                sleep(Duration(seconds: 2));
                if (javob == null || javob.isEmpty) {
                  print("Keyingi savol");
                  sleep(Duration(seconds: 1));
                } else {
                  int jav = int.tryParse(javob) ?? -1;
                  if (jav == (firtsNum + secondNum)) {
                    print("To'g'ri 👍");
                    attemp++;
                    sleep(Duration(seconds: 1));
                  } else {
                    print("""
Javob Noto'g'ri 👎
Javob ${firtsNum + secondNum}""");
                    sleep(Duration(seconds: 1));
                  }
                }
              } else {
                firtsNum = ls[0];
                secondNum = ls[1];
                if (firtsNum > secondNum) {
                  print("Vaqt ketti");
                  for (int i = 1; i <= 5; i++) {
                    sleep(Duration(seconds: 1));
                    clearTerminal();
                    print(i);
                    print("$firtsNum - $secondNum");
                  }
                  String? javob = stdin.readLineSync();
                  sleep(Duration(seconds: 2));
                  if (javob == null||javob.isEmpty) {

                    print("Keyingi savol");
                    sleep(Duration(seconds: 1));
                  } else {
                    int jav = int.tryParse(javob) ?? -1;
                    if (jav == (firtsNum - secondNum)) {
                      print("To'g'ri 👍");
                      attemp++;
                      sleep(Duration(seconds: 1));
                    } else {
                      print("""
Javob Noto'g'ri 👎
Javob ${firtsNum - secondNum}""");
                      sleep(Duration(seconds: 1));
                    }
                  }
                } else {
                  print("Vaqt ketti");
                  for (int i = 1; i <= 5; i++) {
                    sleep(Duration(seconds: 1));
                    clearTerminal();
                    print(i);
                    print("$secondNum - $firtsNum");
                  }
                  String? javob = stdin.readLineSync();
                  sleep(Duration(seconds: 2));
                  if (javob == null||javob.isEmpty) {
                    print("Keyingi savol");
                    sleep(Duration(seconds: 1));
                  } else {
                    int jav = int.tryParse(javob) ?? -1;
                    if (jav == (secondNum - firtsNum)) {
                      print("To'g'ri 👍");
                      attemp++;
                      sleep(Duration(seconds: 1));
                    } else {
                      print("""
Javob Noto'g'ri 👎
Javob ${secondNum - firtsNum}""");
                      sleep(Duration(seconds: 1));
                    }
                  }
                }
              }
            }
          }
          clearTerminal();
          print("Siz $attemp ta savolga to'g'ri javob berdingiz");
          break;
        }
      } else {
        print("""
1 Easy
2 Medial
3 Difficult
Iltimos birini tanlang""");
        continue;
      }
    } else {
      print("""
1 Easy
2 Medial
3 Difficult
Iltimos birini tanlang""");
      continue;
    }
  }
}

void clearTerminal() {
  if (Platform.isWindows) {
    // Windows uchun terminalni tozalash
    print("\x1B[2J\x1B[0;0H");
  } else {
    // Windows emas operatsion tizimlarda terminalni tozalash
    print("\x1B[2J");
  }
}

void second() {
  print("vaqt ketti");
  for (int i = 1; i <= 5; i++) {
    sleep(Duration(seconds: 1));
    clearTerminal();
    print(i);
  }
  sleep(Duration(milliseconds: 500));
  print("Vaqt tugadi");
}

List? randNum(int level) {
  if (level == 1) {
    Random random = Random();
    int randnum = random.nextInt(90) + 10;
    int randnum2 = random.nextInt(90) + 10;
    int belgi = random.nextInt(2);
    List ran = [randnum, randnum2, belgi];
    return ran;
  } else if (level == 2) {
    Random random = Random();
    int randnum = random.nextInt(900) + 100;
    int randnum2 = random.nextInt(900) + 100;
    int belgi = random.nextInt(2);
    List ran = [randnum, randnum2, belgi];
    return ran;
  } else if (level == 3) {
    Random random = Random();
    int randnum = random.nextInt(9000) + 1000;
    int randnum2 = random.nextInt(9000) + 1000;
    int belgi = random.nextInt(2);
    List ran = [randnum, randnum2, belgi];
    return ran;
  }
}
