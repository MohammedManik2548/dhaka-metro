


import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:dhaka_metro/screens/pdf_viewer/pdf_viewer_screen_controller.dart';
import 'package:dhaka_metro/utils/app_constent.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';


class PdfViewerScreen extends StatelessWidget {
  static const routeName='/pdf_viewer_screen';



  PdfViewerScreenController _controller=Get.put(PdfViewerScreenController());



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstant.scaffoldColor(),
      appBar: AppBar(
        iconTheme:  IconThemeData(
          color: Colors.white, //change your color here
        ),
        backgroundColor: AppConstant.myMainColor(),
        title: Text(''),
      ),
      body: Container(
        // color: Colors.white,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),
        margin: EdgeInsets.all(10),

        child: Column(
          children: [
            Container(

              padding: EdgeInsets.all(5),
              // decoration: BoxDecoration(
              //     color: Colors.green,
              //     borderRadius: BorderRadius.all(Radius.circular(20))
              // ),
              height: 70,
              child: Center(child: Text('', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)),
            ),
            // Divider(height: 1,),
            Container(
              color: Colors.yellowAccent,
              height: Get.size.height/2,
              child: pdfView(),


            ),
          ],
        ),
      ),
    );
  }

  Widget pdfView() {
    // return SfPdfViewer.network('http://www.shed.gov.bd/sites/default/files/files/shed.portal.gov.bd/notices/b26d5aa9_4fcb_4333_9a5c_794e793bc0f0/Hsc-2021.pdf');
    return SfPdfViewer.file(
        File('/Users/imac/Library/Developer/CoreSimulator/Devices/317618D0-D28F-4D8C-A23B-98129CC5E8E6/data/Containers/Data/Application/CD029C60-D05D-4DFB-9FA1-1CB28483B6CF/Library/Caches/portfolio-statement-2022-Jan-03-150523.pdf'),
        controller: _controller.pdfViewerController,

    );

  }
}


