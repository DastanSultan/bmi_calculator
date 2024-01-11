import 'package:flutter/material.dart';

class age extends StatefulWidget {
  const age({super.key});

  @override
  State<age> createState() => _ageState();
}

class Age {
  static int ages = 0;
  static int weight = 0;
}

class _ageState extends State<age> {
  Widget ageWeight(String ages, String ageText, IconData iconsPlus,
      IconData iconsMinus, Function() plus, Function() minus) {
    return Container(
      padding: EdgeInsets.only(top: 10, bottom: 10),
      width: MediaQuery.of(context).size.width * 0.4,
      decoration: BoxDecoration(
          color: Color(0xFFF0A011F), borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Text(
            ages,
            style: TextStyle(color: Colors.white, fontSize: 22),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            ageText,
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.5,
            decoration: BoxDecoration(
                // border: Border.all(color: Colors.red),
                ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      minus();
                    });
                  },
                  child: Icon(
                    iconsMinus,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      plus();
                    });
                  },
                  child: Icon(
                    iconsPlus,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ageWeight("Салмагы", "${Age.weight}", Icons.add, Icons.remove, () {
            Age.weight++;
          }, () {
            if (Age.weight <= 0) {
              Age.weight = 1;
            }
            Age.weight--;
          }),
          ageWeight("Жашы", "${Age.ages}", Icons.add, Icons.remove, () {
            Age.ages++;
          }, () {
            if (Age.ages <= 0) {
              Age.ages = 1;
            }
            Age.ages--;
          }),
        ],
      ),
    );
  }
}
