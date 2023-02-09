import 'package:abllseducation/Screens/Menu/DrawerApp.dart';
import 'package:abllseducation/Screens/Wdjet/CstomAppar.dart';
import 'package:abllseducation/pdf.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MDPF extends StatefulWidget {
  const MDPF({Key? key}) : super(key: key);

  @override
  State<MDPF> createState() => _MDPFState();
}

class _MDPFState extends State<MDPF> {
  @override
  void initState() {
    createPdf.init();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return     Scaffold(
      appBar: AppBar(),
      body: Center(child: TextButton(onPressed: ()
      async{
        // await createPdf.createPDFfile();
        }
          ,child: Text('SavePdf')),),
    );

  }
}
