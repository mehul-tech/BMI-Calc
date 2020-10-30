import 'dart:math';

import 'package:flutter_first_page/calculate.dart';
import 'package:flutter_first_page/result.dart';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  @override
  Home createState() => Home();
}

enum Gender { male, female }



// ignore: must_be_immutable
class Home extends State<HomePage>{

  int height = 160;
  int weight;
  int age;
  Gender gender;
  @override
  void initState() {
    weight = 60;
    height = 160;
    age = 16;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
        backgroundColor: Colors.grey[700],
        appBar: AppBar(
          title: Text('BMI Calculator'),
          centerTitle: true,
          backgroundColor: Colors.deepOrange[600],
        ),
        body:
        Column(
          children: [
            Expanded(
              flex: 5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: <Widget>[
                  Expanded(
                    child: GestureDetector( onTap: () {
                      setState(() {
                        gender = Gender.male;
                      });
                    },
                      child: Container(
                        color: gender ==  Gender.male ? Colors.grey[500]: Colors.grey[400],
                        padding: EdgeInsets.all(10.0),
                        margin: EdgeInsets.all(10),
                        alignment: Alignment.topCenter,
                        child: Column(

                          children: <Widget>[
                            Image.asset('assets/male.png', width: 90, height: 90,),
                            Text(
                                ' '
                            ),
                            Text(
                              'Male'.toUpperCase(),
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                          ],
                        ),

                      ),

                    ),
                  ),
                  Expanded(

                    child: GestureDetector( onTap: () {
                      setState(() {
                        gender = Gender.female;
                      });
                    },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        alignment: Alignment.topCenter,

                        color: gender ==  Gender.female ? Colors.grey[500]: Colors.grey[400],
                        padding: EdgeInsets.all(10.0),


                        child: Column(
                          children: <Widget>[
                            Image.asset('assets/female.png', width: 110, height: 110,),

                            Text(
                              'FeMale'.toUpperCase(),
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                          ],
                        ),

                      ),

                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  Expanded(
                    child: Container(
                      color: Colors.grey[400],
                      padding: EdgeInsets.all(10.0),
                      margin: EdgeInsets.all(10.0),
                      alignment: Alignment.topCenter,
                      child: Column(
                          children: <Widget>[
                            Text(
                              'Height',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              textBaseline: TextBaseline.alphabetic,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              children: [
                                Text(
                                  height.toString(),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 50,
                                  ),
                                ),
                                Text(
                                  'cm',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 30,
                                  ),
                                ),
                              ],
                            ),
                            SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                  inactiveTrackColor: Colors.grey[600],
                                  activeTrackColor: Colors.blue,
                                  thumbColor: Colors.red,
                                  overlayColor: Colors.blue,
                                  thumbShape:
                                  RoundSliderThumbShape(enabledThumbRadius: 15),
                                  overlayShape:
                                  RoundSliderOverlayShape(overlayRadius: 20)),
                              child: Slider(
                                value: height.toDouble(),
                                min: 120,
                                max: 220,
                                onChanged: (value) {
                                  setState(() {
                                    height = value.toInt();
                                  });
                                },
                              ),
                            ),
                          ]
                      ),
                    ),
                  ),

                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: <Widget>[
                  Expanded(
                    child: Container(
                      color: Colors.grey[400],
                      padding: EdgeInsets.all(10.0),
                      margin: EdgeInsets.all(8),
                      alignment: Alignment.topCenter,
                      child: Column(
                          children: <Widget>[
                            Text(
                              'Weight',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              textBaseline: TextBaseline.alphabetic,
                              crossAxisAlignment: CrossAxisAlignment.baseline,

                              children: [
                                Text(
                                  weight.toString(),
                                  style: TextStyle(
                                    fontSize: 60,

                                  ),
                                ),
                                Text(
                                  'kg',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RawMaterialButton(
                                  child: Image(
                                    image: AssetImage('assets/minus.png'),
                                    width: 30,
                                    height: 30,
                                  ),
                                  constraints: BoxConstraints.tightFor(
                                      width: 30, height: 30),
                                  shape: CircleBorder(),
                                  fillColor: Color(0xfff4c4f5e),
                                  onPressed: () {
                                    setState(() {
                                      --weight;
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 10,
                                ),

                                RawMaterialButton(
                                  child: Image(
                                    image: AssetImage('assets/plus.png'),
                                    width: 30,
                                    height: 30,
                                  ),
                                  constraints: BoxConstraints.tightFor(
                                      width: 30, height: 30),
                                  shape: CircleBorder(),
                                  fillColor: Color(0xfff4c4f5e),
                                  onPressed: () {
                                    setState(() {
                                      weight = weight + 1;
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),
                          ]
                      ),


                    ),

                  ),
                  Expanded(
                    child: Container(
                      color: Colors.grey[400],
                      padding: EdgeInsets.all(10.0),
                      margin: EdgeInsets.all(8),
                      alignment: Alignment.topCenter,
                      child: Column(
                        children: <Widget>[
                          Text(
                            'Age',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            textBaseline: TextBaseline.alphabetic,
                            crossAxisAlignment: CrossAxisAlignment.baseline,

                            children: [
                              Text(
                                age.toString(),
                                style: TextStyle(
                                  fontSize: 60,

                                ),
                              ),
                            ],
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RawMaterialButton(
                                child: Image(
                                  image: AssetImage('assets/minus.png'),
                                  width: 30,
                                  height: 30,
                                ),

                                constraints: BoxConstraints.tightFor(
                                    width: 30, height: 30),
                                shape: CircleBorder(),
                                fillColor: Color(0xfff4c4f5e),
                                onPressed: () {
                                  setState(() {
                                    --age;
                                  });
                                },

                              ),
                              SizedBox(
                                width: 10,
                              ),

                              RawMaterialButton(
                                child: Image(
                                  image: AssetImage('assets/plus.png'),
                                  width: 30,
                                  height: 30,
                                ),
                                constraints: BoxConstraints.tightFor(
                                    width:30, height: 30),
                                shape: CircleBorder(),
                                fillColor: Color(0xfff4c4f5e),
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),

                            ],
                          ),
                        ],
                      ),


                    ),

                  ),

                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: RawMaterialButton(

                onPressed: () {
                  calculate calc = new calculate(weight: weight, height: height);
                  String bmi = calc.BMI().toString();
                  String interpretation = calc.getInterpretation();
                  String feedback = calc.getFeedback();
                  print('height: $height\nweight: $weight ' + '\nBMI: ' + bmi + '\nInterpretation: ' + interpretation + '\nfeedback: ' + feedback);
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => result_outcome(
                    bmi: bmi, interpretation: interpretation, feedback:feedback,
                  )));
                },
                constraints: BoxConstraints.tightFor(
                    width: 2000, height: 45),

                fillColor: Colors.red,
                child: Text(
                  'Calculate'.toUpperCase(),
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3
                  ),
                ),

              ),
            ),


          ],)
    );

    // floatingActionButton: FloatingActionButton(
    //   onPressed: (){
    //     print('you clicked floatingActionButton');
    //   },
    //   child: Text('click'),
    //   backgroundColor: Colors.red[600],
    // ),

  }
}