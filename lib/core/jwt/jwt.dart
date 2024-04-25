import 'dart:developer';

import 'package:dart_frog/dart_frog.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:frog_authentication/core/env/env.dart';

class JwtService {
  final secret = SecretKey(Env.jwtSecretKey);

  Future<Map<String, dynamic>?> verifyToken(String token) async {
    try {
      final payload = JWT.verify(token, secret);

      final payloadData = payload.payload as Map<String, dynamic>;

      return payloadData;
    } catch (e) {
      log('error jwt : ', error: true);
      log('$e', error: true);
      return null;
    }
  }

  String generateToken({required String userId}) {
    return JWT({'id': userId}).sign(secret);
  }
}

Middleware registerJwtService(){
  return provider<JwtService>((_) => JwtService());
}
