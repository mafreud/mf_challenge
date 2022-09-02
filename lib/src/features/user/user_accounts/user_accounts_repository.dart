import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mf_challenge/src/features/user/user_accounts/user_accounts.dart';
import 'package:mf_challenge/src/features/user/user_api_client.dart';

class UserAccountsRepository {
  UserAccountsRepository({required this.userApiClient});

  final UserApiClient userApiClient;

  Future<List<UserAccounts>> fetchUserAccounts(int userId) =>
      userApiClient.fetchUserAccounts(userId);
}

final userAccountsRepositoryProvider = Provider<UserAccountsRepository>((ref) {
  return UserAccountsRepository(
      userApiClient: ref.watch(userApiClientProvider));
});
