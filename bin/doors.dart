import 'dart:io';
main() {
  gameTitle();
  levelOneTitle();
}

makeSpace(int spaces) {
  for (int index = 0; index < spaces; index++) {
    print(" ");
  }
}

gameTitle() {
  makeSpace(2);
  print("--------------------------------------------");
  print("|-------------- Doors Escape --------------|");
  print("--------------------------------------------");
  makeSpace(2);
}

levelOneTitle() {
  print("level 1");
  printToday();
  print("You woke up and found yourself locked between doors,");
  print("You most choose the right door to survive,");
  print("If you choose the wrong door, you will die.");
  levelOne();
}

levelOne() {
  makeSpace(1);
  print("Exit from door number Three 1) 1     2) 2     3) 3");
  String option1 = stdin.readLineSync()!;
  switch (option1) {
    case "1":
    lose();
      break;
    case "2":
    lose();
      break;
    case "3":
    win();
    levelTwoTitle();
      break;
    case "q":
    quitGame();
    break;
    default:
      makeSpace(2);
      levelOne();
      break;
  }

  makeSpace(2);
}
levelTwoTitle() {
  makeSpace(1);
  print("level 2");
  print("Nice! you passed the first door! ");
  levelTwo();

}

levelTwo() {
  makeSpace(1);
  print("Exit from door number One 1) C     2) B     3) A");
  String option1 = stdin.readLineSync()!;
    switch (option1) {
    case "1":
    lose();
      break;
    case "2":
    lose();
      break;
    case "3":
    win();
    levelThreeTitle();
      break;
    case "q":
    quitGame();
    break;
    default:
      makeSpace(2);
      levelTwo();
      break;
  }
  makeSpace(2);
}
levelThreeTitle() {
   print("level 3");
   print("WOW! you passed the Second door! ");
   levelThree();
}
levelThree() {
  makeSpace(1);
  print("Exit from door number Three 1)  ⚠️    2)  ⏹️    3)  ⏺️ ");
  String option1 = stdin.readLineSync()!;
    switch (option1) {
    case "1":
    win();
    congrats();
      break;
    case "2":
    lose();
      break;
    case "3":
    lose();
      break;
    case "4":
    lose();
      break;
    case "q":
    quitGame();
    break;
    default:
      makeSpace(2);
      levelThree();
      break;
  }
  makeSpace(2);
}

endGame() {
  makeSpace(1);
  print("######### The End #########");
  makeSpace(1);
}

printToday() {
  print(
      "${DateTime.now().day} / ${DateTime.now().month} / ${DateTime.now().year}");
}
win() {
  // window + .
  makeSpace(1);
  print("⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐");
  makeSpace(1);
}
lose() {
  makeSpace(2);
  print("☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️");
  makeSpace(2);
  endGame();
}
quitGame() {
  makeSpace(2);
  endGame();
  makeSpace(2);
  exit(0);
}
congrats() {
makeSpace(4);
print("⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐ Congratulation you passed ⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐");
endGame();
}