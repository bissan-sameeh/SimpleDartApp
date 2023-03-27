import 'dart:io';

class MathQuestion{
  String? question;
  double? answer;
  MathQuestion ({ required this.question, required this.answer});

    }
    double getAnswer(String q){
    print('Q// $q');
    var answer=double.tryParse(stdin.readLineSync()!)??0.0;
    return answer;
    }
void main(){
 
 var questions=[
   MathQuestion(question: "4+5",answer: 9.0),
   MathQuestion(question: "8*100",answer: 800.0),
   MathQuestion(question: "8-4",answer: 4.0)
                          ];
        for(var item in questions){
        
          var usertAnswer= getAnswer(item.question! );
           print("Your answer is $usertAnswer"); 
              if(usertAnswer == item.answer)
              print("Correct !");
              else{
                print("Try again..false, the answer was ${item.answer}");
              }
              print('------------------------------------');
              }}