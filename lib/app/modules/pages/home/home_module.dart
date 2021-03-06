import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx_project/app/modules/pages/home/home.dart';
import 'home_store.dart';

// import 'home_page.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HomeStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => const Home()),
  ];
}
