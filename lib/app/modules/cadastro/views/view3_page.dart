import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:novo/app/modules/cadastro/cadastro_controller.dart';
import 'package:novo/app/shared/widgets/inputname_widget.dart';

class View3Page extends StatefulWidget {
  final String title;
  const View3Page({Key key, this.title = "Cadastro (continuando)"})
      : super(key: key);

  @override
  _View3PageState createState() => _View3PageState();
}

class _View3PageState extends ModularState<View3Page, CadastroController> {
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
          Text("Agora informe o seu Email"),
          SizedBox(height: 10),
          InputName(
              origemCampo: controller.dadosCliente.email,
              metodoSet: controller.setEmailCliente),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RaisedButton(
                  onPressed: () => {Modular.to.pushNamed("/cadastro/pagina2")},
                  child: Text("Voltar")),
              RaisedButton(
                  onPressed: () => {Modular.to.pushNamed("/cadastro/pagina4")},
                  child: Text("Avançar")),
            ],
          ),
        ],
      ),
    );
  }
}
