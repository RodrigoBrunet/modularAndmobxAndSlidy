import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:novo/app/app_controller.dart';
import 'package:novo/app/models/pokemons_model.dart';
import 'package:novo/app/repositories/main_repository.dart';

part 'home_controller.g.dart';

@Injectable()
class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final MainRepository repository;
  final AppController appController;
  // AppController appController = Modular.get<AppController>();

  @observable
  int value = 0;

  _HomeControllerBase(this.repository, this.appController);

  @action
  setNomeCliente(value) => appController.nomeCliente = value;

  @action
  setSobrenomeCliente(value) => appController.sobrenomeCliente = value;

  @action
  void increment() {
    value++;
  }
}
