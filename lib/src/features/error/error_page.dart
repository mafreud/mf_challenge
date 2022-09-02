import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({
    required this.exception,
    Key? key,
  }) : super(key: key);

  final Exception? exception;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(exception.toString()),
      ),
    );
  }
}
