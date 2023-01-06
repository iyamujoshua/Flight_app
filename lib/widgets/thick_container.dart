import 'package:flutter/material.dart';
import 'package:sliderapp/utils/app_layout.dart';
import 'package:sliderapp/utils/app_style.dart';

class Thickcontainer extends StatelessWidget {
  const Thickcontainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 2.5, color: Colors.white),
      ),
    );
  }
}