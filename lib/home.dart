import 'package:bmi_calculator/widgets/height.dart';
import 'package:bmi_calculator/widgets/sex.dart';
import 'package:flutter/material.dart';

class myApp extends StatefulWidget {
  @override
  myAppState createState() => myAppState();
}

double cm = 150;

class myAppState extends State<myApp> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff201832),
      // appBar: AppBar(title: Text("MBI Calculator")),
      body: Padding(
        padding: EdgeInsets.only(top: 50),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                 sex(),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  color: Color(0xFFF0A011F),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Text(
                      "height",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Text(
                      "$cm cm",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    Slider(
                      value: cm,
                      thumbColor: Colors.amber,
                      inactiveColor: Colors.white,
                      onChanged: (newCm) {
                        setState(() {
                          cm = newCm;
                        });
                      },
                      min: 150,
                      max: 195,
                      divisions: 50,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  weighta()
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

