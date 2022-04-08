import 'package:flutter/material.dart';
import 'package:mobx_project/app/modules/components/input_time.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Pomodoro'),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InputTime(initial_time: 5, alert: 'Trabalho'),
              InputTime(initial_time: 5, alert: 'Descanso'),
            ],
          ),
        ],
      ),
    );
  }
}
