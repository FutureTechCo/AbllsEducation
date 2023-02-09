import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../Wdjet/CstomAppBar_sup.dart';
class reselt extends StatefulWidget {
  const reselt({Key? key}) : super(key: key);

  @override
  State<reselt> createState() => _reseltState();
}

class _reseltState extends State<reselt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CstomAppBar_sup((){}),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('ما تم إنجازه من الأنشطة',style: TextStyle(
                fontSize: 20,
              fontWeight: FontWeight.bold
            ),),
          ),

          widjet_level()
        ],
      ),
    );
  }
}

class widjet_level extends StatelessWidget {
  const widjet_level({
    super.key,

  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        width:328.w,
        height: 50.h,
        child: Stack(
          children: [
            Container(
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
              percent: .2,
              center: Text("أداء مرئي",style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff003298)

              ),),

              linearStrokeCap: LinearStrokeCap.roundAll,
              progressColor: Color(0xff00FF00),
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
