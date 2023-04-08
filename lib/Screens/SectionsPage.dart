import 'package:app_fila/Screens/AdminPage.dart';
import 'package:app_fila/domain/LocalVotacao.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Secao {
  String nome;
  String status;

  Secao({required this.nome, required this.status});
}

class SectionsPage extends StatefulWidget {
  SectionsPage({super.key});

  final List<Secao> secoes = [
    Secao(nome: "Seção 1", status: "Vazia"),
    Secao(nome: "Seção 2", status: "Vazia"),
    Secao(nome: "Seção 3", status: "Moderada"),
    Secao(nome: "Seção 4", status: "Lotada"),
    Secao(nome: "Seção 5", status: "Vazia"),
    Secao(nome: "Seção 6", status: "Vazia"),
    Secao(nome: "Seção 7", status: "Vazia"),
    Secao(nome: "Seção 8", status: "Moderada"),
    Secao(nome: "Seção 9", status: "Vazia"),
    Secao(nome: "Seção 10", status: "Lotada"),
    Secao(nome: "Seção 11", status: "Lotada"),
    Secao(nome: "Seção 12", status: "Vazia"),
    Secao(nome: "Seção 13", status: "Vazia"),
  ];

  @override
  State<SectionsPage> createState() => _SectionsPageState();
}

class _SectionsPageState extends State<SectionsPage> {
  // final LocalVotacao localVotacao =
  //     LocalVotacao(id: 1, secao: "1", situacao: "Vazia", zona: "2");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Seções Eleitorais",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: widget.secoes
              .map(
                (secao) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 4),
                  child: ElevatedButton(
                    onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AdminPage(
                                  localVotacao: LocalVotacao(
                                      id: 1,
                                      zona: "2",
                                      secao: secao.nome,
                                      situacao: secao.status),
                                )),
                      ),
                    },
                    style: ElevatedButton.styleFrom(
                      primary: secao.status == "Vazia"
                          ? Color.fromARGB(255, 46, 146, 51)
                          : secao.status == "Moderada"
                              ? Color.fromARGB(255, 240, 165, 37)
                              : Color.fromARGB(255, 200, 44, 33),
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding: EdgeInsets.all(22),
                      minimumSize: Size(double.infinity, 40),
                    ),
                    child: Column(children: [
                      Text(secao.nome),
                      Text("Status fila: ${secao.status} "),
                    ]),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
