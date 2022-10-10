import 'package:abllseducation/Screens/Wdjet/Table/row2.dart';
import 'package:abllseducation/Screens/Wdjet/Table/row3.dart';
import 'package:flutter/material.dart';

import '../Wdjet/CstomAppar.dart';
import '../Wdjet/Table/row.dart';
import '../Menu/DrawerApp.dart';
class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key
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
      key: _key,
      endDrawer: DrawerApp(),
      body:SafeArea(
          child: Column(
            children: [
              CstomAppar(),

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
          )),
    );
  }
}




