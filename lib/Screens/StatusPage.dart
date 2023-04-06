import 'package:app_fila/Components/botao.dart';
import 'package:app_fila/Components/CampoDeTexto.dart';
import 'package:flutter/material.dart';
import '../Components/StatusContainer.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({super.key});

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  final searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text('TREMÔMETRO'),
            
          ),
          SliverFixedExtentList(
              delegate: SliverChildListDelegate([
                Container(
                  alignment: Alignment.center,
                  color: Colors.white,
                  child: CampoDeTexto(
                      controller: searchController,
                      hintText: 'Buscar',
                      obscureText: false,
                      icon: Icons.search),
                ),
              ]),
              itemExtent: 100.0),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Container(
                  alignment: Alignment.center,
                  color: Color.fromARGB(255, 9, 123, 68),
                  child: Text(
                    'Seção: ${index + 1}\n' 'Zona: ${index + 1}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                );
              },
              childCount: 60,
            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 100,
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 4.0,
              
            ),
          )
        ],
      ),
    );
  }
}
