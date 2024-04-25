import 'package:frog_authentication/core/env/env.dart';
import 'package:postgres/postgres.dart';

class DatabaseConfig {
  final _dbConnection = Connection.open(
    Endpoint(
      host: Env.dbHost,
      database: Env.dbName,
      username: Env.dbUsername,
      password: Env.dbPassword,
    ),
  );

  Future<Connection> getConnection() async {
    return _dbConnection;
  }
}
