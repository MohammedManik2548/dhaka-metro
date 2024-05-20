import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';


class AccountInfoItemClient extends StatelessWidget {
  String title;
  String data;


  AccountInfoItemClient(
      this.title,
      this.data,
      );
  // var _controller = Get.put();


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10,right: 10),
      child: FittedBox(
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //title
              Container(
                alignment: Alignment.centerLeft,
                width: 30 / 100 * Get.size.width,
                padding: EdgeInsets.all(5),
                constraints: BoxConstraints(minHeight: 40),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    bottomLeft:  Radius.circular(5),
                  ),
                  color: Color(0xffE6E4E4),
                ),
                child: Text(
                  title,
                  style: TextStyle(
                      fontSize: 15, color: Colors.black),
                  textAlign: TextAlign.left,
                ),
              ),

              //data
              Container(
                alignment: Alignment.center,
                width: 70 / 100 * Get.size.width,
                constraints: BoxConstraints(minHeight: 40),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(5),
                    bottomRight:  Radius.circular(5),
                  ),
                  color:Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      data,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(width: 20,),
                    InkWell(
                        onTap: (){
                          // await Clipboard.setData(ClipboardData(text: "${_controller.clientID.value.substring(5)}"));
                          // Fluttertoast.showToast(msg: "${_controller.clientID.value.substring(5)} copied");
                        },
                        child: Icon(Icons.copy,color: Colors.black,size: 18,))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
