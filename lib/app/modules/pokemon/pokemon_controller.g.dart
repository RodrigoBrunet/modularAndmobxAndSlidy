// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PokemonController on _PokemonControllerBase, Store {
  final _$pokemonsAtom = Atom(name: '_PokemonControllerBase.pokemons');

  @override
  ObservableFuture<Pokemons> get pokemons {
    _$pokemonsAtom.reportRead();
    return super.pokemons;
  }

  @override
  set pokemons(ObservableFuture<Pokemons> value) {
    _$pokemonsAtom.reportWrite(value, super.pokemons, () {
      super.pokemons = value;
    });
  }

  final _$fetchPokemonsAsyncAction =
      AsyncAction('_PokemonControllerBase.fetchPokemons');

  @override
  Future fetchPokemons() {
    return _$fetchPokemonsAsyncAction.run(() => super.fetchPokemons());
  }

  @override
  String toString() {
    return '''
pokemons: ${pokemons}
    ''';
  }
}
