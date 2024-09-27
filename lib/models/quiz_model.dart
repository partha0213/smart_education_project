
/// Represents a quiz question in the Smart Education App.
class QuizQuestion {
  final String id;                // Unique identifier for the question
  final String questionText;      // The text of the question
  final List<String> options;     // List of possible answers
  final String correctAnswer;      // The correct answer for the question

  QuizQuestion({
    required this.id,
    required this.questionText,
    required this.options,
    required this.correctAnswer,
  });

  /// Factory method to create a QuizQuestion from a JSON object.
  factory QuizQuestion.fromJson(Map<String, dynamic> json) {
    return QuizQuestion(
      id: json['id'] as String,
      questionText: json['questionText'] as String,
      options: List<String>.from(json['options'] as List),
      correctAnswer: json['correctAnswer'] as String,
    );
  }

  /// Method to convert a QuizQuestion to a JSON object.
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'questionText': questionText,
      'options': options,
      'correctAnswer': correctAnswer,
    };
  }

  /// Method to display question information as a string.
  @override
  String toString() {
    return 'QuizQuestion{id: $id, questionText: $questionText, options: $options, correctAnswer: $correctAnswer}';
  }
}

/// Represents a quiz in the Smart Education App.
class QuizModel {
  final String id;                // Unique identifier for the quiz
  final String title;             // Title of the quiz
  final String description;       // Description of the quiz
  final List<QuizQuestion> questions; // List of questions in the quiz
  final DateTime createdAt;       // Creation date of the quiz
  final DateTime updatedAt;       // Last update date of the quiz

  QuizModel({
    required this.id,
    required this.title,
    required this.description,
    required this.questions,
    required this.createdAt,
    required this.updatedAt,
  });

  /// Factory method to create a QuizModel from a JSON object.
  factory QuizModel.fromJson(Map<String, dynamic> json) {
    return QuizModel(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      questions: (json['questions'] as List)
          .map((questionJson) => QuizQuestion.fromJson(questionJson))
          .toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );
  }

  /// Method to convert a QuizModel to a JSON object.
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'questions': questions.map((question) => question.toJson()).toList(),
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }

  /// Method to display quiz information as a string.
  @override
  String toString() {
    return 'QuizModel{id: $id, title: $title, description: $description, questions: $questions}';
  }
}