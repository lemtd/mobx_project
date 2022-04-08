import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final Widget widget;
  final Color color;

  const ButtonWidget({Key? key, required this.widget, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: this.widget,
      style: ElevatedButton.styleFrom(
        shape: CircleBorder(),
        primary: color,
      ),
    );
  }
}
