import 'package:flutter/material.dart';

const colorofdiv = Color(0xFFF8F8F8);



class ReusableContainer extends StatelessWidget {
  
  final String iconText;
  final IconData icontype;

  ReusableContainer({this.iconText,this.icontype});

  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icontype,size: 80.0,),
        SizedBox(
          height: 12.0,
        ),
        Text(iconText,style: TextStyle(fontSize: 18.0,color:colorofdiv ),)
      ],
    );
  }
}