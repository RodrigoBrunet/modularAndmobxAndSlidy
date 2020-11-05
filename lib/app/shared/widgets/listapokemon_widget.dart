import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:novo/app/modules/pokemon/pokemon_controller.dart';

class ListaPokemon extends StatelessWidget {
  const ListaPokemon({
    Key key,
    @required this.controller,
  }) : super(key: key);

  final PokemonController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.tight(Size(
          MediaQuery.of(context).size.width * 0.9,
          MediaQuery.of(context).size.height * 0.7)),
      child: Observer(builder: (_) {
        if (controller.pokemons.error != null) {
          return Text("ERRO NO ACESSO AOS DADOS!");
        }

        if (controller.pokemons == null || controller.pokemons.value == null) {
          return CircularProgressIndicator();
        } else {
          var listaPokemons = controller.pokemons.value.results;
          return ListView.builder(
              itemCount: listaPokemons.length,
              itemBuilder: (context, index) {
                return Container(
                    margin: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      border: Border.all(color: Color(0xff303030), width: 1),
                    ),
                    child: ListTile(
                        title: Container(
                      width: 30.0,
                      constraints: BoxConstraints.tight(Size(30, 20)),
                      child: Text(
                        listaPokemons[index].name,
                        textScaleFactor: 1.0,
                        softWrap: false,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )));
              });
        }
      }),
    );
  }
}
