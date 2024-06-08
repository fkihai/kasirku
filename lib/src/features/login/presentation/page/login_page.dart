import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  static const String routerName = 'login-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('LOGIN')),
        body: const Center(child: Text('LOGIN')));
  }
}
