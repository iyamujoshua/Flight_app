
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:sliderapp/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:sliderapp/utils/app_layout.dart';
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size=AppLayout.getsize(context);
    return Container(
      width: size*0.6,
      height: 350,
      child:
       Column(
        children: [
          Container(
            height: 100,
            width: 50,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/hello.jpeg")),

              
             
            ),
          ),
          
      ]),
    );
  }
}
