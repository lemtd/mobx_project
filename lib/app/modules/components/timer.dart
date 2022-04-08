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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                            MediaQuery.of(context).size.shortestSide * 0.03,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ],
                ),
                color: Color(0xFFAB47BC),
                width: MediaQuery.of(context).size.shortestSide * 0.3,
                height: MediaQuery.of(context).size.shortestSide * 0.09,
              ),
              ButtonWidget(
                widget: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.stop),
                    Text(
                      'Stop',
                      style: TextStyle(
                        fontSize:
                            MediaQuery.of(context).size.shortestSide * 0.03,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ],
                ),
                color: Color(0xFFAB47BC),
                width: MediaQuery.of(context).size.shortestSide * 0.3,
                height: MediaQuery.of(context).size.shortestSide * 0.09,
              ),
            ],
          ),
          SizedBox(height: 30,),
          ButtonWidget(
            widget: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.refresh),
                Text(
                  'Restart',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.shortestSide * 0.03,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ],
            ),
            color: Color(0xFFAB47BC),
            width: MediaQuery.of(context).size.shortestSide * 0.3,
            height: MediaQuery.of(context).size.shortestSide * 0.09,
          ),
        ],
      ),
    );
  }
}
