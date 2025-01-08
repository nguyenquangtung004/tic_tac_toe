import 'package:flutter/material.dart';

class GameButton {
  //NOTE: Khai báo nút button Game
  final id;
  String text;
  Color bg;
  bool enabled;

  GameButton(
      {this.id, this.text = "", this.bg = Colors.grey, this.enabled = true});
}
