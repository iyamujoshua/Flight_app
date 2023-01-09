import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:sliderapp/Buttom_bar.dart';
import 'package:sliderapp/ticket_view.dart';
import 'package:sliderapp/utils/app_style.dart';
import 'package:sliderapp/hotel_screen.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:style.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      
                        Text("Good morning", style: style.headLineStyle3,),
                        Gap(5),
                        Text("Book Tickets", style: style.headLineStyle1,),
                      ],
                    ),
                   
                 Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/user.png"),
                    ),
                  ),
                 )
                  ],
                ),
                 const Gap(25),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFF4F6FD),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                
                  child: Row(
              children: [
               
                    const Icon(Icons.search,  color: Color(0xFFBFC205)),
                    Text("Search", style: style.headLineStyle4,)
                  
              ],
             ),
                ),
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Upcoming Flights", style: style.headLineStyle2,),
                    InkWell(
                      onTap: (() {
                        print("you tapped me");
                      }),
                      child: Text("view all", style: style.headLineStyle4,)),
                  ],
                ),
              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 20),
            child: Row(children: [
              TicketView(),
              TicketView(),
            ]),
          ),
          const Gap(15),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Hotels", style: style.headLineStyle2,),
                      InkWell(
                        onTap: (() {
                          print("you tapped me");
                        }),
                        child: Text("view all", style: style.headLineStyle4,)),
                    ],
                  ),
          ),
        const Gap(15),
        MyWidget(),
        ],
      ),
    );
  }
}