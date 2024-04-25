import 'package:dart_frog/dart_frog.dart';
import 'package:frog_authentication/core/database/database.dart';
import 'package:frog_authentication/core/jwt/jwt.dart';

/// authenticator middleware
Handler middleware(Handler handler) {
  
  return handler
    ..use(requestLogger())
    ..use(registerJwtService());
}
