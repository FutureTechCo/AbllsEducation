import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';
 import 'package:abllseducation/Controller/AuthController/userController.dart';
import 'package:abllseducation/Controller/SharedPreferences/SharedPreferences.dart';
import 'package:abllseducation/model/rebort.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:open_file/open_file.dart';
 import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
 import 'package:pdf/widgets.dart';
class createPdf {
  static late Font arfont;
  static init() async {
    arfont = Font.ttf((await rootBundle.load("fonts/Arial.ttf")));
  }

  static createPDFfile({required List<Level> data}) async {
    String path = (await getApplicationDocumentsDirectory()).path;
    log('pdf path=> ${path}');
    File newFile = File(path + "/my_pdf3.pdf");

    Document dec = Document();
    for(int i = 0 ; i < data.length ; i ++){
      dec.addPage(_createPage(cat: data[i].categories,name: data[i].name!,title: i == 0 ?Text('The Assessment of Basic Language and Learning Skills-Revised\nSkill Tracking System'
          '\nStudent Name: ${userController.to.name}',
          style: TextStyle(
            fontSize: 15.sp,
          ),
          textAlign: TextAlign.center
      ):null,index: i+1));
    }
    Uint8List result = await dec.save();
    await newFile.writeAsBytes(result);
    await OpenFile.open(newFile.path);
  }

  static Page _createPage({Text? title,index,name,cat}) {
    return Page(
      textDirection: TextDirection.rtl,
      //ssss

      theme: ThemeData.withFont(base: arfont),
      pageFormat: PdfPageFormat.a3,
       build: (context) {
        return  Padding(
          padding: EdgeInsets.all(8.0.h),
          child: SizedBox(
            height: 573.99.h,
            width: double.infinity.w,
            child: Column(
              children: [
                SizedBox(width: double.infinity.w),
                 title ?? SizedBox(),
                SizedBox(
                  height:  title!=null?15.h:0.h,
                ),
                for(int r = 0 ; r < cat.length;r++)
                  if(cat[r].videos.isNotEmpty)
                    Row(
                    children: [
                      Container(
                        height: 44,
                        width: 57,
                        child: Center(
                            child: Text(
                              cat[r].letter!,
                              style: TextStyle(
                                fontSize: 15,
                                font: arfont,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                      ),
                      for(int j = 0 ; j < cat[r].videos.length;j++)
                       Expanded(
                        child: Container(
                          height: 44.h,
                          width: 57.w,
                          decoration: BoxDecoration(
                            color: cat[r].videos[j].isWatched?PdfColor.fromHex('#00EC34'):null,
                              border: Border.all(
                                color: PdfColor.fromHex('#000000'),
                              ),
                              boxShadow: const[
                                BoxShadow(
                                  spreadRadius: 2,
                                )
                              ]),
                          child: Center(
                            child: Text(
                              cat[r].letter + ' - ${j+1}',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                // for(int i = 0 ; i< list[index].categories!.length;i++)


                Container(
                  height: 41.98.h,
                  width: 321.w,
                  child: Center(
                      child: Text(
                         name ,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.sp,
                          font: arfont
                        ),
                      )),
                      ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text('Page $index')
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
