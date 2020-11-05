import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:novo/app/models/pokemons_model.dart';
import 'package:novo/app/repositories/main_repository.dart';

part 'pokemon_controller.g.dart';

@Injectable()
class PokemonController = _PokemonControllerBase with _$PokemonController;

abstract class _PokemonControllerBase with Store {
  final MainRepository repository;
  @observable
  ObservableFuture<Pokemons> pokemons;

  _PokemonControllerBase(this.repository) {
    fetchPokemons();
  }

  @action
  fetchPokemons() async {
    pokemons = repository.fetchPokemons().asObservable();
  }
}
