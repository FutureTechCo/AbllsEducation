import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../Wdjet/CstomAppBar_sup.dart';
class results extends StatefulWidget {
  const results({Key? key}) : super(key: key);

  @override
  State<results> createState() => _resultsState();
}

class _resultsState extends State<results> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Column(
  crossAxisAlignment: CrossAxisAlignment.end,
children:[
  SizedBox(height: 10,),
  CstomAppBar_sup((){}),
  SizedBox(height: 20,),
  Padding(
    padding: const EdgeInsets.all(16.0),
    child: Text('ما تم إنجازه من الأنشطة',style: TextStyle(fontSize: 20),),
  ),

  Padding(
    padding: EdgeInsets.all(15.0),
    child:  LinearPercentIndicator(
      width: 330.0,
      animation: true,
      animationDuration: 1000,
      lineHeight: 35.0,
      percent: .6,
      center: Text("أداء مرئي"),
      linearStrokeCap: LinearStrokeCap.round,
      progressColor: Color(0xff00FF00),
    ),
  ),

]),

    );
  }
}
