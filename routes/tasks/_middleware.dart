import 'package:dart_frog/dart_frog.dart';
import 'package:dart_frog_auth/dart_frog_auth.dart';
import 'package:frog_authentication/core/jwt/jwt.dart';
import 'package:frog_authentication/data/models/user.dart';

Handler middleware(Handler handler) {
  return handler.use(
    bearerAuthentication<Map<String, dynamic>>(
      authenticator: (context, token) async {
        final jwt = context.read<JwtService>();
        return jwt.verifyToken(token);
      },
    ),
  );
}
