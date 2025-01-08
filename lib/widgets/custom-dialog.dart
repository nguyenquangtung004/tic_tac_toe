import 'package:flutter/material.dart';

class CustomDiaLog extends StatelessWidget {
  //NOTE: Khai Báo DiaLog
  final title;
  final content;
  final VoidCallback callback;
  final actionText;

  const CustomDiaLog(this.title, this.content, this.callback,
      [this.actionText = "Reset"]);
  @override
  Widget build(BuildContext context) {
    return new AlertDialog(
      title: new Text(title),
      content: new Text(content),
      actions: <Widget>[
        new OutlinedButton(
          onPressed: callback,
          child: new Text(actionText),
        )
      ],
    );
  }
}
