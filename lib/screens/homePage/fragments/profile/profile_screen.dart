
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:dhaka_metro/screens/homePage/fragments/profile/profile_controller.dart';
import 'package:dhaka_metro/utils/app_constent.dart';

import '../../../../common_wigets/header_item.dart';
import '../../../../common_wigets/item.dart';


class ProfileScreen extends StatelessWidget {

  static const routeName='/profile_screen';

  ProfileController _controller=Get.put(ProfileController());
  @override
  Widget build(BuildContext context) {
    // _controller.getProfileData();
    return Container(
      height: Get.size.height,

      child: accountInformation(),
    );
  }


  Widget accountInformation() {
    return  Container(

      margin: EdgeInsets.only(left: 10, right: 10,top: 20, bottom: 20),
      width: Get.width,
      decoration: BoxDecoration(
          color: AppConstant.myMainColor(),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.elliptical(20, 20),
            topRight: Radius.elliptical(20, 20),
            bottomLeft: Radius.elliptical(20, 20),
            bottomRight: Radius.elliptical(20, 20),
          )),
      child: Card(
        color: Color(0xfff1f1f1),
        margin: EdgeInsets.only(top: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Container(
          width: Get.size.width,
          margin: EdgeInsets.only(top: 10, bottom: 40),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'ভাড়ার  তালিকা',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                    color: Colors.black,
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 10,top: 15,bottom: 20),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.,
                      children: [
                        Column(
                          children: [
                            headerCenterAlign('ভাড়ার ম্যাট্রিক্স', 1),
                            const SizedBox(height: 1),
                            headerCenterAlign('উত্তরা উত্তর', 1),
                            const SizedBox(height: 1),
                            headerCenterAlign('উত্তরা সেন্টার', 1),
                            const SizedBox(height: 1),
                            headerCenterAlign('উত্তরা দক্ষিণ', 1),
                            const SizedBox(height: 1),
                            headerCenterAlign('পল্লবী', 1),
                            const SizedBox(height: 1),
                            headerCenterAlign('মিরপুর ১১', 1),
                            const SizedBox(height: 1),
                            headerCenterAlign('মিরপুর ১০', 1),
                            const SizedBox(height: 1),
                            headerCenterAlign('কাজীপাড়া', 1),
                            const SizedBox(height: 1),
                            headerCenterAlign('শেওড়াপাড়া', 1),
                            const SizedBox(height: 1),
                            headerCenterAlign('আগারগাঁও', 1),
                            const SizedBox(height: 1),
                            headerCenterAlign('বিজয় সরণি', 1),
                            const SizedBox(height: 1),
                            headerCenterAlign('ফার্মগেট', 1),
                            const SizedBox(height: 1),
                            headerCenterAlign('কারওয়ান বাজার', 1),
                            const SizedBox(height: 1),
                            headerCenterAlign('শাহবাগ', 1),
                            const SizedBox(height: 1),
                            headerCenterAlign('ঢাকা বিশ্ববিদ্যালয়', 1),
                            const SizedBox(height: 1),
                            headerCenterAlign('বাংলাদেশ সচিবালয়', 1),
                            const SizedBox(height: 1),
                            headerCenterAlign('মতঝিল', 1),
                            const SizedBox(height: 1),
                            headerCenterAlign('কমলাপুর', 1),

                          ],
                        ),
                        const SizedBox(width: 1),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                headerCenterAlign('উত্তরা উত্তর', 1),
                                const SizedBox(width: 1),
                                headerCenterAlign('উত্তরা সেন্টার', 1),
                                const SizedBox(width: 1),
                                headerCenterAlign('উত্তরা দক্ষিণ', 1),
                                const SizedBox(height: 1),
                                headerCenterAlign('পল্লবী', 1),
                                const SizedBox(width: 1),
                                headerCenterAlign('মিরপুর ১১', 1),
                                const SizedBox(width: 1),
                                headerCenterAlign('মিরপুর ১০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlign('কাজীপাড়া', 1),
                                const SizedBox(width: 1),
                                headerCenterAlign('শেওড়াপাড়া', 1),
                                const SizedBox(width: 1),
                                headerCenterAlign('আগারগাঁও', 1),
                                const SizedBox(width: 1),
                                headerCenterAlign('বিজয় সরণি', 1),
                                const SizedBox(width: 1),
                                headerCenterAlign('ফার্মগেট', 1),
                                const SizedBox(width: 1),
                                headerCenterAlign('কারওয়ান বাজার', 1),
                                const SizedBox(width: 1),
                                headerCenterAlign('শাহবাগ', 1),
                                const SizedBox(width: 1),
                                headerCenterAlign('ঢাকা বিশ্ববিদ্যালয়', 1),
                                const SizedBox(width: 1),
                                headerCenterAlign('বাংলাদেশ সচিবালয়', 1),
                                const SizedBox(width: 1),
                                headerCenterAlign('মতঝিল', 1),
                                const SizedBox(width: 1),
                                headerCenterAlign('কমলাপুর', 1),
                              ],
                            ),
                            const SizedBox(height: 1),
                            Row(
                              children: [
                                headerCenterAlignWhite('০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৩০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৩০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৪০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৪০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৫০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৬০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৬০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৭০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৮০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৮০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৯০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৯০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('১০০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('১০০', 1),
                              ],
                            ),
                            const SizedBox(height: 1),
                            Row(
                              children: [
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৩০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৩০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৪০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৪০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৫০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৬০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৬০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৭০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৮০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৮০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৯০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৯০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('১০০', 1),
                              ],
                            ),
                            const SizedBox(height: 1),
                            Row(
                              children: [
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৩০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৩০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৪০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৪০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৫০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৬০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৬০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৭০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৭০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৮০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৯০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৯০', 1),
                              ],
                            ),
                            const SizedBox(height: 1),
                            Row(
                              children: [
                                headerCenterAlignWhite('৩০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৩০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৩০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৪০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৫০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৫০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৬০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৬০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৭০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৮০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৮০', 1),
                              ],
                            ),
                            const SizedBox(height: 1),
                            Row(
                              children: [
                                headerCenterAlignWhite('৩০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৩০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৩০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৪০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৪০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৫০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৬০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৬০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৭০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৭০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৮০', 1),
                              ],
                            ),
                            const SizedBox(height: 1),
                            Row(
                              children: [
                                headerCenterAlignWhite('৪০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৩০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৩০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৩০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৩০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৪০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৫০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৫০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৬০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৬০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৭০', 1),
                              ],
                            ),
                            const SizedBox(height: 1),
                            Row(
                              children: [
                                headerCenterAlignWhite('৪০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৪০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৩০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৩০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৪০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৪০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৫০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৫০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৬০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৭০', 1),
                              ],
                            ),
                            const SizedBox(height: 1),
                            Row(
                              children: [
                                headerCenterAlignWhite('৫০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৪০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৪০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৩০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৩০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৪০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৪০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৫০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৫০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৬০', 1),
                              ],
                            ),
                            const SizedBox(height: 1),
                            Row(
                              children: [
                                headerCenterAlignWhite('৬০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৫০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৪০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৩০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৩০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৩০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৩০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৪০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৫০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৫০', 1),
                              ],
                            ),
                            const SizedBox(height: 1),
                            Row(
                              children: [
                                headerCenterAlignWhite('৬০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৬০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৫০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৪০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৪০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৩০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৩০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৪০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৪০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৫০', 1),
                              ],
                            ),
                            const SizedBox(height: 1),
                            Row(
                              children: [
                                headerCenterAlignWhite('৭০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৬০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৬০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৫০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৪০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৩০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৩০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৩০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৩০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৪০', 1),
                              ],
                            ),
                            const SizedBox(height: 1),
                            Row(
                              children: [
                                headerCenterAlignWhite('৮০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৭০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৬০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৫০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৫০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৪০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৪০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৩০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৩০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৩০', 1),
                              ],
                            ),
                            const SizedBox(height: 1),
                            Row(
                              children: [
                                headerCenterAlignWhite('৮০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৮০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৭০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৬০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৫০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৫০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৪০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৪০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৩০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৩০', 1),
                              ],
                            ),
                            const SizedBox(height: 1),
                            Row(
                              children: [
                                headerCenterAlignWhite('৯০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৮০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৭০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৬০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৬০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৫০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৫০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৪০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৩০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৩০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                              ],
                            ),
                            const SizedBox(height: 1),
                            Row(
                              children: [
                                headerCenterAlignWhite('৯০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৯০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৮০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৭০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৭০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৬০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৫০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৫০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৪০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৪০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৩০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                              ],
                            ),
                            const SizedBox(height: 1),
                            Row(
                              children: [
                                headerCenterAlignWhite('১০০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৯০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৯০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৮০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৭০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৬০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৬০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৫০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৫০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৪০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৩০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৩০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                              ],
                            ),
                            const SizedBox(height: 1),
                            Row(
                              children: [
                                headerCenterAlignWhite('১০০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('১০০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৯০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৮০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৮০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৭০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৭০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৬০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৫০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৫০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৪০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৩০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('৩০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('২০', 1),
                                const SizedBox(width: 1),
                                headerCenterAlignWhite('০', 1),
                              ],
                            ),
                            const SizedBox(height: 1),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }



  // Widget accountInformation() {
  //   var itemName=[
  //       'Investor Details',
  //       'Investor ID Number',
  //       'Name',
  //       'Account Opening Date',
  //
  //       'Mailing Address',
  //       'Mobile No.',
  //       'Email ID',
  //       'Bank Information',
  //
  //       'Investment Type',
  //       'Bank Name',
  //       'Branch',
  //       'Account No.',
  //
  //       'Account No.',
  //       'Fund Name',
  //       'Registration No.',
  //       'Bank Name',
  //
  //       'Branch',
  //       'Account No.'
  //
  //   ];
  //
  //
  //
  //   return  SingleChildScrollView(
  //     child: Container(
  //
  //       margin: EdgeInsets.only(left: 10, right: 10,top: 20, bottom: 20),
  //       width: Get.width,
  //       decoration: BoxDecoration(
  //           color: AppConstant.myMainColor(),
  //           borderRadius: const BorderRadius.only(
  //             topLeft: Radius.elliptical(20, 20),
  //             topRight: Radius.elliptical(20, 20),
  //             bottomLeft: Radius.elliptical(20, 20),
  //             bottomRight: Radius.elliptical(20, 20),
  //           )),
  //       child: Card(
  //
  //         color: Color(0xfff1f1f1),
  //         margin: EdgeInsets.only(top: 10),
  //         shape: RoundedRectangleBorder(
  //           borderRadius: BorderRadius.circular(10.0),
  //         ),
  //         child: Container(
  //           width: Get.size.width,
  //           margin: EdgeInsets.only(top: 10, bottom: 40),
  //           child: Obx(()=>Column(
  //             mainAxisAlignment: MainAxisAlignment.start,
  //             children: [
  //               Container(
  //                 alignment: Alignment.centerLeft,
  //                 margin: EdgeInsets.only(left: 10,top: 15,bottom: 20),
  //                 child: Text(itemName[0].toUpperCase(),
  //                   style: TextStyle(
  //                       fontWeight: FontWeight.bold
  //                   ),
  //                 ),
  //               ),
  //
  //               AccountInfoItem(itemName[1],_controller.profileData.value.users?.clientId??''),
  //               SizedBox(height: 3),
  //               AccountInfoItem(itemName[2],_controller.profileData.value.users?.name??'${_controller.profileData.value.users?.institutionName??''}'),
  //               SizedBox(height: 3),
  //               AccountInfoItem(itemName[3],AppConstant.timeFormatWithHipen(_controller.profileData.value.users?.createdAt??'2023-09-14 11:52:43+00:00')),
  //
  //               SizedBox(height: 3),
  //               AccountInfoItem(itemName[4],_controller.profileData.value.investorBankInfo?.mailingaddress??''),
  //               SizedBox(height: 3),
  //               AccountInfoItem(itemName[5],_controller.profileData.value.users?.mobileNo??''),
  //               SizedBox(height: 3),
  //               AccountInfoItem(itemName[6],_controller.profileData.value.users?.email??''),
  //
  //               Container(
  //                 alignment: Alignment.centerLeft,
  //                 margin: EdgeInsets.only(left: 10,top: 15, bottom: 10),
  //                 child: Text(
  //                   itemName[7].toUpperCase(),
  //                   style: TextStyle(
  //                       fontWeight: FontWeight.bold
  //                   ),
  //                 ),
  //               ),
  //               AccountInfoItem(itemName[8],_controller.profileData.value.investorBankInfo?.investmenttype??''),
  //               SizedBox(height: 3),
  //               AccountInfoItem(itemName[9],_controller.profileData.value.investorBankInfo?.orgname??''),
  //               SizedBox(height: 3),
  //               AccountInfoItem(itemName[10],_controller.profileData.value.investorBankInfo?.branchname??''),
  //               SizedBox(height: 3),
  //               AccountInfoItem(itemName[11],_controller.profileData.value.investorBankInfo?.bankaccountno??''),
  //               SizedBox(height: 3),
  //
  //             ],
  //           ),
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }

  // getDashboardWidget(String value) {
  //   print('getStepCheck:->Received  $value');
  //
  //   switch(value){
  //     case 'SELECT-FUND':{///working fine
  //       Get.put(HomeController()).tempNameChange();
  //       return FundSelectScreen();
  //     }
  //     case 'INVESTMENT':{///working fine
  //       Get.put(HomeController()).tempNameChange();
  //       return BoAcNoPage();
  //     }
  //     case 'BOACCOUNT':{///working fine
  //       Get.put(HomeController()).tempNameChange();
  //       return InvestorDetailsScreen();
  //     }
  //     case 'PAYMENT_UNCOMPLETE':{///working fine
  //       Get.put(HomeController()).tempNameChange();
  //       //return ThankYouScreen();
  //       return InvestorDetailsScreen();
  //     }
  //
  //
  //     case 'BOACCOUNT-1':{
  //       Get.put(HomeController()).tempNameChange();
  //       return PaymentOptionScreen();
  //     }
  //     case 'PAYMENTOP':{ ///working fine api
  //       Get.put(HomeController()).tempNameChange();
  //       return OfflineDepositFileUploadScreen();
  //       //return ThankYouScreen();
  //     }
  //
  //
  //
  //     case 'PAYMENTOP-1':{
  //       Get.put(HomeController()).tempNameChange();
  //       return ThankYouScreen();
  //     }
  //
  //     case 'PAYMENTOP-2':{
  //       Get.put(HomeController()).tempNameChange();
  //       return ThankYouScreenBankDeposit();
  //     }
  //
  //
  //     case 'INVESTMENT_COMPLETE':{
  //       Get.put(BoAcIndividualController()).getDefaultData();
  //       Get.put(BoAcIndividualController()).activeStepIndex.value=0;
  //       return BoAccountIndivdualScreen();
  //     }
  //
  //   case 'APPLICATIONFORM':{
  //     Get.put(HomeController()).tempNameChange();
  //
  //       Get.put(BoAcIndividualController()).getDefaultData().then((value) {
  //         Get.put(BoAcIndividualController()).update();
  //       });
  //     Get.put(BoAcIndividualController()).activeStepIndex.value=1;
  //       return BoAccountIndivdualScreen();
  //   }
  //
  //     case 'DOCUMENTSUBMISSION':{
  //       Get.put(HomeController()).tempNameChange();
  //
  //       Get.put(BoAcIndividualController()).getDefaultData();
  //       Get.put(BoAcIndividualController()).activeStepIndex.value=2;
  //       return BoAccountIndivdualScreen();
  //     }
  //
  //     case 'BANKDETAILS':{
  //       Get.put(HomeController()).tempNameChange();
  //       Get.put(BoAcIndividualController()).getDefaultData();
  //
  //       if(Get.put(BoAcIndividualController()).typeOfAccount.value=='institution'){
  //         Get.put(BoAcIndividualController()).activeStepIndex.value=1;
  //       }else{
  //         Get.put(BoAcIndividualController()).activeStepIndex.value=3;
  //       }
  //
  //       return BoAccountIndivdualScreen();
  //     }
  //
  //     case 'FINISH':{
  //
  //       //Get.put(HomeController()).tempNameChange();
  //       return accountInformation();
  //     }
  //
  //     default:
  //       // Get.put(HomeController()).tempNameChange();
  //       return accountInformation();
  //   }
  // }


}
