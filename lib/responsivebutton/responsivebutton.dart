import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../resuabletext/reusetext.dart';
class responsivebutton extends StatelessWidget {
 Color? color;
 responsivebutton(
 {
   this.color=Colors.blue,
}
);
 @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){

      },
      child: Container(
        width: 180,
        height: 60,
        decoration: BoxDecoration(
          color:color,
             borderRadius: BorderRadius.circular(15)
        ),
        child: Center(child: reusetext(text: 'Next',fc: Colors.black,)),
      ),
    );
  }
}
