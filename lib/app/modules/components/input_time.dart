import 'package:flutter/material.dart';

class InputTime extends StatelessWidget {
  final int initial_time;
  final String alert;

  const InputTime({Key? key, required this.initial_time, required this.alert})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(this.alert),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Icon(Icons.arrow_drop_up),
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                primary: Colors.purple[400],
              ),
            ),
            Text('${this.initial_time}'),
            ElevatedButton(
              onPressed: () {},
              child: Icon(Icons.arrow_drop_down),
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                primary: Colors.purple[400],
              ),
            )
          ],
        ),
      ],
    );
  }
}
