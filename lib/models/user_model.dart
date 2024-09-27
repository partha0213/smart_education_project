/// Represents a user in the Smart Education App.
class UserModel {
  final String id;           // Unique identifier for the user
  final String name;         // User's full name
  final String email;        // User's email address
  final String role;         // User's role (e.g., student, teacher, admin)
  final DateTime createdAt;  // Account creation date
  final DateTime updatedAt;  // Last update date

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.role,
    required this.createdAt,
    required this.updatedAt,
  });

  /// Factory method to create a UserModel from a JSON object.
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      role: json['role'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );
  }

  /// Method to convert a UserModel to a JSON object.
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'role': role,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }

  /// Method to display user information as a string.
  @override
  String toString() {
    return 'UserModel{id: $id, name: $name, email: $email, role: $role}';
  }
}