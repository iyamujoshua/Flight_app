import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sliderapp/utils/app_layout.dart';
import 'package:sliderapp/utils/app_style.dart';
import 'package:sliderapp/widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size= AppLayout.getsize(context);
    return SizedBox(
      width:size.width*0.85,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(right:16),
        child: Column(
          children: [
            /*
            showing the blue part of the card/ticket
            */
            
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
                      Expanded(child: Stack(
                        children: [SizedBox(

                          
                          height: 24,
                          child: LayoutBuilder(
                      
                            builder: (BuildContext , BoxConstraints  constraints) { 
                              print("The width is ${constraints.constrainWidth()}");
                                       return Flex(direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate((constraints.constrainWidth()/6).floor(), (index) => SizedBox(width: 3, height: 1, 
                            child: DecoratedBox(decoration: BoxDecoration(color: Colors.white)),
                            ),
                            ),
                            );
                             },       
                          ),
                        ),
                        Center(child: Transform.rotate(angle: 1.5, child:Icon(Icons.local_airport_rounded, color: Colors.white,),)),                                            
                        ]
                        
                      )),
                      
                      Thickcontainer(),
                       Expanded(child: Container()),
                       Text("NG",
                      style: style.headLineStyle3.copyWith(color: Colors.white),),
                    ],
                  ),
                const Gap(3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    
                    SizedBox(
width: 100, child: Text("New york", style: style.headLineStyle4.copyWith(color: Colors.white),),
                    ),
                    Text(" 8HR 30M", style:style.headLineStyle4.copyWith(color: Colors.white),),
                                        SizedBox(
                                          
width: 100, child: Text("Nigeria", textAlign: TextAlign.end, style: style.headLineStyle4.copyWith(color: Colors.white),),
                    ),
                    
                  ],
                ),
                ],
              ),
            ),
                 Container(
                  color: style.orangeColor,//const Color(0xFFF37B67),
                  child: Row(
                    children:  [
                  const    SizedBox(
                        height: 20,
                        width: 10,
                        child: DecoratedBox(decoration: BoxDecoration(
                          color:Colors.white,
                          borderRadius: BorderRadius.only( 
                            topRight:Radius.circular(10),
                             bottomRight:Radius.circular(10),
                          )
                        )),
                      ),
                      Expanded(child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: LayoutBuilder(
                          builder: (BuildContext context, BoxConstraints constraints) {
                            return Flex( direction: Axis.horizontal,

                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                              children:
                                List.generate((constraints.constrainWidth()/15).floor(), (index) => SizedBox(
                                  width: 5, height: 1,
                                  child: DecoratedBox(decoration: BoxDecoration(color: Colors.white)),
                                ))
                              
                            );
                          }
                        ),
                      )),



                          const                  SizedBox(
                        height: 20,
                        width: 10,
                        child: DecoratedBox(decoration: BoxDecoration(
                          color:Colors.white,
                          borderRadius: BorderRadius.only( 
                            topLeft:Radius.circular(10),
                             bottomLeft:Radius.circular(10),
                          )
                        )),
                      ),
                    ],
                  ),
                 ),
              /*
            showing the orange part of the card/ticket
            */

            Container(
             // height: 50,
              decoration:  BoxDecoration(
  color: style.orangeColor,//Color(0xFF526799),
  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(21), bottomRight: Radius.circular(21))
),
              padding: const EdgeInsets.only(left: 16, right:16, top: 10, bottom: 10, ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("1st May", style: style.headLineStyle3.copyWith(color: Colors.white),
                          ),
                          const Gap(5), 
                            Text("Date", style: style.headLineStyle4.copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("08:00am", style: style.headLineStyle3.copyWith(color: Colors.white),
                          ),
                          const Gap(5), 
                            Text("Departure Time", style: style.headLineStyle4.copyWith(color: Colors.white),
                          ),
                        ],
                      ),



                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("23", style: style.headLineStyle3.copyWith(color: Colors.white),
                          ),
                          const Gap(5), 
                            Text("Number", style: style.headLineStyle4.copyWith(color: Colors.white),
                          ),
                        ],
                      ),
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