import 'package:flutter/material.dart';

import 'bmi_result.dart';

class BmiHome extends StatefulWidget {
  const BmiHome({Key? key}) : super(key: key);

  @override
  State<BmiHome> createState() => _BmiHomeState();
}

class _BmiHomeState extends State<BmiHome> {
  bool isMale = true;
  double height = 61;
  int age = 0;
  var weight = 0;
  late double result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.longestSide,
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isMale = true;
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: isMale
                                          ? Colors.lightGreen
                                          : Colors.lightGreenAccent),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.male,
                                        size: 120.0,
                                      ),
                                      Text(
                                        'Male',
                                        style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isMale = false;
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: isMale
                                        ? Colors.lightGreenAccent
                                        : Colors.lightGreen,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.female,
                                        size: 120.0,
                                      ),
                                      Text(
                                        'Female',
                                        style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.lightGreenAccent,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Height',
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.alphabetic,
                                children: [
                                  Text(
                                    '${height.round()}',
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'cm',
                                  ),
                                ],
                              ),
                              Slider(
                                value: height,
                                max: 220,
                                min: 60,
                                onChanged: (value) {
                                  setState(() {
                                    height = value;
                                  });
                                },
                                activeColor: Colors.green,
                                inactiveColor: Colors.lightGreen,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.lightGreenAccent,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Weigth',
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '$weight',
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        FloatingActionButton(
                                          backgroundColor: Colors.lightGreen,
                                          onPressed: () {
                                            setState(() {
                                              weight++;
                                            });
                                          },
                                          mini: true,
                                          child: Icon(Icons.add),
                                        ),
                                        FloatingActionButton(
                                          backgroundColor: Colors.lightGreen,
                                          onPressed: () {
                                            setState(() {
                                              weight--;
                                            });
                                          },
                                          mini: true,
                                          child: Icon(Icons.remove),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.lightGreenAccent),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Age',
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '$age',
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        FloatingActionButton(
                                          onPressed: () {
                                            setState(() {
                                              age++;
                                            });
                                          },
                                          backgroundColor: Colors.lightGreen,
                                          mini: true,
                                          child: Icon(Icons.add),
                                        ),
                                        FloatingActionButton(
                                          backgroundColor: Colors.lightGreen,
                                          onPressed: () {
                                            setState(() {
                                              age--;
                                            });
                                          },
                                          mini: true,
                                          child: Icon(Icons.remove),
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
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                color: Colors.lightGreenAccent,
                child: MaterialButton(
                  onPressed: () {
                    result = height + weight;

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BmiResult(
                                  isMale: isMale,
                                  age: age,
                                  result: result,
                                )));
                  },
                  child: Text(
                    'Calculate',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
