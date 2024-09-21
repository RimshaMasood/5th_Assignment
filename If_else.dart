//checking the input either it is vowel or consonant

import 'dart:io';
void main() {
  stdout.write('Enter any letter: ');
  var letter = stdin.readLineSync();
  if (letter != null && letter.length == 1) {
    letter = letter.toLowerCase();
    if (letter == 'a' || letter == 'e' || letter == 'i' || letter == 'o' || letter == 'u') {
      print("$letter is a vowel.");
    } else {
      print("$letter is a consonant.");
    }
  } 
  else if (letter != null && letter.length > 1) {
    print("Please enter only a single letter.");
  } 
  else {
  
    print("Invalid input.");
  }
}
