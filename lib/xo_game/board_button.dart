import 'package:flutter/material.dart';


typedef OnBoardButtonClickedCallBack = void Function(int);
class boardButton extends StatelessWidget {
String ButtonText='';
OnBoardButtonClickedCallBack onBoardButtonClickedCallBack;
int index;
boardButton({required this.ButtonText,required this.onBoardButtonClickedCallBack,required this.index});
  @override
  Widget build(BuildContext context) {
   return Expanded(
     child: Container(
       margin: EdgeInsets.all(2),
       child: FloatingActionButton(onPressed: () {
       onBoardButtonClickedCallBack(index);
       },child: Text(ButtonText,style: TextStyle(fontSize: 38,fontWeight: FontWeight.bold),),backgroundColor: Colors.blue,),
     ),
   );
  }
}
