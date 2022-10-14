import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Wdjet/Table_totle//row.dart';
import '../Wdjet/Table_totle//row2.dart';
import '../Wdjet/Table_totle//row3.dart';
class totel_ extends StatefulWidget {
  const totel_({Key? key}) : super(key: key);

  @override
  State<totel_> createState() => _totel_State();
}

class _totel_State extends State<totel_> {
  @override
  Widget build(BuildContext context) {
    int _selectedPage = 0;
    late PageController _pageController=PageController(initialPage: 0);;

    @override
    void initState() {
      // TODO: implement initState
      super.initState();
      _pageController = PageController(initialPage: 0);
    }

    @override
    void dispose() {
      // TODO: implement dispose
      _pageController.dispose();
      super.dispose();
    }
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
         leading:  Padding(
           padding: const EdgeInsets.only(
             left: 12,bottom: 12
           ),
           child: Container(height: 25,
               width: 25,
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
         ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'التقييم',
                style: TextStyle(
                  fontSize: 22.sp,
                  fontFamily: 'Arial',
                  fontWeight: FontWeight.bold,
                  color: Color(0xff003298),
                ),
              ),
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_forward, color: Color(0xff003298))),
              SizedBox(width: 3,)
            ],),


        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 10,),
          Row(children: [
            SizedBox(width: 20,),
            InkWell(
              onTap: (){
                _pageController.previousPage(duration: Duration(seconds: 1), curve: Curves.ease);
              },

              child: Container(height: 34,width: 34,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blueAccent,
                ),
                child:Icon(Icons.navigate_before,color: Colors.white,) ,),
            ),
            Spacer(),
            Container(child: Text('$_selectedPage/10',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),),
            Spacer(),
            InkWell(
              onTap: () {
                _pageController.nextPage(
                    duration: Duration(seconds:1 ),
                    curve: Curves.ease);
              },

              child: Container(height: 34,width: 34,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blueAccent,
                ),
                child:Icon(Icons.navigate_next,color: Colors.white,) ,),
            ),
            SizedBox(width: 20,),

          ],),
          SizedBox(height: 15,),
          SizedBox(
            height: 573.99,
            width: 324,
            child: PageView(
              clipBehavior: Clip.antiAlias,
              controller: _pageController,
              onPageChanged: (int selectedPage) {
                print('Selected Page: $selectedPage');
                setState(() {
                  _selectedPage = selectedPage;
                  print(_selectedPage);
                });
              },
              children:<Widget> [
                SizedBox(
                  height: 573.99,
                  width: 324,
                  child: Column(
                    children: [
                      SizedBox(height: 3,),
                      Container(
                        height: 41.98,
                        width: 321,
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

                      row1(),
                      row2(),
                      row3(),
                      row1(),
                      row2(),
                      row3(),
                      row1(),
                      row2(),
                      row3(),
                      row1(),
                      row2(),
                      row3(),
                    ],
                  ),
                ),

                SizedBox(
                  height: 573.99,
                  width: 324,
                  child: Column(
                    children: [
                      SizedBox(height: 3,),
                      Container(
                        height: 41.98,
                        width: 321,
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

                      row1(),
                      row2(),
                      row3(),
                      row1(),
                      row2(),
                      row3(),
                      row1(),
                      row2(),
                      row3(),
                      row1(),
                      row2(),
                      row3(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 573.99,
                  width: 324,
                  child: Column(
                    children: [
                      SizedBox(height: 3,),
                      Container(
                        height: 41.98,
                        width: 321,
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

                      row1(),
                      row2(),
                      row3(),
                      row1(),
                      row2(),
                      row3(),
                      row1(),
                      row2(),
                      row3(),
                      row1(),
                      row2(),
                      row3(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 573.99,
                  width: 324,
                  child: Column(
                    children: [
                      SizedBox(height: 3,),
                      Container(
                        height: 41.98,
                        width: 321,
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

                      row1(),
                      row2(),
                      row3(),
                      row1(),
                      row2(),
                      row3(),
                      row1(),
                      row2(),
                      row3(),
                      row1(),
                      row2(),
                      row3(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 573.99,
                  width: 324,
                  child: Column(
                    children: [
                      SizedBox(height: 3,),
                      Container(
                        height: 41.98,
                        width: 321,
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

                      row1(),
                      row2(),
                      row3(),
                      row1(),
                      row2(),
                      row3(),
                      row1(),
                      row2(),
                      row3(),
                      row1(),
                      row2(),
                      row3(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 573.99,
                  width: 324,
                  child: Column(
                    children: [
                      SizedBox(height: 3,),
                      Container(
                        height: 41.98,
                        width: 321,
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

                      row1(),
                      row2(),
                      row3(),
                      row1(),
                      row2(),
                      row3(),
                      row1(),
                      row2(),
                      row3(),
                      row1(),
                      row2(),
                      row3(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 573.99,
                  width: 324,
                  child: Column(
                    children: [
                      SizedBox(height: 3,),
                      Container(
                        height: 41.98,
                        width: 321,
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

                      row1(),
                      row2(),
                      row3(),
                      row1(),
                      row2(),
                      row3(),
                      row1(),
                      row2(),
                      row3(),
                      row1(),
                      row2(),
                      row3(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 573.99,
                  width: 324,
                  child: Column(
                    children: [
                      SizedBox(height: 3,),
                      Container(
                        height: 41.98,
                        width: 321,
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

                      row1(),
                      row2(),
                      row3(),
                      row1(),
                      row2(),
                      row3(),
                      row1(),
                      row2(),
                      row3(),
                      row1(),
                      row2(),
                      row3(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 573.99,
                  width: 324,
                  child: Column(
                    children: [
                      SizedBox(height: 3,),
                      Container(
                        height: 41.98,
                        width: 321,
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

                      row1(),
                      row2(),
                      row3(),
                      row1(),
                      row2(),
                      row3(),
                      row1(),
                      row2(),
                      row3(),
                      row1(),
                      row2(),
                      row3(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 573.99,
                  width: 324,
                  child: Column(
                    children: [
                      SizedBox(height: 3,),
                      Container(
                        height: 41.98,
                        width: 321,
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

                      row1(),
                      row2(),
                      row3(),
                      row1(),
                      row2(),
                      row3(),
                      row1(),
                      row2(),
                      row3(),
                      row1(),
                      row2(),
                      row3(),
                    ],
                  ),
                ),
              ],),
          ),
        ],
      ),
    );
  }
}
