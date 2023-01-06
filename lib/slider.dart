

import 'package:flutter/material.dart';
import 'package:sliderapp/content_model.dart';
import 'package:sliderapp/Buttom_bar.dart';
class slider extends StatefulWidget {
  const slider({super.key});

  @override
  State<slider> createState() => _sliderState();
}

class _sliderState extends State<slider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemCount: content.length,
              itemBuilder:(_,i){
                return Padding(
                  padding: const EdgeInsets.all(40),
                  child: Column(
                    children: [
                      Image.asset(
                      content[i].image,
                      height: 300,),
                      Text(
                        content[i].title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30
                      ),
                      ),
                      SizedBox(height: 15,),
                      
                      
                      Text(
          
                        content[i].description,
                      textAlign: TextAlign.center,
                      
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[700],
          
                      ),
                      ),
                    ],
                  ),
                );
              }),
          ),
          Container(
                child: new SizedBox(
                
  width: 230.0,
  height: 50.0,
  child: ElevatedButton(
    child: Text('Get Started',
    ),
    style: ButtonStyle(
        backgroundColor:MaterialStateProperty.all(  Color.fromARGB(255, 252, 156, 48)),
        ),
    onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) { 
        return myhomescreen();
       },),);
    },
  ),
),
              ),
               SizedBox(height:40,),
          

        ],
      ),
    );
  }
}