import 'package:abllseducation/Screens/sub_screen/block_reselt.dart';
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
      padding:   EdgeInsets.all(6.0.r),
      child: Container(
        width:328.w,
        height: 50.h,
        child: Stack(
          children: [
            Container(
              width: 324.w,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
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
                width: 324.0.r,
                animation: true,
                animationDuration: 1000,
                lineHeight:40.0.h,
                percent: percent,
                center: Text(titel,style: TextStyle(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff003298)

                ),),

                linearStrokeCap: LinearStrokeCap.roundAll,
                progressColor: Color(0xff00FF00),
              ),
            ),
            Positioned(
              top: 8.h,
              left: 285.h,
              child: InkWell(
                onTap: (){ Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  block_reselt(cust_id, level_id)),
                );},
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
