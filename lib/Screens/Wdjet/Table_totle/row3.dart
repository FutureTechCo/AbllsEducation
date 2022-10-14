import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:abllseducation/Routs/rout_onGenerateRout.dart';

class row3 extends StatefulWidget {

   row3({
    Key? key,
  }) : super(key: key);

  @override
  State<row3> createState() => _row3State();
}

class _row3State extends State<row3> {
  bool n1= false;

  bool n2=false;

  bool n3 =false;

  bool n4 =false;

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
                if(n1==false){
                  n1=true;
                }else{
                  n1=false;
                }
              });
            },
            child: Container(

              decoration: BoxDecoration(
                  color:n1==true? Colors.green:Colors.white,
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
              onTap: (){
                setState(() {
                  if(n2==false){
                    n2=true;
                  }else{
                    n2=false;
                  }
                });
              },
              child: Container(

                decoration: BoxDecoration(
                    color: n2==true? Colors.green:Colors.white,
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
                if(n3==false){n3=true;}else{n3=false;}
              },
              child: Container(

                decoration: BoxDecoration(
                    color: n3==true? Colors.green:Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff7899DC),
                        spreadRadius: 2,
                      )
                    ]

                ),
                child: Center(
                  child: Text('A1-3',style: TextStyle(
                    color: Color(0xffA6A6A6),
                    fontSize: 16,

                  ),),
                ),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: (){if(n4==false){n4=true;}else{n4=false;}},
              child: Container(

                decoration: BoxDecoration(
                    color: n4==true? Colors.green:Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff7899DC),
                        spreadRadius: 2,
                      )
                    ]

                ),
                child: Center(
                  child: Text('A1-4',style: TextStyle(
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