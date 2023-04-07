import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SectionsPage extends StatelessWidget {
  const SectionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.only(left: 16),
            child: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "Voltar",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
        title: Center(
          child: Text(
            "Seções",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: secoes
              .map(
                (secao) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 4),
                  child: ElevatedButton(
                    onPressed: () => {
                      Navigator.of(context),
                    },
                    child: Column(children: [
                      Text(secao),
                      Text("Status fila: Vazia"),
                    ]),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green[400],
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
