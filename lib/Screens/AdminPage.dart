import 'package:flutter/material.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({super.key, required this.title });

  final String title;

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  final secaoController = TextEditingController();
  final zonaController = TextEditingController();
  final statusController = TextEditingController();

  String? selectedStatus;



  @override
  Widget build(BuildContext context) {

    final List<DropdownMenuEntry<String>> statusEntries =  <DropdownMenuEntry<String>>[];

    statusEntries.add(DropdownMenuEntry<String>(
          value: "movimentado", label: "Movimentado", enabled: true));
    statusEntries.add(DropdownMenuEntry<String>(
          value: "moderado", label: "Moderado", enabled: true));
    statusEntries.add(DropdownMenuEntry<String>(
          value: "tranquilo", label: "Tranquilo", enabled: true));


    return Scaffold(
     backgroundColor: Colors.white,
      body: SingleChildScrollView(
        // background: Image(),
        padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
        child: Form(
          // key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const SizedBox(height: 50),
              Icon(Icons.where_to_vote_outlined, size: 120, color: Color.fromARGB(255, 9, 123, 68)),
              const SizedBox(height: 30),
              const Text(
                "zona XX",
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              const SizedBox(height: 30),
              const Text(
                "seção XXX",
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              const SizedBox(height: 30),
              DropdownMenu<String>(
                    initialSelection: "",
                    controller: statusController,
                    label: const Text('Situação'),
                    dropdownMenuEntries: statusEntries,
                    width: 370.0,
                    onSelected: (String? sexo) {
                      setState(() {
                        selectedStatus = sexo;
                      });
                    },
                  ), 
              Padding(
                padding: EdgeInsets.only(top: 20.0, bottom: 80.0),),
              Container(
                    height: 50.0,
                    alignment: Alignment.center,
                    child: Row(   
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [ 
                        ElevatedButton(
                              onPressed: () {
                              },
                              child: Text("Voltar",
                                style: TextStyle(color: Colors.white, fontSize: 30.0),
                              ),
                              style: ButtonStyle(padding: MaterialStateProperty.all<EdgeInsets>(
                                        EdgeInsets.only(left: 30, right: 30))),
                        ),
                        ElevatedButton(
                              onPressed: () {
                              },
                              child: Text("Salvar",
                                style: TextStyle(color: Colors.white, fontSize: 30.0),),
                                style: ButtonStyle(padding: MaterialStateProperty.all<EdgeInsets>(
                                        EdgeInsets.only(left: 30, right: 30))),
                        ),
                      ],
                    )
                )
            ], //<widget>[]
          ),
        ),
      ),
    );
  }
}