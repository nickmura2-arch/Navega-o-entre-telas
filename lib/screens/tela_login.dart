import 'package:flutter/material.dart';

import '../routes/app_routes.dart';

class TelaLogin extends StatelessWidget {
  const TelaLogin({super.key});

  void _entrar(BuildContext context) {
    // Vai para a Tela Principal e remove TODAS as rotas anteriores
    // ((route) => false), então o botão "voltar" não retorna ao Login.
    Navigator.pushNamedAndRemoveUntil(
      context,
      AppRoutes.principal,
      (route) => false,
    );
  }

  void _irParaCadastro(BuildContext context) {
    // push normal: o usuário pode voltar para o Login.
    Navigator.pushNamed(context, AppRoutes.cadastro);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela de Login Simples'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),

        child: Column(
          children: [
            // Campo de Nome de Usuário
            const TextField(
              decoration: InputDecoration(
                labelText: 'Nome de Usuário',
              ),
            ),

            const SizedBox(height: 16.0),

            // Campo de E-mail
            const TextField(
              decoration: InputDecoration(
                labelText: 'E-mail',
              ),
            ),

            const SizedBox(height: 16.0),

            // Campo de Senha
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Senha',
              ),
            ),

            const SizedBox(height: 24.0),

            // Botão Entrar
            ElevatedButton(
              onPressed: () => _entrar(context),
              child: const Text('Entrar'),
            ),

            const SizedBox(height: 8.0),

            // Link para a Tela de Cadastro
            TextButton(
              onPressed: () => _irParaCadastro(context),
              child: const Text('Não tem conta? Cadastre-se'),
            ),
          ],
        ),
      ),
    );
  }
}
