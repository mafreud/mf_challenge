import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_accounts.freezed.dart';
part 'user_accounts.g.dart';

@freezed
class UserAccounts with _$UserAccounts {
  const factory UserAccounts({
    required int id,
    // ignore: non_constant_identifier_names
    required int user_id,
    required String name,
    required int balance,
  }) = _UserAccounts;

  factory UserAccounts.fromJson(Map<String, Object?> json) =>
      _$UserAccountsFromJson(json);
}
