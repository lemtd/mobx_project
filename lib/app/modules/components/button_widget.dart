import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final Widget widget;
  final Color color;
  final double width;
  final double height;
  final Function onClick;

  const ButtonWidget({Key? key, required this.widget, required this.color, required this.width, required this.height, required this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: this.width,
      height: this.height,
      child: ElevatedButton(
        onPressed: this.onClick(),
        child: this.widget,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          primary: color,
        ),
      ),
    );
  }
}
