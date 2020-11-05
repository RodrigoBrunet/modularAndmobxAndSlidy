import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'app_controller.g.dart';

@Injectable()
class AppController = _AppControllerBase with _$AppController;

abstract class _AppControllerBase with Store {
  @observable
  String nomeCliente = "José";

  @observable
  String sobrenomeCliente = "da Silva";

  @computed
  String get nomeCompleto =>
      nomeCliente.trim().toUpperCase() +
      " " +
      sobrenomeCliente.trim().toUpperCase();

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
