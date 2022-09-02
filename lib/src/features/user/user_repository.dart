import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mf_challenge/src/features/user/user.dart';
import 'package:mf_challenge/src/features/user/user_api_client.dart';

class UserRepository {
  UserRepository({required this.userApiClient});

  final UserApiClient userApiClient;

  Future<List<User>> get userList => userApiClient.fetchUserList();
}

final userRepositoryProvider = Provider<UserRepository>((ref) {
  return UserRepository(userApiClient: ref.watch(userApiClientProvider));
});
