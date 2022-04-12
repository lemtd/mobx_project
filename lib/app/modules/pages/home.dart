import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_project/app/modules/components/input_time.dart';
import 'package:mobx_project/app/modules/components/timer.dart';
import 'package:mobx_project/app/modules/home/home_store.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<HomeStore>(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Timer(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Observer(
              builder: (_) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InputTime(
                    initial_time: store.timeToJob,
                    alert: 'Trabalho',
                    restOrJob: true,
                  ),
                  InputTime(
                    initial_time: store.timeToRest,
                    alert: 'Descanso',
                    restOrJob: false,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
