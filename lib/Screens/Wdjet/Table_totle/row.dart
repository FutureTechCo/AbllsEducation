import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:abllseducation/Routs/rout_onGenerateRout.dart';

class row1 extends StatefulWidget {
  bool x =false;
  bool xx =false;
   row1({
    Key? key,
  }) : super(key: key);

  @override
  State<row1> createState() => _row1State();
}

class _row1State extends State<row1> {

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 43.98,
      width: 321,
      child: Row(
        children: [
          Expanded(
            child: InkWell(
              onTap: (){
             setState(() {
               if(widget.x==false){widget.x=true;}else{widget.x=false;}
             });

              }
              ,
              child: Container(

                decoration: BoxDecoration(
                    color:widget.x==true? Colors.green:Colors.white,
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
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: (){
                setState(() {

                  if(widget.xx==false){
                    widget.xx=true;
                  }else{
                    widget.xx=false;}
                  print(widget.xx);
                });
              },
              child: Container(

                decoration: BoxDecoration(
                    color: widget.xx==true? Colors.green:Colors.white,
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