#include <LiquidCrystal.h>
#include <Arduino.h>

LiquidCrystal lcd(12, 11, 10, 9, 8, 7);

const int button1 = 2; // <
const int button2 = 3; // ^
const int button3 = 4; // _
const int button4 = 5; // >

// use dynamic memory for generated sequence
String* psequence = nullptr;
int* pnum = nullptr;

void setup() {
  pinMode(button1, INPUT_PULLUP);
  pinMode(button2, INPUT_PULLUP);
  pinMode(button3, INPUT_PULLUP);
  pinMode(button4, INPUT_PULLUP);

  // start message
  randomSeed(analogRead(0));
  lcd.begin(16, 2);
  lcd.print("Simon Game");
  delay(3000);
}

void loop() {
    int difficulty = difficulty_selection();
    generate_sequence(difficulty);
    display_sequence();
    if(check_user_input()){
      lcd.clear();
      lcd.print("Success!");
      delay(2000);
    }else{
      lcd.clear();
      lcd.print("Wrong,game over");
      delay(2000);
    }

    // Free the memory allocated
    delete[] psequence;
    delete pnum;
}

int difficulty_selection() {
  lcd.clear();
  lcd.setCursor(0, 0);
  lcd.print("Difficulty Lv:");
  lcd.setCursor(0, 1);
  lcd.print("<1  ^2  _3  >4");
  int selectedLevel = 0; // Initialize to 0 (no selection)
  while (selectedLevel == 0) {
    if (digitalRead(button1) == LOW) {
      selectedLevel = 1;
    }
    if (digitalRead(button2) == LOW) {
      selectedLevel = 2;
    }
    if (digitalRead(button3) == LOW) {
      selectedLevel = 3;
    }
    if (digitalRead(button4) == LOW) {
      selectedLevel = 4;
    }
  }
  lcd.clear();
  lcd.setCursor(0,0);
  lcd.print("Level ");
  lcd.print(selectedLevel);
  delay(2000);
  lcd.clear();
  return selectedLevel; 
}

void generate_sequence(int level) {
  pnum = new int;
  // number of sequence based on difficulty
  *pnum = random(4 * level + (level - 1) * (level - 1), 8 * level);
  psequence = new String[*pnum];
  for (int i = 0; i < *pnum; i++) {
    int index = random(1, 5);
    switch (index) {
      case 1:
        psequence[i] = "^";
        break;
      case 2:
        psequence[i] = "<";
        break;
      case 3:
        psequence[i] = ">";
        break;
      default:
        psequence[i] = "_";
        break;
    }
  }
}

void display_sequence() {
  lcd.print("Simon says");
  delay(2000);
  lcd.clear();
  for (int i = 0; i < *pnum; i++) {
      lcd.print(psequence[i]);
      delay(1000);
      lcd.clear();
      delay(500);
  }
}

bool check_user_input() {
  lcd.setCursor(0, 0);
  lcd.print("Enter answer");
  delay(1000);
  lcd.clear();
  String userinput = "";

  for (int i = 0; i < *pnum; i++) {
    bool entered = false;
    while (!entered) {
      if (digitalRead(button1) == LOW) {
         // if sequence length > 16, move to 2nd row for entering sequence 17-32
        lcd.setCursor(i % 16, i >= 16);
        lcd.print("<");
        userinput += '<';
        delay(1000);
        entered = true;
      }
      if (digitalRead(button2) == LOW) {
        lcd.setCursor(i % 16, i >= 16);
        lcd.print("^");
        userinput += '^';
        delay(1000);
        entered = true;
      }
      if (digitalRead(button3) == LOW) {
        lcd.setCursor(i % 16, i >= 16);
        lcd.print("_");
        userinput += '_';
        delay(1000);
        entered = true;
      }
      if (digitalRead(button4) == LOW) {
        lcd.setCursor(i % 16, i >= 16);
        lcd.print(">");
        userinput += '>';
        delay(1000);
        entered = true;
      }
    }
  }
  for(int i = 0; i < *pnum; i++){
    if((String)userinput[i] == psequence[i]){
      return true;  // correct input
    }
    return false;
    }
}
