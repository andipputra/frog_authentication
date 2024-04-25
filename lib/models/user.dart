import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed

/// User class model
class User with _$User {
  /// user constructor
  const factory User({
    required String fullname,
    required String email,
    required String password,
  }) = _User;
  

  /// deserialization
  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
