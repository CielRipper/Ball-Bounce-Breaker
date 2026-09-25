class GameState{
  int score = 0;
  int lives = 2;

  List<int> highScores = [];

  void reset(){
    score = 0;
    lives = 2;
  }

  void addScore(){
    score++;
  }

  void removeLife() {
    lives -= 1;
  }

  void saveScore() {
    highScores.add(score);
    //Tests
    /*highScores = [12, 5, 30, 18, 22];*/
    highScores.sort((b, a) => a.compareTo(b));

    if (highScores.length > 3){
      highScores = highScores.take(3).toList();
    }
  }


}