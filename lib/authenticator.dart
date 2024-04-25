import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:frog_authentication/user.dart';

/// Authenticator Class
class Authenticator {
  static const _users = {
    'john': User(
      id: '1',
      name: 'John',
      password: '123',
    ),
    'jack': User(
      id: '2',
      name: 'Jack',
      password: '321',
    ),
    'andi': User(
      id: '3',
      name: 'Andi',
      password: 'App211196',
    ),
  };

  static const _passwords = {
    // ⚠️ Never store user's password in plain text,
    //these values are in plain text
    // just for the sake of the tutorial.
    'john': '123',
    'jack': '321',
    'andi': 'App211196',
  };

  /// finding user based on username and password
  User? findByUsernameAndPassword({
    required String username,
    required String password,
  }) {
    final user = _users[username];

    if (user != null && _passwords[username] == password) {
      return user;
    }

    return null;
  }

  /// verify token function
  User? verifyToken(String token) {
    try {
      final payload = JWT.verify(
        token,
        SecretKey('123'),
      );

      final payloadData = payload.payload as Map<String, dynamic>;

      final username = payloadData['username'] as String;

      return _users[username];
    } catch (e) {
      return null;
    }
  }

  /// generate JWT token
  String generateToken({
    required String username,
    required User user,
  }) {
    final jwt = JWT({
      'id': user.id,
      'name': user.name,
      'username': username,
    });

    return jwt.sign(
      SecretKey('123'),
      expiresIn: const Duration(minutes: 1),
    );
  }
}
