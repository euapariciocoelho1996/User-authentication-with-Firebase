import 'package:flutter/material.dart';
import 'package:to_do_/services/auth_service.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthService authService = AuthService();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () async {
              await authService.signOut();
            },
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Bem-vindo, ${authService.getCurrentUser()?.email ?? 'Usuário'}!',
        ),
      ),
    );
  }
}
