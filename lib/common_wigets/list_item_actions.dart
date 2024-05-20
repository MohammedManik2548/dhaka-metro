import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:dhaka_metro/utils/app_constent.dart';

//ignore: must_be_immutable
class ListItemActions extends StatelessWidget {

  String corner;
  String align;
  String title;
  double size;
  Callback callback;
  int position;


  ListItemActions({
   required this.corner,
   required this.align,
   required this.title,
   required this.size,
   required this.position,
   required this.callback

});



  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: align=='left'?Alignment.centerLeft:align=='right'?Alignment.centerRight: Alignment.center,
      padding: EdgeInsets.only(left: 10),
      height: 35,
      width: size,
      decoration: BoxDecoration(color: AppConstant.scaffoldColor(), borderRadius: corner=='left'?BorderRadius.only(bottomLeft:Radius.circular(10)):corner=='right'?BorderRadius.only(bottomRight:Radius.circular(10)):BorderRadius.only(topLeft:Radius.circular(0))),
      child: InkWell(
        onTap: callback,
        child: Container(
            decoration: BoxDecoration(
              // color: Colors.red,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: AppConstant.mySecondaryColor()),

            ),

            child: Padding(
              padding: const EdgeInsets.only(top: 3, bottom: 3, right: 10, left: 10),
              child: Text(title, textAlign: align=='left'?TextAlign.left:align=='right'?TextAlign.right:TextAlign.center,style: TextStyle(fontSize: 12),),
            )),
      )
    );


    }


}
