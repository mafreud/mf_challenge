import 'package:go_router/go_router.dart';
import 'package:mf_challenge/src/features/user/balance/balance_page.dart';
import 'package:mf_challenge/src/features/user/user.dart';
import 'package:mf_challenge/src/features/user/user_list/user_list_page.dart';

import '../features/error/error_page.dart';

enum AppRoute { userList, balance }

enum GoRouterParameterKey {
  userId,
}

final router = GoRouter(
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: '/',
      name: AppRoute.userList.name,
      builder: (context, state) => const UserListPage(),
      routes: [
        GoRoute(
          path: 'balance:userId',
          name: AppRoute.balance.name,
          builder: (_, state) {
            return BalancePage(user: state.extra as User);
          },
        ),
      ],
    ),
  ],
  errorBuilder: (context, state) => ErrorPage(exception: state.error),
);
