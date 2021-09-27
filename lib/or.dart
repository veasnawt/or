library or;

import 'package:flutter/material.dart';

class Or extends StatelessWidget {
  final double fontSize;
  final Color color;
  final double dividerThickness;
  final Color dividerColor;
  final double sidePadding;
  final EdgeInsetsGeometry padding;

  const Or({
    Key? key,
    this.fontSize = 24,
    this.color = Colors.black,
    this.dividerThickness = 0.7,
    this.dividerColor = Colors.black, this.sidePadding = 50, this.padding = const EdgeInsets.only(bottom: 15),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    return Container(
      width: _screenSize.width - (sidePadding * 2),
      child: Row(
        children: [
          Expanded(
            child: Divider(
              thickness: dividerThickness,
              color: dividerColor,
            ),
          ),
          Padding(
            padding: padding,
            child: Text(
              "OR",
              style: TextStyle(
                fontSize: fontSize,
                color: color,
              ),
            ),
          ),
          Expanded(
            child: Divider(
              thickness: dividerThickness,
              color: dividerColor,
            ),
          ),
        ],
      ),
    );
  }
}
