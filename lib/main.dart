import 'package:flutter/material.dart';
import 'package:xo_game/xo_game/board_screen.dart';

void main(){
  runApp(MyApplication());
}
class MyApplication extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes:{
  boardScreen.routeName:(context) => boardScreen(),
},
      initialRoute: boardScreen.routeName,
    );
  }

}