import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:novo/app/modules/cadastro/cadastro_controller.dart';
import 'package:novo/app/shared/widgets/inputname_widget.dart';

class View1Page extends StatefulWidget {
  final String title;
  const View1Page({Key key, this.title = "Cadastro (continuando)"})
      : super(key: key);

  @override
  _View1PageState createState() => _View1PageState();
}

class _View1PageState extends ModularState<View1Page, CadastroController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Text(
              controller.dadosCliente.nome.split(" ").first.toUpperCase() + ",",
              style: TextStyle(fontSize: 16)),
          SizedBox(height: 10),
          Text("Agora informe o seu cpf"),
          SizedBox(height: 10),
          InputName(
              origemCampo: controller.dadosCliente.cpf,
              metodoSet: controller.setCpfCliente),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RaisedButton(
                  onPressed: () => {Modular.to.pushNamed("/cadastro/inicial")},
                  child: Text("Voltar")),
              RaisedButton(
                  onPressed: () => {Modular.to.pushNamed("/cadastro/pagina2")},
                  child: Text("Avançar")),
            ],
          )
        ],
      ),
    );
  }
}
