import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final Color color;
  final String text;
  final Function onClick;

  const ButtonWidget({Key key, this.color, this.text, this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        decoration: BoxDecoration(
            color: color,
          borderRadius: BorderRadius.all(Radius.circular(10))
        ),
        margin: EdgeInsets.all(10),
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
