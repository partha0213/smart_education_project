import 'package:get/get.dart';
import 'quiz_model.dart'; // Model representing quiz questions
import 'quiz_service.dart'; // Service to fetch or manage quiz data

class QuizController extends GetxController {
  var questionNumber = 0.obs;  // Observable question number
  var score = 0.obs;           // Observable score
  var isQuizCompleted = false.obs; // Observable flag for completion status
  var selectedAnswer = ''.obs;     // Observable for the selected answer

  // A list to hold quiz questions
  List<QuizQuestion> questions = []; // Use QuizQuestion instead of Question

  // Method to initialize quiz questions from service or API
  Future<void> initializeQuiz() async {
    try {
      questions = await QuizService().getQuestions(); // Ensure QuizService is defined
      questionNumber.value = 0;
      score.value = 0;
      isQuizCompleted.value = false;
    } catch (e) {
      Get.snackbar("Error", "Failed to load quiz: $e");
    }
  }

  // Method to move to the next question
  void nextQuestion() {
    if (questionNumber.value < questions.length - 1) {
      questionNumber.value++;
    } else {
      isQuizCompleted.value = true;
    }
  }

  // Method to submit an answer
  void submitAnswer(String answer) {
    if (questions[questionNumber.value].correctAnswer == answer) {
      score.value++;
    }
    selectedAnswer.value = answer;
    nextQuestion();
  }

  // Reset the quiz to start over
  void resetQuiz() {
    questionNumber.value = 0;
    score.value = 0;
    isQuizCompleted.value = false;
    selectedAnswer.value = '';
  }

  // Additional methods for error handling and feedback (optional):

  // Method to handle quiz completion
  void onQuizCompleted() {
    // Implement logic for displaying final score, feedback, etc.
  }

  // Method to handle quiz errors
  void handleQuizError(String errorMessage) {
    // Implement logic for displaying error messages, retrying, etc.
  }
}