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
       dec.addPage(_createPage(cat: data));
    Uint8List result = await dec.save();
    await newFile.writeAsBytes(result);
    await OpenFile.open(newFile.path);
  }

  static Page _createPage({cat}) {
    return Page(
      textDirection: TextDirection.rtl,
      theme: ThemeData.withFont(base: arfont),
      pageFormat: PdfPageFormat.a4,
       build: (context) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text('تقرير حاله'),
              SizedBox(height: 10.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(children: [
                          Text('..........................'),
                          Text('العمر'),
                        ],),
                        Row(children: [
                          Text('.........................'),
                          Text('تاريخ بدايه التدريب'),
                        ],),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(children: [
                          Text('..........................'),
                          Text('الاسم'),
                        ],),
                        Row(children: [
                          Text('..................'),
                          Text('اسم المدرب'),
                        ],),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(': نتائج التقرير'),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              ...cat!.map((e) {
                 return Container(
                  child: Column(children: [
                    Text('(${e.name}) ماتم أنجازه من مرحلة '),
                    SizedBox(height: 12.h,),
                    for(int i  = 0 ; i < e.categories!.length ; i++)
                      for(int y = 0; y <  e.categories![i].videos!.length; y++)
                        if(e.categories![i].videos![y].is_watched == true)Row(
                          children: [

                            Expanded(
                              child: Container(
                                height: 30.h,
                                child: Center(child: Text('${e.categories![i].videos![y].touchstone}')),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: PdfColor.fromHex('#000000')
                                    )
                                ),),
                            ),
                            Container(child: Center(child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('${e.categories![i].letter} - ${y+1}'),
                            )),
                              height: 30.h,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: PdfColor.fromHex('#000000')
                                  )
                              ),),
                          ],
                        ),SizedBox(height: 12.h,),
                  ],),
                );
              }),
              SizedBox(height: 20.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('..................'),
                  Text('تاريخ التقرير'),
                  Spacer(),
                  Text('.........................'),
                  Text('اسم المدرب'),
                ],
              ),
              SizedBox(height: 40.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      Text(
                        'كتب هذا التقرير من تطبيق الايبلز \nاعداد د.نور الصقر القادري'
                        ,textAlign: TextAlign.right,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text('dr.nouralsager@gmail.com'),
                    ],
                  ),
                ],
              )
            ],
          ),
        );
       },
    );
  }
}
