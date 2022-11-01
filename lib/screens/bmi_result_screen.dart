import 'package:flutter/material.dart';

class BmiResultScreen extends StatelessWidget {

  final bool isMale;
  final int height;
  final int weight;
  final int age;
  final double result;

  BmiResultScreen({
    required this.isMale,
    required this.height,
    required this.age,
    required this.weight,
    required this.result,
});
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(
              Icons.arrow_back_ios_new_outlined,
          ),
        ),
        title: Text(
          'BMI Result',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Gender is ${isMale == true ? 'Male' : 'Female'}',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Height is $height',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Weight is $weight',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Age is $age',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'BMI is  ${result.round()}',
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
