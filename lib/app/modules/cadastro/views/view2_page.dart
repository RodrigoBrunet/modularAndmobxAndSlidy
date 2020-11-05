import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:novo/app/modules/cadastro/cadastro_controller.dart';
import 'package:novo/app/shared/widgets/inputname_widget.dart';

class View2Page extends StatefulWidget {
  final String title;
  const View2Page({Key key, this.title = "Cadastro (continuando)"})
      : super(key: key);

  @override
  _View2PageState createState() => _View2PageState();
}

class _View2PageState extends ModularState<View2Page, CadastroController> {
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
          Text("Agora informe o seu Telefone"),
          SizedBox(height: 10),
          InputName(
              origemCampo: controller.dadosCliente.telefone,
              metodoSet: controller.setTelefoneCliente),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RaisedButton(
                  onPressed: () => {Modular.to.pushNamed("/cadastro/pagina1")},
                  child: Text("Voltar")),
              RaisedButton(
                  onPressed: () => {Modular.to.pushNamed("/cadastro/pagina3")},
                  child: Text("Avançar")),
            ],
          ),
        ],
      ),
    );
  }
}
