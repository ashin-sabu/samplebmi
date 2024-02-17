import 'package:flutter/material.dart';
class BmiCalc extends StatefulWidget {
  const BmiCalc({Key? key}) : super(key: key);

  @override
  State<BmiCalc> createState() => _BmiCalcState();
}

class _BmiCalcState extends State<BmiCalc> {
  TextEditingController height=TextEditingController();
  TextEditingController weight=TextEditingController();
  double result=0;
  double h_value=0;
  double w_value=0;
  void calculate(){
    h_value=double.parse(height.text)/100;
    w_value=double.parse(weight.text);
    result=w_value/(h_value*h_value);
    print(result);


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor:Colors.lime,
      appBar: AppBar(backgroundColor:Colors.white,
          title: Text(style: TextStyle(color:Colors.black,
            fontSize: 40),
              'BMI CALCULATOR')),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [TextField(
          controller:weight ,
      decoration: InputDecoration(
      border:OutlineInputBorder(
      borderRadius: BorderRadius.circular(20.0),),
        filled: true,
      fillColor: Colors.white,
      hintStyle: TextStyle(
        color:Colors.black),
          hintText:"Weight",
        labelText: "Weight",




        ),
        ),
        SizedBox(
          height: 20,
          width: 24,
        ),
        TextField(
          controller: height,

        decoration: InputDecoration(
          border:OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),),
        filled: true,
    fillColor: Colors.white,
    hintStyle: TextStyle(
    color:Colors.black),
    hintText:"Height",
          labelText: "Height"
        ),

        ),
          TextButton(onPressed: (){
            setState(() {
              calculate();
            });
            }, child: Text(' Click calculate')),
          Text(result.toString())
        ],
      ),







    );
  }
}
