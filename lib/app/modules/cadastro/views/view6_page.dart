import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:novo/app/models/dadoscliente_model.dart';
import 'package:novo/app/modules/cadastro/cadastro_controller.dart';
import 'package:novo/app/shared/widgets/inputname_widget.dart';

class View6Page extends StatefulWidget {
  final String title;
  const View6Page({Key key, this.title = "Cadastro (continuando)"})
      : super(key: key);

  @override
  _View6PageState createState() => _View6PageState();
}

class _View6PageState extends ModularState<View6Page, CadastroController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Observer(
            builder: (_) {
              return Text(
                  controller.dadosCliente.nome.split(" ").first.toUpperCase() +
                      ",");
            },
          ),
          SizedBox(height: 10),
          Text("Obrigado! Esses são os dados que você informou"),
          SizedBox(height: 10),
          Text("Nome: " + controller.dadosCliente.nome),
          SizedBox(height: 10),
          Text("CPF: " + controller.dadosCliente.cpf),
          SizedBox(height: 10),
          Text("Telefone: " + controller.dadosCliente.telefone),
          SizedBox(height: 10),
          Text("E-Mail: " + controller.dadosCliente.email),
          SizedBox(height: 10),
          Text("Data Nascimento: " + controller.dadosCliente.dataNascimento),
          SizedBox(height: 10),
          Text("Nome da Mãe: " + controller.dadosCliente.nomeMae),
          SizedBox(height: 10),
          RaisedButton(
              onPressed: () => {Modular.to.pushNamed("/")},
              child: Text("Concluir")),
        ],
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.setDadosCliente((controller.dadosCliente.nome = ""));
    super.dispose();
  }
}
