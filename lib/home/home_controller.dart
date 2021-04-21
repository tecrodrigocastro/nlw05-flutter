import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/home/home_state.dart';
import 'package:DevQuiz/shared/models/awnser_model.dart';
import 'package:DevQuiz/shared/models/question_model.dart';
import 'package:DevQuiz/shared/models/quiz_model.dart';
import 'package:DevQuiz/shared/models/user_model.dart';
import 'package:flutter/foundation.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;
  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    user = UserModel(
      name: "REDRODRIGO",
      photoUrl: "https://avatars.githubusercontent.com/u/31713982?v=4",
    );
    state = HomeState.sucess;
  }

  void getQuizzers() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
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
    state = HomeState.sucess;
  }
}
