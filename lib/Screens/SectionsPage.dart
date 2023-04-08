import 'package:app_fila/Screens/AdminPage.dart';
import 'package:app_fila/domain/LocalVotacao.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SectionsPage extends StatelessWidget {
  SectionsPage({super.key});

  final LocalVotacao localVotacao =
      LocalVotacao(id: 1, secao: "1", situacao: "Vazia", zona: "2");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Seções",
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: secoes
              .map(
                (secao) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 4),
                  child: ElevatedButton(
                    onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AdminPage(
                                  localVotacao: localVotacao,
                                )),
                      ),
                    },
                    child: Column(children: [
                      Text(secao),
                      Text("Status fila: Vazia"),
                    ]),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 46, 146, 51),
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding: EdgeInsets.all(22),
                      minimumSize: Size(double.infinity, 40),
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

final List<String> secoes = [
  'Seção 1',
  'Seção 2',
  'Seção 3',
  'Seção 4',
  'Seção 5',
  'Seção 6',
  'Seção 7',
  'Seção 8',
  'Seção 9',
  'Seção 10',
  'Seção 11',
  'Seção 12',
  'Seção 13',
  'Seção 14',
  'Seção 15',
  'Seção 16'
];
