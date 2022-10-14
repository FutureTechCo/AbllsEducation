import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:abllseducation/Routs/rout_onGenerateRout.dart';

class row2 extends StatefulWidget {

   row2({
    Key? key,
  }) : super(key: key);

  @override
  State<row2> createState() => _row2State();
}

class _row2State extends State<row2> {
  bool x =false;

  bool xx= false;

  bool xxx =false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 43.98,
      width: 321,
      child: Row(
        children: [
          Expanded(child:    InkWell(
            onTap: (){
              setState(() {
                if(x==false){x=true;}else{x=false;}
              });
            },

            child: Container(

              decoration: BoxDecoration(
                  color: x==true? Colors.green:Colors.white,
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
          ),),

          Expanded(
            child: InkWell(
              onTap: (){ setState(() {
                if(xx==false ){
                  xx= true;
                }else{
                  xx=false;
                }
              });
              },
              child: Container(

                decoration: BoxDecoration(
                    color: xx==true? Colors.green:Colors.white,
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

          Expanded(
            child: InkWell(
              onTap: (){
                if(xxx==false){
                  xxx=true;
                }else{
                  xxx=false;
                }
              },
              child: Container(

                decoration: BoxDecoration(
                    color: xxx==true? Colors.green:Colors.white,
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