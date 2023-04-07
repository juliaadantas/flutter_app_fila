import 'package:app_fila/Components/CampoDeTexto.dart';
import 'package:app_fila/Screens/AdminPage.dart';
import 'package:app_fila/domain/LocalVotacao.dart';
import 'package:flutter/material.dart';

import '../Components/Logo.dart';
import 'ZonePage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // LocalVotacao localVotacao = LocalVotacao();

  @override
  Widget build(BuildContext context) {
    // localVotacao.zona = "5";
    // localVotacao.secao = "145";
    // localVotacao.situacao = "Moderado";

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 100),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Logo(),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: const [
                    Expanded(
                      child: Text(
                        'Veja a situação da fila no seu local de votação',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Merriweather',
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                CampoDeTexto(
                    controller: emailController,
                    hintText: 'Digite o seu e-mail',
                    obscureText: false,
                    prefixIcon: Icons.person,
                    onChanged: null),
                const SizedBox(height: 10),
                CampoDeTexto(
                    controller: passwordController,
                    hintText: 'Digite a sua senha',
                    obscureText: true,
                    prefixIcon: Icons.lock,
                    onChanged: null),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ZonePage()),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0.0, 10.0, 25.0, 10.0),
                        child: Text('Eleitor? Acesse aqui.',
                            style: TextStyle(
                                color: Colors.greenAccent.shade700,
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Merriweather')),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ZonePage()),
                        );
                      },
                      child: const Text(
                        "Entrar",
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Merriweather',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
