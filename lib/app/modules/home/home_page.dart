import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:novo/app/app_controller.dart';
import 'package:novo/app/shared/widgets/inputname_widget.dart';
import 'package:novo/app/shared/widgets/listapokemon_widget.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller
  AppController appController = Modular.get<AppController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Observer(
        builder: (_) {
          return Text(appController.nomeCompleto);
        },
      )),
      body: Column(
        children: <Widget>[
          RaisedButton(
            onPressed: () => {Modular.navigator.pushNamed("/pokemon")},
            child: Text("Pokemon"),
          ),
          RaisedButton(
            onPressed: () => {Modular.navigator.pushNamed("/cadastro")},
            child: Text("Cadastro"),
          ),

          // InputName(
          //     origemCampo: appController.nomeCliente,
          //     metodoSet: controller.setNomeCliente),
          // InputName(
          //     origemCampo: appController.sobrenomeCliente,
          //     metodoSet: controller.setSobrenomeCliente),
        ],
      ),
    );
  }
}
