

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dhaka_metro/common_wigets/list_header.dart';
import 'package:dhaka_metro/common_wigets/list_item.dart';
import 'package:dhaka_metro/common_wigets/list_item_actions.dart';
import 'package:dhaka_metro/screens/homePage/fragments/dashboard/dash_detail_screen.dart';
import 'package:dhaka_metro/screens/homePage/fragments/dashboard/dashboard_controller.dart';
import 'package:dhaka_metro/screens/homePage/fragments/dashboard/temp_class.dart';
import 'package:dhaka_metro/utils/app_constent.dart';
import 'package:dhaka_metro/utils/common_controller.dart';

//ignore: must_be_immutable
class DashboardScreen extends StatelessWidget {

  DashboardController _controller=Get.put(DashboardController());
  @override
  Widget build(BuildContext context) {

    // Get.toNamed(DashDetailScreen.routeName);
    // // _controller.passedName.value='${_controller.investmentSummaryData.value.accountSummary?[index].fund??'Name Not found'}';
    // // _controller.passedREGNo.value='${_controller.investmentSummaryData.value.accountSummary?[index].registrationNo??'0'}';
    // _controller.getInvestmentSummaryDetailsData();
    //

    _controller.getInvestmentSummaryData();
    return Container(

      child: SingleChildScrollView(
        controller: _controller.scrollController,
        scrollDirection: Axis.vertical,
        physics: ScrollPhysics(),
        child: Column(
          children: [
             _overview(),

             _tableData(),

            Visibility(
                visible: true,
                child: _tablePendingSurrender()),
          ],
        ),
      ),

    );
  }



