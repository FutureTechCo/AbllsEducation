import 'package:abllseducation/Screens/Wdjet/CstomAppar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CstomAppar extends StatelessWidget {
    @override
  Widget build(BuildContext context) {
    return Container(
      width:  400,
      height: 110,
      decoration: BoxDecoration(
        color: Color(0xffF6F6F6),
        boxShadow: [
          BoxShadow(
            color: Color(0xffF1EDED),
            spreadRadius: 1,
            blurRadius: 10,
            offset: const Offset(0, 5),
          )
        ],
        borderRadius: BorderRadius.only(

          bottomLeft:  Radius.circular(25),
          bottomRight:  Radius.circular(25),

        ),
      ),

      child: Center(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: ListTile(
            leading: Image.network(
                'https://gogeticon.net/files/1925428/fa0cbc2764f70113bf2fad3905933545.png'),
            title:  Text('مرحبا',style: TextStyle(fontSize: 16,color: Color(0xff707070)),),
            trailing:Container(
              height: 40,
              width: 116,
              child: Row(
                children: [
                  Container(height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xffD5D0D0),
                            spreadRadius: 1,
                            blurRadius: 10,
                            offset: const Offset(0, 5),
                          )
                        ],
                        color: Color(0xffEBE9F7),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Icon(Icons.search,color: Color(0xff003298),)),
                  SizedBox(width: 16,),
                  InkWell(
                    onTap: (){
                      Scaffold.of(context).openEndDrawer();
                    },
                    child: Container(height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Color(0xffEBE9F7),
                          borderRadius: BorderRadius.circular(40),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xffD5D0D0),
                              spreadRadius: 1,
                              blurRadius: 10,
                              offset: const Offset(0, 5),
                            )
                          ],
                        ),
                        child: Icon(Icons.menu,color: Color(0xff003298),)),
                  ),
                ],
              ),
            ) ,
            subtitle: Text('محمد المبحوح',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),) ,

          ),
        ),
      ),
    );
  }
}