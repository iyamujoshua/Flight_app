import 'package:flutter/material.dart';
import 'package:sliderapp/Buttom_bar.dart';
import 'package:sliderapp/homescreen.dart';


class myhomescreen extends StatefulWidget {
  const myhomescreen({super.key});

  @override
  State<myhomescreen> createState() => _myhomescreenState();
}

class _myhomescreenState extends State<myhomescreen> {
  int selectedIndex=0;
  static final List<Widget>_widgetoption =<Widget>[
    Homescreen(),
    const Text("Search"),
    const Text("ticket"),
    const Text("profile"),

  ];
  void _onitemtapped(int index){
   setState(() {
      selectedIndex=index; 
   });
    // print('${selectedIndex}');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("My data"),
      // ),
      body: Center(child: _widgetoption[selectedIndex],),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: _onitemtapped,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label:"home"),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
        BottomNavigationBarItem(icon: Icon(Icons.airplane_ticket), label: "ticket"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "profile"),
      ]),
    );
  }
}