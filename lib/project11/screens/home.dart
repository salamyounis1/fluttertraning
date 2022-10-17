import 'package:flutter/material.dart';
import 'package:futter2/project11/widgets/wid1.dart';
import 'package:futter2/project11/widgets/wid2.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

final Color mainColor = HexColor("#C692C8");

class mainScreen2 extends StatefulWidget {
  @override
  _mainScreenState createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen2> {
  TextEditingController _heightController = TextEditingController();
  TextEditingController _weightController = TextEditingController();
  double bmi = 0;
  String textt = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "BMI Calculator",
            style:
                TextStyle(color: Colors.black54, fontWeight: FontWeight.w300),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
        ),
        backgroundColor: mainColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 130,
                    child: TextField(
                      controller: _heightController,
                      style: TextStyle(
                          fontSize: 42,
                          fontWeight: FontWeight.w300,
                          color: Colors.black54),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Height",
                        hintStyle: TextStyle(
                            fontSize: 42,
                            fontWeight: FontWeight.w300,
                            color: Colors.white.withOpacity(.8)),
                      ),
                    ),
                  ),
                  Container(
                    width: 130,
                    child: TextField(
                      controller: _weightController,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 42,
                          fontWeight: FontWeight.w300,
                          color: Colors.black54),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Weight",
                        hintStyle: TextStyle(
                            fontSize: 42,
                            fontWeight: FontWeight.w300,
                            color: Colors.white.withOpacity(.8)),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  double _h = double.parse(_heightController.text);
                  double _w = double.parse(_weightController.text);
                  setState(() {
                    bmi = _w / (_h * _h);
                    if (bmi > 25) {
                      textt = "You\'re over weight";
                    } else if (bmi >= 18.5 && bmi <= 25) {
                      textt = "You have normal weight";
                    } else {
                      textt = "You\'re under weight";
                    }
                  });
                },
                child: Container(
                  child: Text(
                    "Calculate",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                child: Text(
                  bmi.toStringAsFixed(2),
                  style: TextStyle(fontSize: 85, color: Colors.black54),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Visibility(
                  visible: textt.isNotEmpty,
                  child: Container(
                    child: Text(
                      textt,
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w400,
                          color: Colors.black54),
                    ),
                  )),
              SizedBox(
                height: 10,
              ),
              w1(
                barWidth: 40,
              ),
              SizedBox(
                height: 20,
              ),
              w1(barWidth: 70),
              SizedBox(
                height: 20,
              ),
              w1(
                barWidth: 40,
              ),
              SizedBox(
                height: 20,
              ),
              w2(barWidth: 70),
              SizedBox(
                height: 25,
              ),
              w2(barWidth: 80),
              SizedBox(
                height: 25,
              ),
              w2(barWidth: 50),
            ],
          ),
        ));
  }
}
