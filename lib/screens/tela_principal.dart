import 'package:flutter/material.dart';

import '../routes/app_routes.dart';

class TelaPrincipal extends StatelessWidget {
  const TelaPrincipal({super.key});

  void _sair(BuildContext context) {
    // Volta para o Login e limpa toda a pilha de navegação.
    Navigator.pushNamedAndRemoveUntil(
      context,
      AppRoutes.login,
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela Principal'),
        // Sem seta de voltar: não há para onde voltar.
        automaticallyImplyLeading: false,
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.home, size: 80.0),

              const SizedBox(height: 16.0),

              const Text(
                'Bem-vindo!',
                style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 8.0),

              const Text(
                'Você entrou com sucesso. Este é o início do seu app.',
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 32.0),

              // Botão Sair
              ElevatedButton(
                onPressed: () => _sair(context),
                child: const Text('Sair'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
