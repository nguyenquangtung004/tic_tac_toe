import 'package:flutter/material.dart';
import 'package:tic_tac_toe/widgets/game_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<GameButton> buttonList;
  var player1;
  var player2;
  var activePlayer;

  List<GameButton> batDauVanMoi(){
    player1 = new List();
    player2 = new List();
    activePlayer = 1;

    var gameButtons = <GameButton>[
      new GameButton(id: 1),
      new GameButton(id: 2),
      new GameButton(id: 3),
      new GameButton(id: 4),
      new GameButton(id: 5),
      new GameButton(id: 6),
      new GameButton(id: 7),
      new GameButton(id: 8),
      new GameButton(id: 9),
    ];
    return gameButtons;
  }

  void choiGame(GameButton gb){
    setState(() {
      if (activePlayer == 1) {
        gb.text = "X";
        gb.bg = Colors.red;
        activePlayer = 2;
        player1.add(gb.id);
      }else{
        gb.text="O";
        gb.bg = Colors.black;
        activePlayer = 1;
        player2.add(gb.id);
      }
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}