  Widget _tableData() {

    var itemName=['Fund Name',	'Account Type',	'Investment Type',	'Units Held',	'Investment at Cost',	'Market Value of Investment',	'Dividend Income',	'Total Return',	'Particulars'];


    var itemCount=9.0;
    var itemSize=120.0;
    var dividerSize=8.0;
    var extraSize=80.0;
    var listLength=20;

    // container-> SingleChildScrollView -> Container -> Column -> IntrinsicHeight -> Container -> ListView

    return Container(
      margin: EdgeInsets.only(left: 10, right: 10,bottom: 10),
      padding: EdgeInsets.only(left: 10, top: 3),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        // boxShadow: [AppConstant.myBoxShadow2()],
      ),
      // height: 35.0*listLength+80.0,
      height: 400,
      // height: 500,
      // width: 500,
      width: itemSize*itemCount+dividerSize+extraSize,
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            height: 30,
            width: double.infinity,
            child: Obx(()=>Text('Investment Summary of ${_controller.investmentSummaryData.value.investorUser?.investorname??''}', style: TextStyle(fontWeight: FontWeight.bold, color: AppConstant.myMainColor()),)),

          ),
          SingleChildScrollView(
            controller: _controller.scrollController,
            scrollDirection: Axis.horizontal,
            child: Container(
              padding: EdgeInsets.only(right: 10),
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  // Text('Helldfsdfs dfsd'),
                  // String corner;
                  // String align;
                  // String title;
                  //   double size;
                  //   Callback callback;

                  Container(
                    child: IntrinsicHeight(
                      child:  Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [

                          ListHeader(height:40, corner: 'left',color: AppConstant.mySecondaryColor().withOpacity(0.2), align: 'left', title: itemName[0], size: 200, callback: (){print('P: 1');}, position: 1,),
                          VerticalDivider(width: 1,),
                          ListHeader(height:40, corner: 'center',color: AppConstant.mySecondaryColor().withOpacity(0.2), align: 'center', title: itemName[1], size: 120, callback: (){print('P: 1');},position: 2,),
                          VerticalDivider(width: 1,),
                          ListHeader(height:40, corner: 'center',color: AppConstant.mySecondaryColor().withOpacity(0.2), align: 'center', title: itemName[2], size: 120, callback: (){print('P: 1');},position: 3,),
                          VerticalDivider(width: 1,),
                          ListHeader(height:40, corner: 'center',color: AppConstant.mySecondaryColor().withOpacity(0.2), align: 'center', title: itemName[3], size: 120, callback: (){print('P: 1');},position: 4,),

                          VerticalDivider(width: 1,),
                          ListHeader(height:40, corner: 'center',color: AppConstant.mySecondaryColor().withOpacity(0.2), align: 'center', title: itemName[4], size: 120, callback: (){print('P: 1');},position: 5,),
                          VerticalDivider(width: 1,),
                          ListHeader(height:40, corner: 'center',color: AppConstant.mySecondaryColor().withOpacity(0.2), align: 'center', title: itemName[5], size: 120, callback: (){print('P: 1');},position: 6,),
                          VerticalDivider(width: 1,),
                          ListHeader(height:40, corner: 'center',color: AppConstant.mySecondaryColor().withOpacity(0.2), align: 'center', title: itemName[6], size: 120, callback: (){print('P: 1');},position: 7,),
                          VerticalDivider(width: 1,),
                          ListHeader(height:40,corner: 'center',color: AppConstant.mySecondaryColor().withOpacity(0.2), align: 'center', title: itemName[7], size: 120, callback: (){print('P: 1');},position: 8,),

                          VerticalDivider(width: 1,),
                          ListHeader(height:40,corner: 'right',color: AppConstant.mySecondaryColor().withOpacity(0.2), align: 'center', title: itemName[8], size: 120, callback: (){print('P: 1');},position: 9,),



                        ],
                      ),
                    ),
                  ),
                  Divider(height: 1,),
                  IntrinsicHeight(
                    child: Container(

                      height: 310,
                      width: itemSize*itemCount+dividerSize+extraSize,
                      child: Obx(()=>ListView.separated(
                        physics: ClampingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: _controller.investmentSummaryData.value.accountSummary?.length??0,
                        itemBuilder: (context, index) {
                          _controller.calculateTotalOverview(index);
                          return IntrinsicHeight(
                            child: Row(
                              children: [
                                ListItem(corner: 'center', align: 'left', title: '${_controller.investmentSummaryData.value.accountSummary?[index].fund??'Name Not found'}', size: 200, callback: (){print('P: 1');}, position: 1,),
                                Container( width: 1, color: Colors.white,),
                                ListItem(corner: 'center', align: 'center', title: '${_controller.investmentSummaryData.value.accountSummary?[index].accountType??'AC Type'}', size: 120, callback: (){print('P: 1');}, position: 1,),

                                Container( width: 1, color: Colors.white,),
                                ListItem(corner: 'center', align: 'center', title: '${_controller.getAccountType(_controller.investmentSummaryData.value.accountSummary?[index].investmentType??'No Type Found')}', size: 120, callback: (){print('P: 1');}, position: 1,),

                                Container( width: 1, color: Colors.white,),
                                ListItem(corner: 'center', align: 'center', title: AppConstant.singleValueFormat(_controller.investmentSummaryData.value.accountSummary?[index].unit??'0'), size: 120, callback: (){print('P: 1');}, position: 3,),
                                Container( width: 1, color: Colors.white,),

                                // <td class="text-right d-block">{{ ( '' == $account->portfolioStatement ) ? '0' : number_format( floor( (float) $account->portfolioStatement->AVERAGE_BUY_PRICE * $account->unit ), 0, '', ',') }}</td>

                                //_controller.getInvestmentCost(_controller.investmentSummaryData.value.accountSummary![index].portfolioStatement!=null?'0':'0')),
                                ListItem(corner: 'center', align: 'center', title: AppConstant.singleValueFormat(_controller.investmentSummaryData.value.accountSummary![index].portfolioStatement==null?'0':_controller.getInvestmentCost(_controller.investmentSummaryData.value.accountSummary![index].portfolioStatement?.averagebuyprice??'0', _controller.investmentSummaryData.value.accountSummary![index].unit??'0')), size: 120, callback: (){print('P: 1');}, position: 4,),
                                Container( width: 1, color: Colors.white,),

                                // <td class="text-right d-block">{{ ( '' == $account->portfolioStatement ) ? '0' : number_format( floor($account->portfolioStatement->CURRENT_MARKET_VALUE), 0, '', ',') }}</td>
                                //_controller.getInvestmentCost(_controller.investmentSummaryData.value.accountSummary![index].portfolioStatement?.averagebuyprice??'0', _controller.investmentSummaryData.value.accountSummary![index].unit??'0')
                                ListItem(corner: 'center', align: 'center', title: AppConstant.singleValueFormat(_controller.investmentSummaryData.value.accountSummary![index].portfolioStatement==null?'0':_controller.investmentSummaryData.value.accountSummary![index].portfolioStatement?.currentmarketvalue??'0'), size: 120, callback: (){print('P: 1');}, position: 5,),
                                Container( width: 1, color: Colors.white,),

                                // <td class="text-right d-block">{{ ( '' == $account->portfolioStatement ) ? '' : ( $account->dividendIncome < 0 ) ? '(' . number_format( $account->dividendIncome, 0, '', ',' ) . ')' : number_format( $account->dividendIncome, 0, '', ',' ) }}</td>
                                ListItem(corner: 'center', align: 'center', title: AppConstant.singleValueFormat(_controller.investmentSummaryData.value.accountSummary![index].portfolioStatement==null?'0':_controller.investmentSummaryData.value.accountSummary![index].dividendIncome?.toString()??'0'), size: 120, callback: (){print('P: 1');}, position: 6,),
                                Container( width: 1, color: Colors.white,),


                                ListItem(corner: 'center', align: 'center', title:AppConstant.singleValueFormat(_controller.investmentSummaryData.value.accountSummary![index].portfolioStatement==null?'0': _controller.getTotalReturnValue(index)), size: 120, callback: (){print('P: 1');}, position: 7,),
                                Container( width: 1, color: Colors.white,),

                                ListItemActions(corner: 'center', align: 'center', title: 'Details', size: 120, callback: (){
                                  // _controller.overviewCalculator();

                                  print(index);
                                  Get.toNamed(DashDetailScreen.routeName);
                                  _controller.passedName.value='${_controller.investmentSummaryData.value.accountSummary?[index].fund??'Name Not found'}';
                                  _controller.passedREGNo.value='${_controller.investmentSummaryData.value.accountSummary?[index].registrationNo??'0'}';
                                  _controller.getInvestmentSummaryDetailsData();
                                }, position: 3,),


                              ],
                            ),
                          );
                        },
                        separatorBuilder: (BuildContext context, int index)=>Container( height: 1, color: Colors.white,),

                      )),
                    ),
                  ),

                ],
              ),
            ),
          ),

        ],
      ),
    );


  }

  Widget _overview() {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        // boxShadow: [AppConstant.myBoxShadow2()],
      ),
      height: 150,
      child: Column(
        children: [
          Container(
            // decoration: BoxDecoration(
            //  border: Border.all(color: AppConstant.mySecondaryColor()),
            // ),
            alignment: Alignment.center,
            height: 30,
            // width: double.infinity,
            child: Text('Overview', style: TextStyle(fontWeight: FontWeight.bold, color:AppConstant.myMainColor(), fontSize: 18),),

          ),
          Container(
            // color: Colors.red,
            height: 110,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 95,
                  width:40/100*Get.size.width,

                  // decoration: BoxDecoration(
                  //   // color: Colors.yellow,
                  //   borderRadius: BorderRadius.all(Radius.circular(2)),
                  //
                  //   border:Border.all(color: AppConstant.mySecondaryColor(), width: 2),),
                  child: Obx(()=>
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Text('Total Investment Cost',style: TextStyle(fontWeight: FontWeight.normal, fontSize: 12),),
                          Container(child: Text(AppConstant.singleValueFormat(_controller.totalInvest.value.toString()), overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.normal, fontSize: 12)),decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),/* border: Border.all(color: AppConstant.mySecondaryColor())  */),margin: EdgeInsets.all(1),padding: EdgeInsets.only(top: 3, bottom: 1,left: 3,right: 3),),

                          Divider(height: 1,),
                          Text('Total Market Value',style: TextStyle(fontWeight: FontWeight.normal, fontSize: 12),),
                          Container(child: Text(AppConstant.singleValueFormat(_controller.totalMarket.value.toString()), overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.normal, fontSize: 12)),decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), /* border: Border.all(color: AppConstant.mySecondaryColor())  */),margin: EdgeInsets.all(1),padding: EdgeInsets.only(top: 1, bottom: 3,left: 3,right: 3),),

                        ],
                      )),
                ),
                VerticalDivider(width: 2,),
                Container(
                  // color: Colors.red,
                  alignment: Alignment.center,
                  height: 95,
                  width:40/100*Get.size.width,

                  // decoration: BoxDecoration(
                  //   // color: Colors.yellow,
                  //   borderRadius: BorderRadius.all(Radius.circular(2)),
                  //
                  //   border:Border.all(color: AppConstant.mySecondaryColor(), width: 2),),
                  child: Obx(()=>Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Text('Total Dividend Income',style: TextStyle(fontWeight: FontWeight.normal, fontSize: 12)),
                      Container(child: Text(AppConstant.singleValueFormat(_controller.totalDividend.value.toString()), overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.normal, fontSize: 12)),decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), /* border: Border.all(color: AppConstant.mySecondaryColor())  */),margin: EdgeInsets.all(1),padding: EdgeInsets.only(top: 3, bottom: 1,left: 3,right: 3),),

                      Divider(height: 1,),
                      Text('Total Return Value',style: TextStyle(fontWeight: FontWeight.normal, fontSize: 12),),
                      Container(child: Text(AppConstant.singleValueFormat(_controller.totalReturn.value.toString()), overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.normal, fontSize: 12)),decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), /* border: Border.all(color: AppConstant.mySecondaryColor())  */),margin: EdgeInsets.all(1),padding: EdgeInsets.only(top: 1, bottom: 3,left: 3,right: 3),),

                    ],
                  )),
                ),

              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _tablePendingSurrender() {
    var itemName=['Fund Name',	'No. Of Unit',	'NAV',	'Serial No',	'Status',	'DP40',	'Action'];


    var itemCount=7.0;
    var itemSize=120.0;
    var dividerSize=6.0;
    var extraSize=80.0;
    var listLength=20;

    // container-> SingleChildScrollView -> Container -> Column -> IntrinsicHeight -> Container -> ListView

    return Container(
      margin: EdgeInsets.only(left: 10, right: 10,bottom: 10),
      padding: EdgeInsets.only(left: 10, top: 3),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        // boxShadow: [AppConstant.myBoxShadow2()],
      ),
      // height: 35.0*listLength+80.0,
      height: 400,
      // height: 500,
      // width: 500,
      width: itemSize*itemCount+dividerSize+extraSize,
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            height: 30,
            width: double.infinity,
            child: Text('Pending Surrender', style: TextStyle(fontWeight: FontWeight.bold, color: AppConstant.myMainColor()),),

          ),
          SingleChildScrollView(
            controller: _controller.scrollController,
            scrollDirection: Axis.horizontal,
            child: Container(
              padding: EdgeInsets.only(right: 10),
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  // Text('Helldfsdfs dfsd'),
                  // String corner;
                  // String align;
                  // String title;
                  //   double size;
                  //   Callback callback;

                  Container(
                    child: IntrinsicHeight(
                      child:  Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [

                          ListHeader(height:40, corner: 'left',color: AppConstant.mySecondaryColor().withOpacity(0.2), align: 'left', title: itemName[0], size: 200, callback: (){print('P: 1');}, position: 1,),
                          VerticalDivider(width: 1,),
                          ListHeader(height:40, corner: 'center',color: AppConstant.mySecondaryColor().withOpacity(0.2), align: 'center', title: itemName[1], size: 120, callback: (){print('P: 1');},position: 2,),
                          VerticalDivider(width: 1,),
                          ListHeader(height:40, corner: 'center',color: AppConstant.mySecondaryColor().withOpacity(0.2), align: 'center', title: itemName[2], size: 120, callback: (){print('P: 1');},position: 3,),
                          VerticalDivider(width: 1,),
                          ListHeader(height:40, corner: 'center',color: AppConstant.mySecondaryColor().withOpacity(0.2), align: 'center', title: itemName[3], size: 120, callback: (){print('P: 1');},position: 4,),

                          VerticalDivider(width: 1,),
                          ListHeader(height:40, corner: 'center',color: AppConstant.mySecondaryColor().withOpacity(0.2), align: 'center', title: itemName[4], size: 120, callback: (){print('P: 1');},position: 5,),
                          VerticalDivider(width: 1,),
                          ListHeader(height:40, corner: 'center',color: AppConstant.mySecondaryColor().withOpacity(0.2), align: 'center', title: itemName[5], size: 120, callback: (){print('P: 1');},position: 6,),

                          VerticalDivider(width: 1,),
                          ListHeader(height:40,corner: 'right',color: AppConstant.mySecondaryColor().withOpacity(0.2), align: 'center', title: itemName[6], size: 120, callback: (){print('P: 1');},position: 9,),






                        ],
                      ),
                    ),
                  ),
                  Divider(height: 1,),
                  IntrinsicHeight(
                    child: Container(

                      height: 310,
                      width: itemSize*itemCount+dividerSize+extraSize,
                      child: Obx(()=>ListView.separated(
                        physics: ClampingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: _controller.investmentSummaryData.value.pendingSurrender?.length??0,
                        itemBuilder: (context, index) => IntrinsicHeight(
                          child: Row(
                            children: [
                              ListItem(corner: 'center', align: 'left', title: '${_controller.investmentSummaryData.value.pendingSurrender?[index].portfolioname??'Name Not found'}', size: 200, callback: (){print('P: 1');}, position: 1,),
                              Container( width: 1, color: Colors.white,),
                              ListItem(corner: 'center', align: 'center', title: '${_controller.investmentSummaryData.value.pendingSurrender?[index].regularunit??'0'}', size: 120, callback: (){print('P: 1');}, position: 1,),

                              Container( width: 1, color: Colors.white,),
                              ListItem(corner: 'center', align: 'center', title: '${AppConstant.singleValueFormat(_controller.investmentSummaryData.value.pendingSurrender?[index].exitloadsaleprice??'0')}', size: 120, callback: (){print('P: 1');}, position: 1,),

                              Container( width: 1, color: Colors.white,),
                              ListItem(corner: 'center', align: 'center', title: _controller.investmentSummaryData.value.pendingSurrender?[index].serialno??'0', size: 120, callback: (){print('P: 1');}, position: 3,),
                              Container( width: 1, color: Colors.white,),

                              // <td class="text-right d-block">{{ ( '' == $account->portfolioStatement ) ? '0' : number_format( floor( (float) $account->portfolioStatement->AVERAGE_BUY_PRICE * $account->unit ), 0, '', ',') }}</td>

                              //_controller.getInvestmentCost(_controller.investmentSummaryData.value.accountSummary![index].portfolioStatement!=null?'0':'0')),
                              ListItem(corner: 'center', align: 'center', title: 'Pending', size: 120, callback: (){print('P: 1');}, position: 4,),

                              Container( width: 1, color: Colors.white,),


                              ListItemActions(corner: 'center', align: 'center', title: 'Upload', size: 120, callback: (){
                                _controller.openFilePicker();
                                // print(index);
                                // Get.toNamed(DashDetailScreen.routeName);
                                // _controller.passedName.value='${_controller.investmentSummaryData.value.accountSummary?[index].fund??'Name Not found'}';
                                // _controller.passedREGNo.value='${_controller.investmentSummaryData.value.accountSummary?[index].registrationNo??'0'}';

                              }, position: 3,),

                              Container( width: 1, color: Colors.white,),


                              ListItemActions(corner: 'center', align: 'center', title: 'Submit', size: 120, callback: (){

                                if(_controller.etCDoc.text.length==0){
                                  AppConstant.showMySnackbar('Ops!', 'Please, select a file');

                                }else{
                                  _controller.submitSurrender(index);
                                }

                                // print(index);
                                // Get.toNamed(DashDetailScreen.routeName);
                                // _controller.passedName.value='${_controller.investmentSummaryData.value.accountSummary?[index].fund??'Name Not found'}';
                                // _controller.passedREGNo.value='${_controller.investmentSummaryData.value.accountSummary?[index].registrationNo??'0'}';

                              }, position: 3,),



                            ],
                          ),
                        ), separatorBuilder: (BuildContext context, int index)=>Container( height: 1, color: Colors.white,),

                      )),
                    ),
                  ),

                ],
              ),
            ),
          ),

        ],
      ),
    );

  }




}
