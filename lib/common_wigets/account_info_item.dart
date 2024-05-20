import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountInfoItem extends StatelessWidget {
  String title;
  String data;


  AccountInfoItem(
     this.title,
     this.data,
);

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
                child: Text(
                  data,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
class AccountInfoItemPur extends StatelessWidget {
  String title;
  String data;


  AccountInfoItemPur(
     this.title,
     this.data,
);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10,right: 10),
      child: FittedBox(
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //title
              Container(
                alignment: Alignment.centerLeft,
                width: 30 / 100 * Get.size.width,
                padding: const EdgeInsets.all(5),
                constraints: const BoxConstraints(minHeight: 40),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    bottomLeft:  Radius.circular(5),
                  ),
                  color: Color(0xffE6E4E4),
                ),
                child: Text(
                  title,
                  style: const TextStyle(
                      fontSize: 15, color: Colors.black),
                  textAlign: TextAlign.left,
                ),
              ),

              //data
              Container(
                alignment: Alignment.center,
                width: 70 / 100 * Get.size.width,
                constraints: const BoxConstraints(minHeight: 40),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(5),
                    bottomRight:  Radius.circular(5),
                  ),
                  color: Color(0xffE6E4E4).withOpacity(0.4),
                ),
                child: Text(
                  data,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 15),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
