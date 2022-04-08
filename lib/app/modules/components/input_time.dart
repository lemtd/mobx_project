import 'package:flutter/material.dart';
import 'package:mobx_project/app/modules/components/button_widget.dart';
import 'package:mobx_project/app/modules/home/home_store.dart';
import 'package:provider/provider.dart';

class InputTime extends StatelessWidget {
  final int initial_time;
  final String alert;

  const InputTime({Key? key, required this.initial_time, required this.alert})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<HomeStore>(context);

    return Column(
      children: [
        Text(this.alert),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonWidget(widget: Icon(Icons.arrow_drop_up), color:Color(0xFFAB47BC), width: MediaQuery.of(context).size.shortestSide * 0.13, height: MediaQuery.of(context).size.shortestSide * 0.13, onClick: store.decrementTimeToJob,),
            Text('${this.initial_time}'),
            ButtonWidget(widget: Icon(Icons.arrow_drop_down), color:Color(0xFFAB47BC), width: MediaQuery.of(context).size.shortestSide * 0.13, height: MediaQuery.of(context).size.shortestSide * 0.13, onClick: store.incrementTimeToRest,),
          ],
        ),
      ],
    );
  }
}
