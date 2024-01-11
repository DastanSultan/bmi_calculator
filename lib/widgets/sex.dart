import 'package:flutter/material.dart';

class maleFemale {
  static int emp = 180;
}

List<String> sexs = ["male", "female"];

class sex extends StatefulWidget {
  @override
  State<sex> createState() => _sexState();
}

class _sexState extends State<sex> {
  Widget icons(String texts, IconData calc, int index) {
    return InkWell(
      onTap: () {
        setState(() {
          maleFemale.emp = index;
          print(maleFemale.emp);
        });
      },
      child: maleFemale.emp == index
          ? Container(
              width: MediaQuery.of(context).size.width * 0.3,
              height: 150,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    calc,
                    color: Colors.black,
                    size: 80,
                  ),
                  Text(
                    texts,
                    style: TextStyle(color: Colors.black, fontSize: 22),
                  ),
                ],
              ),
            )
          : Container(
              width: MediaQuery.of(context).size.width * 0.3,
              height: 150,
              decoration: BoxDecoration(
                  color: Color(0xFFF0A011F),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    calc,
                    color: Colors.white,
                    size: 80,
                  ),
                  Text(
                    texts,
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ],
              ),
            ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          icons("Эркек", Icons.male, 1),
          icons("Аял", Icons.female, 2),
        ],
      ),
    );
  }
}
