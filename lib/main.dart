import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:provider/provider.dart';

import 'app/app_module.dart';
import 'app/app_widget.dart';
import 'app/modules/pages/home/home_store.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          Provider<HomeStore>(
            create: (_) => HomeStore(),
          ),
        ],
        child: ModularApp(
          module: AppModule(),
          child: AppWidget(),
        ),
      ),
    );
