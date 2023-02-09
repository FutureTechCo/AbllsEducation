import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
class widjet_level extends StatelessWidget {
  late var percent;
  late String titel;
  late String cust_id;
  late String level_id;
   widjet_level({required percent, required titel,required cust_id, required level_id}){
     this.percent=percent;
     this.titel=titel;
     this.level_id=level_id;
     this.cust_id=cust_id;
   }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        width:328.w,
        height: 50.h,
        child: Stack(
          children: [
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, '/block_reselt');
              },
              child: Container(
                width: 320.w,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,

                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff003298),
                        spreadRadius: 2,
                      )]
                ),
                child:LinearPercentIndicator(
                  padding: EdgeInsets.zero,
                  backgroundColor: Colors.white,
                  width: 324.0,
                  animation: true,
                  animationDuration: 1000,
                  lineHeight:40.0,
                  percent: percent,
                  center: Text(titel,style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff003298)

                  ),),

                  linearStrokeCap: LinearStrokeCap.roundAll,
                  progressColor: Color(0xff00FF00),
                ),
              ),
            ),
            Positioned(
              top: 7,
              left: 310,
              child: InkWell(

                child: Container(
                  height: 21.h,
                  width: 21.w,
                  decoration: BoxDecoration(
                      color: Color(0xff336BA4),
                      shape: BoxShape.circle
                  ),
                  child: Center(child: Icon(Icons.arrow_forward_ios
                      ,color: Colors.white,
                      size:15
                  )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}