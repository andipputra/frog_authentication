import 'package:dart_frog/dart_frog.dart';
import 'package:frog_authentication/authenticator.dart';

/// authenticator middleware
Handler middleware(Handler handler) {
  return handler
    ..use(requestLogger())
    ..use(
      provider<Authenticator>(
        (_) => Authenticator(),
      ),
    );
}
