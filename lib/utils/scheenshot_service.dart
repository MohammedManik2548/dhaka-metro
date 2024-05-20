import 'package:dhaka_metro/utils/app_constent.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class MyPDFService{


  static Future<void> generatePdf({required Map<String, dynamic> data, required String title, required String sub, required String fileName}) async {

    try{
      EasyLoading.show();
      final pdf = pw.Document();
      List<PdfData> weightData = [];

      var time="${AppConstant.dateFormatHipen("${DateTime.now()}")}-${DateTime.now().hour}${DateTime.now().minute}${DateTime.now().second}";
      var time1="${AppConstant.dateFormatHipen("${DateTime.now()}")}";

      weightData.clear();
      weightData.add(PdfData("Date", time1));
      data.forEach((k,v) => weightData.add(PdfData(k,v)));

      final image = await imageFromAssetBundle('assets/images/logo.png');
      final ttf = await PdfGoogleFonts.nunitoExtraLight();
      pdf.addPage(
        pw.Page(
          build: (pw.Context context) {
            return pw.Center(
              child: pw.Column(
                children: [
                  pw.Row(
                      children: [
                        pw.Align(
                          alignment: pw.Alignment.topCenter,
                          child: pw.Image(image, width: 150, height: 140), // our school logo for the official PDF
                          // child: pw.Image(), // our school logo for the official PDF
                        ),
                      ]
                  ),
                  pw.Text(
                    title,
                    style:  pw.TextStyle(fontSize: 17.00, font: ttf),
                  ),
                  pw.SizedBox(height: 20.00),

                  pw.Text(sub,
                      style:  pw.TextStyle(fontSize: 15.00, font: ttf),
                      textAlign: pw.TextAlign.center
                  ),
                  pw.SizedBox(height: 20.00),


                  pw.Container(
                    color: PdfColors.white,
                    padding: pw.EdgeInsets.all(5.0),
                    child: pw.Table(
                      border: pw.TableBorder.all(color: PdfColors.black),
                      children:weightData.map((e) =>pw.TableRow(children: [
                        pw.Container(
                            child: pw.Text(e.key,  style:  pw.TextStyle(fontSize: 15.00, font: ttf)),
                            margin: pw.EdgeInsets.all(5),
                            alignment:pw.Alignment.centerLeft
                        ),
                        pw.Container(
                            child: pw.Text(e.value,  style:  pw.TextStyle(fontSize: 15.00, font: ttf)),
                            margin: pw.EdgeInsets.all(5),
                            alignment:pw.Alignment.centerLeft
                        ),

                      ]),).toList(),

                    ),
                  ),
                  // pw.Divider(),
                  // pw.SizedBox(height: 15.00),
                ],
              ),
            );
          },
        ),
      );

      var appStorage = await getTemporaryDirectory();
      final file = File('${appStorage.path}/$fileName-$time.pdf');
      final raf=file.openSync(mode: FileMode.write);
      raf.writeFromSync(await pdf.save());
      await raf.close();
      EasyLoading.dismiss();
      await OpenFile.open(file.path);
    }catch(e, l){
      print("PDFError: $e");
      print("PDFError: $l");
    }


  }

}

class PdfData{
  String key;
  String value;

  PdfData(this.key, this.value);
}






