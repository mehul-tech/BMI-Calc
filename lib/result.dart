

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_first_page/main.dart';

class result_outcome extends StatelessWidget{
  final String bmi;
  final String feedback;
  final String interpretation;

  const result_outcome({Key key, this.bmi, this.feedback, this.interpretation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        title: Text('BMI Calculator'),
        backgroundColor: Colors.red,
      ),
      body:
      Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              margin: EdgeInsets.all(10),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                )
              ),
            ),
          ),
          Expanded(
            flex: 9,
            child: Container(
              color: Colors.grey[600],
              margin: EdgeInsets.all(20),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    interpretation,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                      fontSize: 30,
                      height: 2,
                    ),
                  ),
                  Text(
                    bmi,
                    style: TextStyle(
                      fontSize: 100,
                      height: 1.6,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    ' ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      height: 2,
                    ),
                  ),
                  Text(
                    feedback,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      height: 1,
                    ),
                  ),
                  Text(
                    ' ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      height: 1,
                    ),
                  )
                ]
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: RawMaterialButton(

              onPressed: () {

                Navigator.of(context).pop(MaterialPageRoute(builder: (context) => result_outcome()));
              },
              constraints: BoxConstraints.tightFor(
                  width: 2000, height: 96),

              fillColor: Colors.red,
              child: Text(
                'Re-Calculate'.toUpperCase(),
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3
                ),
              ),

            ),
          ),

        ],
      ),
    );
  }
  
}

