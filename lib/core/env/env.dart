import 'package:envied/envied.dart';

part 'env.g.dart';

@envied
abstract class Env {
  @EnviedField(varName: 'DB_HOST')
  static const String dbHost = _Env.dbHost;

  @EnviedField(varName: 'DB_PORT')
  static const int dbPort = _Env.dbPort;

  @EnviedField(varName: 'DB_NAME')
  static const String dbName = _Env.dbName;

  @EnviedField(varName: 'DB_USERNAME')
  static const String dbUsername = _Env.dbUsername;

  @EnviedField(varName: 'DB_PASSWORD')
  static const String dbPassword = _Env.dbPassword;

  @EnviedField(varName: 'JWT_SECRET_KEY')
  static const String jwtSecretKey = _Env.jwtSecretKey;
}
