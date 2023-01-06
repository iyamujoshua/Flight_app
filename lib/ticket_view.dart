import 'package:flutter/material.dart';
import 'package:sliderapp/utils/app_layout.dart';
import 'package:sliderapp/utils/app_style.dart';
import 'package:sliderapp/widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size= AppLayout.getsize(context);
    return SizedBox(
      width:size.width,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(left:16),
        child: Column(
          children: [
            Container(
decoration: const BoxDecoration(
  color: Color(0xFF526799),
  borderRadius: BorderRadius.only(topLeft: Radius.circular(21), topRight: Radius.circular(21))
),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("NYC",
                      style: style.headLineStyle3.copyWith(color: Colors.white),),
                      Expanded(child: Container()),
                      Thickcontainer(),
                      Expanded(child: SizedBox(
                        height: 24,
                        child: Flex(direction: Axis.horizontal,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(5, (index) => Text("_"
                        )),
                        ),
                      )),
                      Thickcontainer(),
                       Expanded(child: Container()),
                       Text("Nigeria",
                      style: style.headLineStyle3.copyWith(color: Colors.white),),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}