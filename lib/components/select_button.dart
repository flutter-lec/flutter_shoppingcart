import 'package:flutter/material.dart';

class SelectorButton extends StatelessWidget {
  var onClick;

  SelectorButton(this.onClick);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.grey),
      child: IconButton(onPressed: onClick, icon: Icon(Icons.directions_bike)),
    );
  }
}
