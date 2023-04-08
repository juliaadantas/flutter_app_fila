import 'package:app_fila/Components/botao.dart';
import 'package:app_fila/Components/CampoDeTexto.dart';
import 'package:app_fila/Screens/SectionsPage.dart';
import 'package:flutter/material.dart';
import '../Components/StatusContainer.dart';
import 'SectionPage.dart';

class ZonePage extends StatefulWidget {
  const ZonePage({super.key});

  @override
  State<ZonePage> createState() => _ZonePageState();
}

class _ZonePageState extends State<ZonePage> {
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            title: Text('TREMÔMETRO',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                )),
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
                      prefixIcon: Icons.search,
                      onChanged: null),
                ),
              ]),
              itemExtent: 100.0),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 9, 123, 68)),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SectionsPage()),
                      );
                    },
                    child: Text(
                      'Zona: ${index + 1}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                );
              },
              childCount: 60,
            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 100,
              mainAxisSpacing: 20,
              crossAxisSpacing: 2,
            ),
          ),
          // SliverToBoxAdapter(
          //   child: Container(
          //     padding: EdgeInsets.all(10.0),
          //     child: ElevatedButton(
          //       onPressed: () {},
          //       child: const Text('Atualizar Status'),
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
