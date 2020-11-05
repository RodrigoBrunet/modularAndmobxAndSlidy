import 'package:novo/app/modules/cadastro/views/view1_page.dart';
import 'package:novo/app/modules/cadastro/views/view2_page.dart';
import 'package:novo/app/modules/cadastro/views/view3_page.dart';
import 'package:novo/app/modules/cadastro/views/view4_page.dart';
import 'package:novo/app/modules/cadastro/views/view5_page.dart';

import 'cadastro_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'cadastro_page.dart';

class CadastroModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CadastroController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/cadastro/inicial', child: (_, args) => CadastroPage()),
        ModularRouter('/cadastro/pagina1', child: (_, args) => View1Page()),
        ModularRouter('/cadastro/pagina2', child: (_, args) => View2Page()),
        ModularRouter('/cadastro/pagina3', child: (_, args) => View3Page()),
        ModularRouter('/cadastro/pagina4', child: (_, args) => View4Page()),
        ModularRouter('/cadastro/final', child: (_, args) => View5Page()),
      ];

  static Inject get to => Inject<CadastroModule>.of();
}
