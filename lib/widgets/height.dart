import 'package:flutter/material.dart';

int weight = 50;
int ages = 18;

class weighta extends StatefulWidget {
  @override
  State<weighta> createState() => _weightaState();
}

class _weightaState extends State<weighta> {
  Widget weif() {
    return InkWell(
      onTap: () {
        setState(() {});
      },
      child: Container(
          margin: EdgeInsets.only(left: 10),
          width: 150,
          height: 100,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Text(
            "col[i],",
            style: TextStyle(color: Colors.black, fontSize: 20),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Row(
        children: [
          weif(),
        ],
      ),
    );
  }
}
