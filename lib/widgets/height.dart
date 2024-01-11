import 'package:bmi_calculator/home.dart';
import 'package:flutter/material.dart';

class weighta extends StatefulWidget {
  @override
  State<weighta> createState() => _weightaState();
}

class _weightaState extends State<weighta> {
  Widget weif() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Боюнун узундугу",
            style: TextStyle(color: Colors.white, fontSize: 22)),
        SizedBox(height: 20),
        Text("${hoch.cm} см",
            style: TextStyle(color: Colors.white, fontSize: 30)),
        Slider(
          value: hoch.cm,
          thumbColor: Colors.amber,
          inactiveColor: Colors.white,
          onChanged: (newCm) {
            setState(() {
              hoch.cm = newCm;
            });
          },
          min: 150,
          max: 195,
          divisions: 50,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: 180,
      decoration: BoxDecoration(
          color: Color(0xFFF0A011F), borderRadius: BorderRadius.circular(10)),
      child: weif(),
    );
  }
}
