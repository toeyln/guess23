import 'dart:io';
import 'dart:math';
class Game {
  int? max;
  int? _answer;
  int _guessCount = 0;
  Game({int? maxRandom = 100}) {
    if(maxRandom == null){
      maxRandom = 100;
    }
    max = maxRandom;
    var r = Random();
    _answer = r.nextInt(max!) + 1;
  }
  int? get mRandom{
    return max;
  }
  int get guessCount {
    return _guessCount;
  }
  int doGuess(int num) {
    _guessCount++;
    if (num > _answer!) {
      return 1;
    } else if (num < _answer!) {
      return -1;
    } else {
      return 0;
    }
  }
}