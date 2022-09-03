import 'package:flutter/material.dart';

import '../Wdjet/CstomAppar.dart';
import '../Wdjet/Table/row.dart';
class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
          child: Column(
            children: [
              CstomAppar(),
              Container(
                height: 43.98,
                width: 323,
                decoration: BoxDecoration(
                  color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),

                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff7899DC),
                        spreadRadius: 2,
                      )
                    ]
                ),
                child: Center(child: Text('التعاون وفعالية المكافئات',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color(0xff003298)
                ),)),
              ),
              table(),
            ],
          )),
    );
  }
}




