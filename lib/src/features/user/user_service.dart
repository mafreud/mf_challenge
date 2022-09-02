import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mf_challenge/src/features/user/user.dart';
import 'package:mf_challenge/src/features/user/user_repository.dart';

class UserService {
  UserService({required this.userRepository});

  final UserRepository userRepository;

  /// ユーザー一覧を返却
  Future<List<User>> get userList => userRepository.userList;
}

final userServiceProvider = Provider<UserService>((ref) {
  return UserService(userRepository: ref.watch(userRepositoryProvider));
});

final userListFutureProvider = FutureProvider<List<User>>((ref) {
  final user = ref.watch(userServiceProvider);
  return user.userList;
});
