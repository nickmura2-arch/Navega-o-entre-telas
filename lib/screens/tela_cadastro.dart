import 'package:flutter/material.dart';

class TelaCadastro extends StatelessWidget {
  const TelaCadastro({super.key});

  void _cadastrar(BuildContext context) {
    // Aqui entraria o cadastro real. Depois, volta para o Login.
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Cadastro realizado com sucesso!')),
    );
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // A AppBar já exibe a seta de voltar automaticamente.
      appBar: AppBar(
        title: const Text('Tela de Cadastro'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),

        child: SingleChildScrollView(
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
                keyboardType: TextInputType.emailAddress,
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

              const SizedBox(height: 16.0),

              // Campo de Confirmar Senha
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Confirmar Senha',
                ),
              ),

              const SizedBox(height: 24.0),

              // Botão Cadastrar
              ElevatedButton(
                onPressed: () => _cadastrar(context),
                child: const Text('Cadastrar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
