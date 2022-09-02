import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mf_challenge/src/features/user/user_accounts/user_accounts_service.dart';

import '../user.dart';
import 'package:intl/intl.dart';

import '../user_accounts/user_accounts.dart';

class BalancePage extends ConsumerWidget {
  const BalancePage({Key? key, required this.user}) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final accounts = ref.watch(userAccountsFutureProvider(user.id));
    var formatter = NumberFormat('#,###,000');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail'),
      ),
      body: accounts.when(
        data: (accountList) => Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'User:',
                    style: TextStyle(fontSize: 17),
                  ),
                  Text(
                    user.name,
                    style: const TextStyle(fontSize: 17),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Total:',
                    style: TextStyle(fontSize: 17),
                  ),
                  Text(
                    '${formatter.format(calculateBalance(accountList))}円',
                    style: const TextStyle(fontSize: 17),
                  ),
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: accountList.length,
                  itemBuilder: ((context, index) {
                    final account = accountList[index];
                    return Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              account.name,
                              style: const TextStyle(fontSize: 17),
                            ),
                            Text(
                              '${formatter.format(account.balance)}円',
                              style: const TextStyle(fontSize: 17),
                            ),
                          ],
                        ),
                        const Divider(
                          color: Colors.black,
                        )
                      ],
                    );
                  }),
                ),
              )
            ],
          ),
        ),
        error: (error, stackTrace) => Text('Error:$Error'),
        loading: () => const Center(
          child: CircularProgressIndicator.adaptive(),
        ),
      ),
    );
  }

  /// 各金融機関残高の合計金額を算出・返却
  int calculateBalance(List<UserAccounts> accountList) {
    int sum = 0;
    for (final account in accountList) {
      sum = sum + account.balance;
    }

    return sum;
  }
}
