import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/home/home_state.dart';
import 'package:DevQuiz/shared/models/awnser_model.dart';
import 'package:DevQuiz/shared/models/question_model.dart';
import 'package:DevQuiz/shared/models/quiz_model.dart';
import 'package:DevQuiz/shared/models/user_model.dart';

class HomeController {
  HomeState state = HomeState.empty;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() {
    user = UserModel(
      name: "REDRODRIGO",
      photoUrl: "https://avatars.githubusercontent.com/u/31713982?v=4",
    );
  }

  void getQuizzers() {
    quizzes = [
      QuizModel(
          imagem: AppImages.blocks,
          level: Level.facil,
          questionAnswered: 1,
          title: "NLW 5 Flutter",
          questions: [
            QuestionModel(title: "Está curtindo o flutter?", awnsers: [
              AwnserModel(title: "Estou curtindo"),
              AwnserModel(title: "Amando flutter"),
              AwnserModel(title: "Muito toop"),
              AwnserModel(title: "Show de bola", isRight: true),
            ]),
            QuestionModel(title: "Está curtindo o flutter?", awnsers: [
              AwnserModel(title: "Estou curtindo"),
              AwnserModel(title: "Amando flutter"),
              AwnserModel(title: "Muito toop"),
              AwnserModel(title: "Show de bola", isRight: true),
            ]),
          ])
    ];
  }
}
