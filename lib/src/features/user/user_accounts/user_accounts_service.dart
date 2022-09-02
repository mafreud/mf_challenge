import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mf_challenge/src/features/user/user_accounts/user_accounts.dart';
import 'package:mf_challenge/src/features/user/user_accounts/user_accounts_repository.dart';

class UserAccountsService {
  UserAccountsService({required this.userAccountsRepository});

  final UserAccountsRepository userAccountsRepository;

  /// userIdを引数に取り、そのユーザーの口座情報を返却
  Future<List<UserAccounts>> fetchUserAccounts(int userId) =>
      userAccountsRepository.fetchUserAccounts(userId);
}

final userAccountsServiceProvider = Provider<UserAccountsService>((ref) {
  return UserAccountsService(
      userAccountsRepository: ref.watch(userAccountsRepositoryProvider));
});

final userAccountsFutureProvider =
    FutureProvider.family.autoDispose<List<UserAccounts>, int>((ref, userId) {
  final userAccounts = ref.watch(userAccountsServiceProvider);
  return userAccounts.fetchUserAccounts(userId);
});
