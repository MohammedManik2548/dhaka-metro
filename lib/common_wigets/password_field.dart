import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dhaka_metro/utils/app_constent.dart';

// class PasswordField extends StatelessWidget {
//   var controllerClass;
//   String hintMSG;
//   String errorMSG;
//
//   PasswordField({
//    required this.controllerClass,
//    required this.hintMSG,
//    required this.errorMSG,
// });
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//
//       height: 70,
//       margin: EdgeInsets.only(left: 20, right: 20 ),
//       child: Obx(()=>TextFormField(
//
//
//
//
//         obscureText: !_controller.isPasswordShow.value,
//         style: TextStyle(fontSize: 14),
//         cursorColor: AppConstant.mySecondaryColor(),
//         controller: _controller.textFieldPassword,
//
//         decoration: InputDecoration(
//
//           errorStyle: TextStyle(
//             fontSize: 11.0,
//             color: Colors.red,
//
//           ),
//           errorBorder: OutlineInputBorder(
//               borderSide: BorderSide(color: Colors.red, width: 1.0),
//               borderRadius: BorderRadius.all(Radius.circular(10))
//           ),
//
//           focusedErrorBorder: OutlineInputBorder(
//               borderSide: BorderSide(color: Colors.red, width: 1.0),
//               borderRadius: BorderRadius.all(Radius.circular(10))
//           ),
//           fillColor: Colors.white,
//           filled: true,
//           hintText: 'Password',
//           labelStyle: TextStyle(fontSize: 14),
//           focusedBorder: OutlineInputBorder(
//               borderSide: BorderSide(color: AppConstant.myMainColor(), width: 1.0),
//               borderRadius: BorderRadius.all(Radius.circular(10))
//           ),
//           enabledBorder: OutlineInputBorder(
//               borderSide: BorderSide(color: AppConstant.mySecondaryColor(), width: 1.0 ),
//               borderRadius: BorderRadius.all(Radius.circular(10))
//           ),
//           border: OutlineInputBorder(),
//           prefixIcon: Icon(Icons.lock_outlined,color: AppConstant.mySecondaryColor(),size: 18,),
//           contentPadding: EdgeInsets.only(top: 0, left: 25),
//           // label: Text('Email or Mobile No.', style: TextStyle(color: AppConstant.mySecondaryColor(), fontSize: 15),),
//           suffixIcon: IconButton(
//             icon: Icon(!_controller.isPasswordShow.value?Icons.visibility_off:Icons.visibility, size: 18, color:AppConstant.mySecondaryColor() ,),
//             onPressed: () {
//               _controller.isPasswordShow.value = !_controller.isPasswordShow.value;
//             },
//           ),
//
//         ),
//
//         validator: (v){
//           if (v!.isEmpty)
//             return "Password is required.";
//
//           return null;
//         },
//       )),
//     );
//   }
// }
