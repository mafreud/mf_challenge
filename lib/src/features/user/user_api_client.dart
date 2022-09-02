import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mf_challenge/src/features/user/user_accounts/user_accounts.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import 'user.dart';

part 'user_api_client.g.dart';

@RestApi()
abstract class UserApiClient {
  factory UserApiClient(Dio dio, {String baseUrl}) = _UserApiClient;

  @GET('users')
  Future<List<User>> fetchUserList();

  @GET('users/{id}/accounts')
  Future<List<UserAccounts>> fetchUserAccounts(@Path("id") int id);
}

final userApiClientProvider = Provider<UserApiClient>((ref) {
  return UserApiClient(Dio(),
      baseUrl: "https://mfx-recruit-dev.herokuapp.com/");
});
