/// User Class for user model
class User {
  /// User Class Initialitation
  const User({
    required this.id,
    required this.name,
    required this.password,
  });

  /// [id] refers to user id
  final String id;

  /// [name] refers to user name
  final String name;

  /// [password] refers to user password
  final String password;
}
