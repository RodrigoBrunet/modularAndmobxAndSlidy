import 'package:dio/dio.dart';
import 'package:novo/app/modules/cadastro/cadastro_controller.dart';
import 'package:novo/app/modules/cadastro/cadastro_page.dart';
import 'package:novo/app/modules/cadastro/views/view1_page.dart';
import 'package:novo/app/modules/cadastro/views/view2_page.dart';
import 'package:novo/app/modules/cadastro/views/view3_page.dart';
import 'package:novo/app/modules/cadastro/views/view4_page.dart';
import 'package:novo/app/modules/cadastro/views/view5_page.dart';
import 'package:novo/app/modules/cadastro/views/view6_page.dart';
import 'package:novo/app/modules/home/home_controller.dart';
import 'package:novo/app/modules/home/home_page.dart';
import 'package:novo/app/modules/pokemon/pokemon_controller.dart';
import 'package:novo/app/modules/pokemon/pokemon_page.dart';
import 'package:novo/app/repositories/main_repository.dart';

import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:novo/app/app_widget.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => PokemonController(i.get())),
        Bind((i) => CadastroController()),
        Bind((i) => AppController()),
        Bind((i) => HomeController(i.get(), i.get())),
        Bind((i) => MainRepository(i.get())),
        Bind((i) => Dio())
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter("/", child: (_, arg) => HomePage()),
        ModularRouter("/pokemon", child: (_, arg) => PokemonPage()),
        ModularRouter("/cadastro", child: (_, arg) => CadastroPage()),
        ModularRouter("/cadastro/inicial", child: (_, arg) => CadastroPage()),
        ModularRouter("/cadastro/pagina1", child: (_, arg) => View1Page()),
        ModularRouter("/cadastro/pagina2", child: (_, arg) => View2Page()),
        ModularRouter("/cadastro/pagina3", child: (_, arg) => View3Page()),
        ModularRouter("/cadastro/pagina4", child: (_, arg) => View4Page()),
        ModularRouter("/cadastro/pagina5", child: (_, arg) => View5Page()),
        ModularRouter("/cadastro/pagina6", child: (_, arg) => View6Page()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
