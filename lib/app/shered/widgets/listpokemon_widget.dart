import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:novo/app/modules/pokemon/pokemon_controller.dart';

class ListPokemon extends StatelessWidget {
  const ListPokemon({
    Key key,
    @required this.controller,
  }) : super(key: key);

  final PokemonController controller;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Observer(
        builder: (_) {
          if (controller.pokemons.error != null) {
            return Text('ERRO NO ACESSO AOS DADOS!');
          }

          if (controller.pokemons == null ||
              controller.pokemons.value == null) {
            return CircularProgressIndicator();
          } else if (controller.pokemons.error != null) {
            return Text('Ocorreu um erro inesperado');
          } else {
            var listaPokemons = controller.pokemons.value.results;
            return ListView.builder(
              itemCount: controller.pokemons.value.results.length,
              itemBuilder: (context, index) {
                return Text(listaPokemons[index].name);
              },
            );
          }
        },
      ),
    );
  }
}
