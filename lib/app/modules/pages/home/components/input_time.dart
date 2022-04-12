import 'package:flutter/material.dart';
import 'package:mobx_project/app/modules/pages/home/home_store.dart';
import 'package:provider/provider.dart';

class InputTime extends StatelessWidget {
  final int initial_time;
  final String alert;
  final bool restOrJob;

  const InputTime(
      {Key? key,
      required this.initial_time,
      required this.alert,
      required this.restOrJob})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<HomeStore>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(this.alert),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: this.restOrJob
                  ? store.incrementTimeToJob
                  : store.incrementTimeToRest,
              child: Icon(Icons.arrow_drop_up),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                primary: Color(0xFFAB47BC),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text('${this.initial_time} min'),
            ),
            ElevatedButton(
              onPressed: this.restOrJob
                  ? store.decrementTimeToJob
                  : store.decrementTimeToRest,
              child: Icon(Icons.arrow_drop_down),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                primary: Color(0xFFAB47BC),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
