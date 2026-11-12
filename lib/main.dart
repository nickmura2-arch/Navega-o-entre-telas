import 'package:flutter/material.dart';

import 'routes/app_routes.dart';
import 'screens/tela_cadastro.dart';
import 'screens/tela_login.dart';
import 'screens/tela_principal.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.login,
      routes: {
        AppRoutes.login: (context) => const TelaLogin(),
        AppRoutes.cadastro: (context) => const TelaCadastro(),
        AppRoutes.principal: (context) => const TelaPrincipal(),
      },
    );
  }
}
