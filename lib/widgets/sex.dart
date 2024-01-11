import 'package:flutter/material.dart';

int emp = 0;
List<String> sexs = ["male", "female"];

class sex extends StatefulWidget {
  @override
  State<sex> createState() => _sexState();
}

class _sexState extends State<sex> {
  Widget icons(IconData calc, int index) {
    return InkWell(
      onTap: () {
        setState(() {
          emp = index;
          print(emp);
        });
      },
      child: emp == index
          ? Container(
              width: MediaQuery.of(context).size.width * 0.3,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(10)),
              child: Icon(
                calc,
                color: Colors.black,
                size: 80,
              ),
            )
          : Container(
              width: MediaQuery.of(context).size.width * 0.3,
              decoration: BoxDecoration(
                  color: Color(0xFFF0A011F),
                  borderRadius: BorderRadius.circular(10)),
              child: Icon(
                calc,
                color: Colors.white,
                size: 80,
              ),
            ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          icons(Icons.male, 1),
          icons(Icons.female, 2),
        ],
      ),
    );
  }
}
