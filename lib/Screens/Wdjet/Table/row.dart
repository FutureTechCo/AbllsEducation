import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class table extends StatelessWidget {
  const table({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 43.98,
      width: 324,
      child: Row(
        children: [
          Container(
            height: 43.98,
            width: 133.5,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff7899DC),
                    spreadRadius: 2,
                  )
                ]

            ),
            child: Center(
              child: Text('A1-2',style: TextStyle(
                color: Color(0xffA6A6A6),
                fontSize: 16,

              ),),
            ),
          ),
          Container(
            height: 43.98,
            width: 133.5,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff7899DC),
                    spreadRadius: 2,
                  )
                ]

            ),
            child: Center(
              child: Text('A1-1',style: TextStyle(
                color: Color(0xffA6A6A6),
                fontSize: 16,

              ),),
            ),
          ),
          Container(
            height: 44,
            width: 57,
            decoration: BoxDecoration(
                color: Color(0xff3A7FC4),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff7899DC),
                    spreadRadius: 2,
                  )
                ]

            ),
            child: Center(child: Text('A1',style: TextStyle(fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.bold,),)),
          ),],
      ),
    );
  }
}