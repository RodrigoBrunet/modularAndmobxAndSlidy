import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:novo/app/shared/widgets/inputname_widget.dart';
import 'cadastro_controller.dart';

class CadastroPage extends StatefulWidget {
  final String title;
  const CadastroPage({Key key, this.title = "Cadastro"}) : super(key: key);

  @override
  _CadastroPageState createState() => _CadastroPageState();
}

class _CadastroPageState
    extends ModularState<CadastroPage, CadastroController> {
  //use 'controller' variable to access controller
  List<ReactionDisposer> disposers = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Text("Bem-vindo!",
              style: TextStyle(
                fontSize: 14,
              )),
          SizedBox(height: 10),
          Text("Por favor informe o seu nome"),
          SizedBox(height: 10),
          InputName(
              origemCampo: controller.dadosCliente.nome,
              metodoSet: controller.setNomeCliente),
          SizedBox(height: 10),
          Observer(builder: (_) {
            if (controller.nomeInformado) {
              return RaisedButton(
                  onPressed: () => {Modular.to.pushNamed("/cadastro/pagina1")},
                  child: Text("Avançar"));
            }
            return Container(
              height: 0,
            );
          }),
        ],
      ),
    );
  }
}
