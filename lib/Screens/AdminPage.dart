import 'package:app_fila/domain/LocalVotacao.dart';
import 'package:flutter/material.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({super.key, required this.localVotacao});

  final LocalVotacao localVotacao;

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  final statusController = TextEditingController();

  String? selectedStatus;
  LocalVotacao? local;

  @override
  void initState() {
    super.initState();

    //acessando o contato definido no widget(ContactPage)
    //mostrar se ela for privada
    if (widget.localVotacao == null) {
      local = LocalVotacao(id: 1, secao: "", situacao: "", zona: "");
    } else {
      local = widget.localVotacao;

      statusController.text = local!.situacao;
    }
  }

  @override
  Widget build(BuildContext context) {
    final List<DropdownMenuEntry<String>> statusEntries =
        <DropdownMenuEntry<String>>[];

    statusEntries.add(DropdownMenuEntry<String>(
        value: "Movimentado", label: "Lotado", enabled: true));
    statusEntries.add(DropdownMenuEntry<String>(
        value: "Moderado", label: "Moderado", enabled: true));
    statusEntries.add(DropdownMenuEntry<String>(
        value: "Tranquilo", label: "Vazia", enabled: true));

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Atualizar status",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
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
              Icon(Icons.where_to_vote_outlined,
                  size: 120, color: Color.fromARGB(255, 9, 123, 68)),
              const SizedBox(height: 30),
              Text(
                "Zona " + local!.zona,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              const SizedBox(height: 30),
              Text(
                local!.secao,
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
                padding: EdgeInsets.only(top: 20.0, bottom: 80.0),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Salvar",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Merriweather',
                      ))),
            ], //<widget>[]
          ),
        ),
      ),
    );
  }
}
