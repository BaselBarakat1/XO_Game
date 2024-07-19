import 'package:flutter/material.dart';
import 'package:xo_game/xo_game/board_button.dart';

class boardScreen extends StatefulWidget {
  static const String routeName = 'board_screen';

  @override
  State<boardScreen> createState() => _boardScreenState();
}

class _boardScreenState extends State<boardScreen> {
  List<String> boardState =[
    '','','',
    '','','',
    '','','',
  ];
  int player1Score = 0;
  int player2Score =0;

  @override
  Widget build(BuildContext context) {
   return Scaffold(
  appBar: AppBar(title: Text('Basel XO Game'),backgroundColor: Colors.blue),
     body: Column(
       children: [
         Expanded(
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               Column(
                 children: [
                   Text('Player 1',style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
                   Text('Score: $player1Score ',style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold)),
                 ],
               ),
               Column(
                 children: [
                   Text('Player 2',style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
                   Text('Score: $player2Score',style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold)),
                 ],
               ),
             ],
           ),
         ),
         Expanded(
           child: Row(
             crossAxisAlignment: CrossAxisAlignment.stretch,
             children: [
               boardButton(ButtonText: boardState[0],onBoardButtonClickedCallBack: onButtonClicked,index: 0),
               boardButton(ButtonText: boardState[1],onBoardButtonClickedCallBack: onButtonClicked,index: 1),
               boardButton(ButtonText: boardState[2],onBoardButtonClickedCallBack: onButtonClicked,index: 2),
             ],
           ),
         ),
         Expanded(
           child: Row(
             crossAxisAlignment: CrossAxisAlignment.stretch,
             children: [
               boardButton(ButtonText: boardState[3],onBoardButtonClickedCallBack: onButtonClicked,index: 3),
               boardButton(ButtonText: boardState[4],onBoardButtonClickedCallBack: onButtonClicked,index: 4),
               boardButton(ButtonText: boardState[5],onBoardButtonClickedCallBack: onButtonClicked,index: 5),
             ],
           ),
         ),
         Expanded(
           child: Row(
             crossAxisAlignment: CrossAxisAlignment.stretch,
             children: [
               boardButton(ButtonText: boardState[6],onBoardButtonClickedCallBack: onButtonClicked,index: 6),
               boardButton(ButtonText: boardState[7],onBoardButtonClickedCallBack: onButtonClicked,index: 7),
               boardButton(ButtonText: boardState[8],onBoardButtonClickedCallBack: onButtonClicked,index: 8),
             ],
           ),
         ),
       ],
     ),
);
  }
int counter = 0;
  void onButtonClicked(int index){
    if(counter.isEven){
      boardState[index]='X';
      if(checkWinner('X')){
        player1Score+=10;
        initBoard();
      }
    }else{
      boardState[index]='O';
      if(checkWinner('O')){
     player2Score+=10;
     initBoard();
      }
    }
    counter++;
    if(counter==9){
      initBoard();
    }
    setState(() {

    });
  }
  bool checkWinner(String playerSymbol){
    for(int i =0 ;i<9;i+=3) {
      if (boardState[i] == playerSymbol && boardState[i + 1] == playerSymbol &&
          boardState[i + 2] == playerSymbol) {
        return true;
      }
    }
      for(int i = 0 ;i<3;i++){
        if(boardState[i]==playerSymbol && boardState[i+3]==playerSymbol && boardState[i+6]==playerSymbol){
          return true;
        }
    }
      if(boardState[0]==playerSymbol && boardState[4]==playerSymbol && boardState[8]==playerSymbol){
        return true;
      }
      if(boardState[2]==playerSymbol && boardState[4]==playerSymbol && boardState[6]==playerSymbol){
        return true;
      }
      return false;
  }

  void initBoard() {
    boardState =[
      '','','',
      '','','',
      '','','',
    ];
    counter = 0;

  }
}
