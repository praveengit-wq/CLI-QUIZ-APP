// my profile
import 'dart:io';
void main(){
 CLI QUIZ = new CLI();
 QUIZ.cli_quiz();
}
class CLI{
  
    List<dynamic> quest = [
"Which company originally developed Java?",
"What is the default return type of the main method in Java?",
"Which feature of Java allows creating multiple methods with the same name but different parameters?",
"Dart was developed by which company?",
"In Dart, which keyword is used to define a constant variable whose value is known at compile time?",
"Which framework is built on Dart and used for cross-platform mobile app development?",
"In Flutter, what is the widget that represents immutable visual elements?",
"What is the command used to create a new Flutter project?",
"Which widget in Flutter is commonly used to create scrollable lists?",
"What is the file extension of Dart files?",
    ];
   List<List<dynamic>> option =  [
  ["A) James Gosling", "B) Bjarne Stroustrup", "C) Dennis Ritchie", "D) Guido van Rossum"],
  ["A) void", "B) int", "C) String", "D) boolean"],
  ["A) Inheritance", "B) Overloading", "C) Overriding", "D) Abstraction"],
  ["A) Facebook", "B) Microsoft", "C) Google", "D) Apple"],
  ["A) final", "B) const", "C) static", "D) var"],
  ["A) React Native", "B) Flutter", "C) Xamarin", "D) Ionic"],
  ["A) StatefulWidget", "B) StatelessWidget", "C) Container", "D) Column"],
  ["A) flutter make", "B) flutter create", "C) flutter init", "D) flutter new"],
  ["A) ListView", "B) Column", "C) GridView", "D) Stack"],
  ["A) .dart", "B) .java", "C) .flutter", "D) .script"]
];
    List<String> correctAnswers = [ "A","A","B","C","B","B","B","B","A","A"];
    void cli_quiz(){
      int score = 0;
      print("--------CLI QUIZ CONTEST--------");
      int ? n = quest.length;
      for(int i = 0;i<n;i++){
        quest.shuffle;
        print("Q${i+1}. ${quest[i]} ""\n");
      for(var choice in option[i]){
        print(choice);
      }
      var object = "Choose option - (A/B/C/D)\n";
      stdout.write(object);
      String ? Userinput = stdin.readLineSync();
      if(Userinput == null) continue;
      if(Userinput.toUpperCase() == correctAnswers[i]){
        print("correct\n");
        score++;
      }
      else{
        print("Wrong answer-The Correct answer is ${correctAnswers[i]} ""\n");
      }
      }
      print("Your Score is : $score /${quest.length}\n");
      if(score >= 8){
        print("Excellent Great Work");
      }
      else if(score >= 6){
        print("Good");
      }
      else{
        print("Great job.Better Luck Next time");
      }
    }
}
