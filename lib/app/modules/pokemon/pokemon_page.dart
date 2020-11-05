import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:novo/app/app_controller.dart';
import 'package:novo/app/shared/widgets/listapokemon_widget.dart';
import 'pokemon_controller.dart';

class PokemonPage extends StatefulWidget {
  final String title;
  const PokemonPage({Key key, this.title = "Pokemon"}) : super(key: key);

  @override
  _PokemonPageState createState() => _PokemonPageState();
}

class _PokemonPageState extends ModularState<PokemonPage, PokemonController> {
  //use 'controller' variable to access controller
  var appController = Modular.get<AppController>();

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
          ListaPokemon(controller: controller),
        ],
      ),
    );
  }
}
