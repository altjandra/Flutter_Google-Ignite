import 'package:flutter/material.dart';

class InfoText extends StatelessWidget {
  final String type;
  final String text;

  InfoText({this.type, this.text}); //removed the two requires before this.

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$type: ',
          style: TextStyle(
            color: Colors.blueGrey.shade300,
            fontSize: 16,
          ),
        ),
        Flexible(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.blueGrey.shade100,
              fontSize: 16,
            ),
          ),
        )
      ],
    );
  }
}
