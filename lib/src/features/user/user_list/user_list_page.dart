import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mf_challenge/src/features/user/user_service.dart';
import 'package:mf_challenge/src/routing/router.dart';

/// ユーザーの一覧表示画面
///
///ユーザー名の一覧をリストで表示。該当行をタップすると、ユーザーの金融機関残高表示画面へ遷移。
class UserListPage extends ConsumerWidget {
  const UserListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userList = ref.watch(userListFutureProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('User'),
      ),
      body: userList.when(
        data: (userList) => ListView.builder(
          itemCount: 3,
          itemBuilder: (_, index) {
            final user = userList[index];
            return GestureDetector(
              onTap: () {
                context.pushNamed(AppRoute.balance.name,
                    params: {
                      GoRouterParameterKey.userId.name: user.id.toString()
                    },
                    extra: user);
              },
              child: Column(
                children: [
                  ListTile(
                    title: Text(user.name),
                  ),
                  const Divider(
                    color: Colors.black,
                  )
                ],
              ),
            );
          },
        ),
        error: (error, stack) => Text('Error:$error'),
        loading: () => const Center(
          child: CircularProgressIndicator.adaptive(),
        ),
      ),
    );
  }
}
