import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mf_challenge/src/features/user/user.dart';
import 'package:mf_challenge/src/features/user/user_api_client.dart';
import 'package:mock_web_server/mock_web_server.dart';

late MockWebServer _server;
late UserApiClient _client;

void main() {
  setUp(() async {
    _server = MockWebServer();
    await _server.start();
    final dio = Dio();
    dio.interceptors.add(LogInterceptor(responseBody: true));
    _client = UserApiClient(dio, baseUrl: _server.url);
  });

  tearDown(() {
    _server.shutdown();
  });

  test("test user data", () async {
    _server.enqueue(
        body: jsonEncode([
          {
            "id": 1,
            "name": "Alice",
            "account_ids": [1, 3, 5]
          },
        ]),
        headers: {"Content-Type": "application/json"});
    final tasks = await _client.fetchUserList();
    expect(tasks, isNotNull);
    expect(tasks, [
      const User(id: 1, name: 'Alice', account_ids: [1, 3, 5])
    ]);
  });

  // TODO(mafreud): add unit test for accouts
}
