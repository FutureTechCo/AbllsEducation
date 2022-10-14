import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:abllseducation/Routs/rout_onGenerateRout.dart';

class vadeo_screen extends StatefulWidget {
  const vadeo_screen({Key? key}) : super(key: key);

  @override
  State<vadeo_screen> createState() => _vadeo_screenState();
}

class _vadeo_screenState extends State<vadeo_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50.h,
        backgroundColor: Color(0xffF6F6F6),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(24.r),
            bottomRight: Radius.circular(24.r),
          ),
        ),
        automaticallyImplyLeading: false,

        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
            Text(
              'A1',
              style: TextStyle(
                fontSize: 22.sp,
                fontFamily: 'Arial',
                fontWeight: FontWeight.bold,
                color: Color(0xff003298),
              ),
            ),
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context,routapp.totel_);

                },
                icon: Icon(Icons.arrow_forward, color: Color(0xff003298))),
              SizedBox(width: 3,)
          ],),


        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          right: 16,
          left: 16
        ),
        child: Column(
  crossAxisAlignment: CrossAxisAlignment.end,
          children: [
          SizedBox(height: 15.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [


              Text('A1', style: TextStyle(
            fontSize: 22.sp,
            fontFamily: 'Arial',
            fontWeight: FontWeight.bold,
            color: Color(0xff003298),
          ),),
              SizedBox(width: 3.w,),
              Text(':',style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize:20
              ),),
              SizedBox(width: 3.w,),

              Text('لشئ مفضل او مكافأة عندما يقدمها الراشد',style: TextStyle(
                 fontWeight: FontWeight.bold,
                 color: Colors.black,
                 fontSize:18
             ),),
              SizedBox(width: 5.w,),


            ],),
         SizedBox(height: 15,),
         Container(
           height: 156.h,
           width: 328.w,
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(20),
             color: Colors.amber,

           ),
         ),
        SizedBox(height: 8.h,),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [

            Text('الهدف',style: TextStyle(
              fontSize: 22.sp,
              fontFamily: 'Arial',
              fontWeight: FontWeight.bold,
              color: Color(0xff003298),
            ),),
            SizedBox(width: 3.w,),
            Text(':',style: TextStyle(
              fontSize: 22.sp,
              fontFamily: 'Arial',
              fontWeight: FontWeight.bold,
              color: Color(0xff003298),
            ),),

          ],
        ),
            SizedBox(height: 16.h,),
            Text('في 3 ثواني مكافأة يقدمها الشخص البالغ في 5 من 5 مناسبات'
              ,style: TextStyle(
              fontSize: 20,

            ),),
            SizedBox(height: 8.h,),
            Divider(
              color: Colors.black,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [

                Text('الهدف',style: TextStyle(
                  fontSize: 22.sp,
                  fontFamily: 'Arial',
                  fontWeight: FontWeight.bold,
                  color: Color(0xff003298),
                ),),
                SizedBox(width: 3.w,),
                Text(':',style: TextStyle(
                  fontSize: 22.sp,
                  fontFamily: 'Arial',
                  fontWeight: FontWeight.bold,
                  color: Color(0xff003298),
                ),),

              ],
            ),
            SizedBox(height: 16.h,),
            Text('في 3 ثواني مكافأة يقدمها'
              ,style: TextStyle(
                fontSize: 20,

              ),),
            SizedBox(height: 8.h,),
            Divider(
              color: Colors.black,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [

                Text('الهدف',style: TextStyle(
                  fontSize: 22.sp,
                  fontFamily: 'Arial',
                  fontWeight: FontWeight.bold,
                  color: Color(0xff003298),
                ),),
                SizedBox(width: 3.w,),
                Text(':',style: TextStyle(
                  fontSize: 22.sp,
                  fontFamily: 'Arial',
                  fontWeight: FontWeight.bold,
                  color: Color(0xff003298),
                ),),

              ],
            ),
            SizedBox(height: 16.h,),
            Text('في 3 ثواني مكافأة يقدمها'
              ,style: TextStyle(
                fontSize: 20,

              ),),
            SizedBox(height: 8.h,),
            Divider(
              color: Colors.black,
            ),





        ],),
      ),
    );
  }
}
