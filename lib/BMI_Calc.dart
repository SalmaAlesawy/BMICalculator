import 'dart:math';

import 'package:flutter/material.dart';

import 'BMI_result.dart';

class BmiCalc extends StatefulWidget {
  const BmiCalc({super.key});

  @override
  State<BmiCalc> createState() => _BmiCalcState();
}

class _BmiCalcState extends State<BmiCalc> {
  @override
  bool? ismale;
  double SliderHeight = 80;
  int weight = 58;
  int Age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SafeArea(
            child: Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue,
              ),
              child: AppBar(
                backgroundColor: Colors.transparent,
                title: const Text(
                  "BMI Calculator",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                centerTitle: true,
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.blue,
          ),
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              ismale = false;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color:
                                  ismale == false ? Colors.white : Colors.grey,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/images/Female-icon-2.png",
                                  width: 150,
                                ),
                                const Text("Female"),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              ismale = true;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color:
                                  ismale == true ? Colors.white : Colors.grey,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/images/Male-200.png",
                                  width: 150,
                                ),
                                const Text("Male"),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey),
                    padding: const EdgeInsets.all(40),
                    child: Column(
                      children: [
                        const Text(
                          "HEIGHT",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 40),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              "${SliderHeight.round()}",
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 35),
                            ),
                            const Text(
                              "CM",
                              style: TextStyle(fontSize: 15),
                            )
                          ],
                        ),
                        Slider(
                          value: SliderHeight,
                          onChanged: (value) {
                            setState(() {
                              SliderHeight = value;
                            });
                          },
                          min: 80,
                          max: 220,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.all(30),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              const Text(
                                "WEIGHT",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 40),
                              ),
                              Text(
                                "$weight",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 35),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                      onPressed: () {
                                        setState(() {
                                          weight++;
                                        });
                                      },
                                      child: const Icon(Icons.add)),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  FloatingActionButton(
                                      onPressed: () {
                                        setState(() {
                                          weight--;
                                        });
                                      },
                                      child: const Icon(Icons.remove)),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              const Text(
                                "AGE",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 40),
                              ),
                              Text(
                                "$Age",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 35),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                      onPressed: () {
                                        setState(() {
                                          Age++;
                                        });
                                      },
                                      child: const Icon(Icons.add)),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  FloatingActionButton(
                                      onPressed: () {
                                        setState(() {
                                          Age--;
                                        });
                                      },
                                      child: const Icon(Icons.remove)),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: MaterialButton(
                    onPressed: () {
                      var result = weight / pow(SliderHeight / 100, 2);
                      print(result);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BmiResult(
                                    ismale: ismale,
                                    age: Age,
                                    weight: weight,
                                    result: result,
                                    height: SliderHeight,
                                  )));
                    },
                    child: const Text(
                      "Calculate",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
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
