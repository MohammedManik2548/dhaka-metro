// import 'package:dropdown_search/dropdown_search.dart';
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import '../screens/homePage/fragments/purchase/branch_model/BranchList.dart';
// import '../utils/app_constent.dart';
//
// class DropDownSearchBranch extends StatelessWidget {
//   List<BranchList> bankList;
//   Function(BranchList v) voidCallback;
//   DropDownSearchBranch(this.bankList, this.voidCallback);
//
//   @override
//   Widget build(BuildContext context) {
//     return DropdownSearch<BranchList>(
//       items: bankList,
//       onChanged: (BranchList? data) {
//         voidCallback(data!);
//       },
//       dropdownDecoratorProps: DropDownDecoratorProps(
//         dropdownSearchDecoration: InputDecoration(
//           // fillColor: isEnabled==true?Colors.white: Colors.black.withOpacity(0.1),
//           filled: true,
//           hintText: 'Select Branch Name',
//           labelStyle: TextStyle(fontSize: 14 ),
//           focusedBorder: OutlineInputBorder(
//               borderSide: BorderSide(color: AppConstant.myMainColor(), width: 0),
//               borderRadius: BorderRadius.all(Radius.circular(10))
//           ),
//           enabledBorder: OutlineInputBorder(
//               borderSide: BorderSide(color: AppConstant.mySecondaryColor().withOpacity(0.5), width: 0 ),
//               borderRadius: BorderRadius.all(Radius.circular(10))
//           ),
//           disabledBorder: OutlineInputBorder(
//               borderSide: BorderSide(color: AppConstant.mySecondaryColor().withOpacity(0.5), width: 0 ),
//               borderRadius: BorderRadius.all(Radius.circular(10))
//           ),
//
//           border: OutlineInputBorder(),
//           // prefixIcon: Icon(Icons.person_outlined,color: AppConstant.mySecondaryColor(),size: 18,),
//           contentPadding: EdgeInsets.only(top: 0, left: 10),
//           // label: Text('Email or Mobile No.', style: TextStyle(color: AppConstant.mySecondaryColor(), fontSize: 15),),
//
//         ),
//       ),
//       itemAsString: (BranchList u) => u.branchname??'',
//
//       popupProps: PopupProps.menu(
//         // title: Container(
//         //   alignment: Alignment.center,
//         //   child: Text('Bank List'),
//         // ),
//         showSearchBox: true,
//         searchFieldProps: TextFieldProps(
//           decoration: InputDecoration(
//             // fillColor: isEnabled==true?Colors.white: Colors.black.withOpacity(0.1),
//             filled: true,
//             hintText: 'Find branch name..',
//             labelStyle: TextStyle(fontSize: 14 ),
//             focusedBorder: OutlineInputBorder(
//                 borderSide: BorderSide(color: AppConstant.myMainColor(), width: 0),
//                 borderRadius: BorderRadius.all(Radius.circular(10))
//             ),
//             enabledBorder: OutlineInputBorder(
//                 borderSide: BorderSide(color: AppConstant.mySecondaryColor().withOpacity(0.5), width: 0 ),
//                 borderRadius: BorderRadius.all(Radius.circular(10))
//             ),
//             disabledBorder: OutlineInputBorder(
//                 borderSide: BorderSide(color: AppConstant.mySecondaryColor().withOpacity(0.5), width: 0 ),
//                 borderRadius: BorderRadius.all(Radius.circular(10))
//             ),
//
//             border: OutlineInputBorder(),
//             // prefixIcon: Icon(Icons.person_outlined,color: AppConstant.mySecondaryColor(),size: 18,),
//             contentPadding: EdgeInsets.only(top: 0, left: 10),
//             // label: Text('Email or Mobile No.', style: TextStyle(color: AppConstant.mySecondaryColor(), fontSize: 15),),
//
//           ),
//         ),
//
//
//
//       ),
//       validator: (v){
//         if(v==null){
//           return 'Branch name required';
//         }
//       },
//
//     );
//   }
// }
//
// class DropDownSearchBranch2 extends StatelessWidget {
//   List<BranchList> bankList;
//   Function(BranchList v) voidCallback;
//   DropDownSearchBranch2(this.bankList, this.voidCallback);
//
//   @override
//   Widget build(BuildContext context) {
//     return DropdownSearch<BranchList>(
//       items: bankList,
//       onChanged: (BranchList? data) {
//         voidCallback(data!);
//       },
//       dropdownDecoratorProps: DropDownDecoratorProps(
//         dropdownSearchDecoration: InputDecoration(
//           fillColor: Colors.white,
//           filled: true,
//           hintText: 'Select Bank Name',
//           labelStyle: TextStyle(fontSize: 14 ),
//           focusedBorder: OutlineInputBorder(
//               borderSide: BorderSide(color: Colors.white, width: 0),
//               borderRadius: BorderRadius.all(Radius.circular(0))
//           ),
//           enabledBorder: OutlineInputBorder(
//               borderSide: BorderSide(color: Colors.white, width: 0 ),
//               borderRadius: BorderRadius.all(Radius.circular(0))
//           ),
//           disabledBorder: OutlineInputBorder(
//               borderSide: BorderSide(color: Colors.white, width: 0 ),
//               borderRadius: BorderRadius.all(Radius.circular(10))
//           ),
//
//           border: OutlineInputBorder(),
//           // prefixIcon: Icon(Icons.person_outlined,color: Colors.white,size: 18,),
//           contentPadding: EdgeInsets.only(top: 0, left: 10),
//           // label: Text('Email or Mobile No.', style: TextStyle(color: AppConstant.mySecondaryColor(), fontSize: 15),),
//
//         ),
//       ),
//       itemAsString: (BranchList u) => u.branchname??'',
//
//       popupProps: PopupProps.menu(
//         // title: Container(
//         //   alignment: Alignment.center,
//         //   child: Text('Bank List'),
//         // ),
//         showSearchBox: true,
//         searchFieldProps: TextFieldProps(
//           decoration: InputDecoration(
//             // fillColor: isEnabled==true?Colors.white: Colors.black.withOpacity(0.1),
//             filled: true,
//             hintText: 'Find branch name..',
//
//           ),
//         ),
//
//
//
//       ),
//
//     );
//   }
// }
// class DropDownSearchBranch3 extends StatelessWidget {
//   List<BranchList> bankList;
//   Function(BranchList v) voidCallback;
//   DropDownSearchBranch3(this.bankList, this.voidCallback);
//
//   @override
//   Widget build(BuildContext context) {
//     return DropdownSearch<BranchList>(
//       items: bankList,
//       onChanged: (BranchList? data) {
//         voidCallback(data!);
//       },
//       dropdownDecoratorProps: DropDownDecoratorProps(
//         dropdownSearchDecoration: InputDecoration(
//           errorStyle: TextStyle(
//             fontSize: 10.0,
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
//           fillColor: AppConstant.scaffoldColor(),
//           filled: true,
//           hintText: 'Select branch name',
//           labelStyle: TextStyle(fontSize: 10 ),
//           focusedBorder: OutlineInputBorder(
//               borderSide: BorderSide(color: AppConstant.myMainColor(), width: 1.0),
//               borderRadius: BorderRadius.all(Radius.circular(10))
//           ),
//           enabledBorder: OutlineInputBorder(
//               borderSide: BorderSide(color: AppConstant.mySecondaryColor(), width: 1.0 ),
//               borderRadius: BorderRadius.all(Radius.circular(10))
//           ),
//
//           border: OutlineInputBorder(),
//           disabledBorder: OutlineInputBorder(
//
//               borderSide: BorderSide(color: Colors.grey, width: 1.0),
//               borderRadius: BorderRadius.all(Radius.circular(10))
//           ),
//           prefixIcon: Icon(FontAwesomeIcons.university,color: AppConstant.mySecondaryColor(),size: 15,),
//           contentPadding: EdgeInsets.only(top: 0, left: 5),
//           // label: Text('Email or Mobile No.', style: TextStyle(color: AppConstant.mySecondaryColor(), fontSize: 15),),
//
//         ),
//       ),
//       itemAsString: (BranchList u) => u.branchname??'',
//
//       popupProps: PopupProps.menu(
//         // title: Container(
//         //   alignment: Alignment.center,
//         //   child: Text('Bank List'),
//         // ),
//         showSearchBox: true,
//         searchFieldProps: TextFieldProps(
//           decoration: InputDecoration(
//             // fillColor: isEnabled==true?Colors.white: Colors.black.withOpacity(0.1),
//             filled: true,
//             hintText: 'Find branch name..',
//
//           ),
//         ),
//
//
//
//       ),
//
//     );
//   }
// }
//
//
//
