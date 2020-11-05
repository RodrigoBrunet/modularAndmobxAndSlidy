import 'package:dio/dio.dart';
import 'package:novo/app/app_controller.dart';
import 'package:novo/app/modules/home/home_controller.dart';
import 'package:novo/app/repositories/main_repository.dart';

import 'pokemon_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'pokemon_page.dart';

class PokemonModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => PokemonController(i.get())),
        Bind((i) => AppController()),
        Bind((i) => HomeController(i.get(), i.get())),
        Bind((i) => MainRepository(i.get())),
        Bind((i) => Dio())
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => PokemonPage()),
      ];

  static Inject get to => Inject<PokemonModule>.of();
}
