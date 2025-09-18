import 'package:flutter/material.dart';

class StyledText extends StatelessWidget{
  StyledText({super.key});
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      "Learn Flutter the fun way!", 
      style: TextStyle(
        color:Colors.white,
        fontSize: 28,
      ), 
    );
    
  }
}