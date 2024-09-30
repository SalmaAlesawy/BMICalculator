import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {
  BmiResult(
      {super.key,
      required this.ismale,
      required this.result,
      required this.age,
      required this.weight,
      required this.height});
  bool? ismale;
  double? result;
  int? age;
  int? weight;
  double? height;

  @override
  String Normality = "Normal";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "BMI RESULT",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey),
                child: Column(
                  children: [
                    Text(
                      "Gender : ${ismale == true ? "Male," : "Female, "}",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      "Age: $age , ",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      "Weight: $weight , ",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      "Height: ${height!.round()} , ",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey),
                child: Column(
                  children: [
                    const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "YOUR RESULT: ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30),
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      " ${NormalityCheck()}",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Normality == "Upnormal"
                              ? Colors.red
                              : Colors.green),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Result : ${result!.round()}",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      Normality == "Upnormal"
                          ? "You have to visit a doctor"
                          : "You have a normal body.Good Job!",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    const SizedBox(
                      height: 20,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  String NormalityCheck() {
    if (result! < 18.5 || result! > 25) {
      return Normality = "Upnormal";
    } else {
      return Normality = "Normal";
    }
  }
}
