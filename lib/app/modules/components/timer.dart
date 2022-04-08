import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mobx_project/app/modules/components/button_widget.dart';

class Timer extends StatelessWidget {
  const Timer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple[100],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Timer',
            style: TextStyle(fontSize: 20),
          ),
          Text(
            '25:00',
            style: TextStyle(fontSize: 75),
          ),
          SizedBox(
            height: 75,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonWidget(
                widget: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.play_arrow),
                    Text(
                      'Start',
                      style: TextStyle(
                        fontSize:
                            MediaQuery.of(context).size.shortestSide * 0.04,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ],
                ),
                color: Color(0xFFAB47BC),
                width: MediaQuery.of(context).size.shortestSide * 0.35,
                height: MediaQuery.of(context).size.shortestSide * 0.1,
              ),
              SizedBox(
                width: 35,
              ),
              ButtonWidget(
                widget: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.stop),
                    Text(
                      'Stop',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.shortestSide * 0.04,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ],
                ),
                color: Color(0xFFAB47BC),
                width: MediaQuery.of(context).size.shortestSide * 0.35,
                height: MediaQuery.of(context).size.shortestSide * 0.1,
              ),
            ],
          )
        ],
      ),
    );
  }
}
