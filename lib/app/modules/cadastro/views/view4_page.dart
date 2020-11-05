import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:novo/app/modules/cadastro/cadastro_controller.dart';
import 'package:novo/app/shared/widgets/inputname_widget.dart';

class View4Page extends StatefulWidget {
  final String title;
  const View4Page({Key key, this.title = "Cadastro (continuando)"})
      : super(key: key);

  @override
  _View4PageState createState() => _View4PageState();
}

class _View4PageState extends ModularState<View4Page, CadastroController> {
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
          Text("Agora informe a sua Data de nascimento"),
          SizedBox(height: 10),
          InputName(
              origemCampo: controller.dadosCliente.dataNascimento,
              metodoSet: controller.setDataNascimentoCliente),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RaisedButton(
                  onPressed: () => {Modular.to.pushNamed("/cadastro/pagina3")},
                  child: Text("Voltar")),
              RaisedButton(
                  onPressed: () => {Modular.to.pushNamed("/cadastro/pagina5")},
                  child: Text("Avançar")),
            ],
          ),
        ],
      ),
    );
  }
}
