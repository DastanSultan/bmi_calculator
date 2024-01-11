import 'package:bmi_calculator/widgets/age.dart';
import 'package:bmi_calculator/widgets/height.dart';
import 'package:bmi_calculator/widgets/sex.dart';
import 'package:flutter/material.dart';

class myApp extends StatefulWidget {
  @override
  myAppState createState() => myAppState();
}

class hoch {
  static double cm = 150;
}

TextStyle esep = TextStyle(color: Colors.white, fontSize: 25);

class myAppState extends State<myApp> {
  Widget sizedBox50() {
    return SizedBox(height: 50);
  }

  eseptoo() {
    if ((maleFemale.emp == 1) &&
        (Age.ages >= 18 && Age.ages <= 24) &&
        (Age.weight > 20 && Age.weight < 25)) {
      print(
        "Male все норма\n${Age.ages}\n${Age.weight}\n${hoch.cm}",
      );
    } else if ((maleFemale.emp == 1) &&
        (Age.ages >= 18 && Age.ages <= 24) &&
        (Age.weight > 20 && Age.weight < 25)) {
      print(
        "Male все норма\n${Age.ages}\n${Age.weight}\n${hoch.cm}",
      );
    } else {
      print("Not Male");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff201832),
      appBar: PreferredSize(
        preferredSize: Size(0, 0),
        child: AppBar(),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 30),
        child: Center(
          child: ListView(
            children: [
              Center(
                  child: Text(
                "BMI Calculator",
                style: esep,
              )),
              sizedBox50(),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [sex()]),
              sizedBox50(),
              weighta(),
              sizedBox50(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  age(),
                ],
              ),
              // Center(
              //   child: Container(
              //     width: MediaQuery.of(context).size.width * 0.8,
              //     height: 70,
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(10),
              //     ),
              //     child: Text(
              //       "Результат",
              //       style: TextStyle(color: Colors.white),
              //     ),
              //   ),
              // ),
              sizedBox50(),
              Center(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      eseptoo();
                    });
                  },
                  child: Container(
                    width: 300,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Color(0xfffFF8B13),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "Эсептөө",
                      style: esep,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
