import 'package:app_fila/Components/CampoDeTexto.dart';
import 'package:flutter/material.dart';

import '../Components/Logo.dart';
import 'StatusPage.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key, required this.title});

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 100),
              Logo(),
              const SizedBox(height: 20),
              Text('Veja agora a situação da fila no seu local de votação'),
              const SizedBox(height: 20),
              CampoDeTexto(
                  controller: emailController,
                  hintText: 'Digite o seu e-mail',
                  obscureText: false,
                  icon: Icons.person),
              const SizedBox(height: 10),
              CampoDeTexto(
                  controller: passwordController,
                  hintText: 'Digite a sua senha',
                  obscureText: true,
                  icon: Icons.lock),
              const SizedBox(height: 10),
              Text('Esqueceu a senha?',
                  style: TextStyle(color: Colors.greenAccent.shade700)),
                  ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const StatusPage()),
                  );
                },
                child: const Text(
                  "Entrar",
                  style: const TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Merriweather',
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
