import 'package:flutter/material.dart';

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
        ],
      ),
    );
  }
}
