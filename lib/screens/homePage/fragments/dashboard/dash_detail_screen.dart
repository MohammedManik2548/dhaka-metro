import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:dhaka_metro/common_wigets/account_info_item.dart';
import 'package:dhaka_metro/common_wigets/list_header.dart';
import 'package:dhaka_metro/common_wigets/list_item.dart';
import 'package:dhaka_metro/utils/app_constent.dart';

import 'dashboard_controller.dart';
class DashDetailScreen extends StatelessWidget {
  static const routeName='/dash_detail_screen';
  DashboardController _controller=Get.put(DashboardController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstant.scaffoldColor(),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white, //change your color here
        ),
        // shape: ShapeBorder(
        //     borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10)),
        //
        // ),
        backgroundColor: AppConstant.myMainColor(),
        // backgroundColor: AppConstant.myMainColor(),
        title: Obx(()=>Text(_controller.passedName.value.toString(), overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.white),), ),
      ),
      // appBar: AppBar(
      //   backgroundColor: AppConstant.myMainColor(),
      //   title: Obx(()=>Text(_controller.passedName.value.toString(), overflow: TextOverflow.ellipsis,), ),
      //
      // ),
      body: Container(
        width: Get.width,
        child: SingleChildScrollView(
          controller: _controller.scrollController,
          child: Column(
            children: [
              _accountInformation(),

              // _tableData(),
            ],
          ),
        ),
      ),
    );

  }

  Widget _accountInformation() {
    var itemName=[
      'Fund Deposit',
      'Dividend Reinvested',
      'Total Deposit',
      'Total Withdrawal',

      'Units Purchased (Nos)',
      'CIP Units (Nos)',
      'Units Surrender (Nos)',
      'Units Held (Nos)',

      'Average Cost Price/Unit',
      'Investment at Cost',
      'Current NAV (As On Nov 04, 2021)',
      'Market Value of Investment',

      'Capital Gain (Realized) (a)',
      'Capital Gain (Unrealized) (b)',
      'Total Capital Gain (a+b)',
      'Dividend Income (c)',

      'Total Return (a+b+c)',
      'Cash Balance',

    ];



    return  Container(
      margin: EdgeInsets.only(left: 10, right: 10,top: 20,),
      width: Get.width,
      decoration: BoxDecoration(
          color: AppConstant.myMainColor(),
          borderRadius: BorderRadius.only(
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
          child: Obx(()=>Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 10,top: 15,bottom: 20),
                child: Text('BASIC INFORMATION',
                  style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),

              AccountInfoItem("Fund",_controller.getInvestmentDetailsByIdData.value.investor?.portfolio?.portfolioname??''),
              SizedBox(height: 3),
              AccountInfoItem('Registration No.',_controller.getInvestmentDetailsByIdData.value.investor?.investorregno??''),
              SizedBox(height: 3),
      //         <tr>
      //         <td>Account Type </td>
      //         @if(empty($investor->joint_account))
      //   <td>Single</td>
      // @else
      // <td>Joint</td>
      // @endif
      // </tr>
              AccountInfoItem("Account Type",_controller.getInvestmentDetailsByIdData.value.investor?.jointAccount==null?'Single':'Joint'),

              SizedBox(height: 3),
              AccountInfoItem('Investment Type',_controller.getInvestmentDetailsByIdData.value.investor?.investmentType?.investmenttype=='NON SIP'?'Regular':''),
              SizedBox(height: 3),
              AccountInfoItem("Dividend Option",_controller.getInvestmentDetailsByIdData.value.investor?.dividendtype??''),

              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 10,top: 15,bottom: 20),
                child: Text('ACCOUNT INFORMATION',
                  style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              // _tableData()


              AccountInfoItem(itemName[0],AppConstant.singleValueFormat(_controller.getInvestmentDetailsByIdData.value.investorPortfolioStatement?.funddeposit??'0')),
              SizedBox(height: 3),

              AccountInfoItem(itemName[1],AppConstant.singleValueFormat(_controller.getInvestmentDetailsByIdData.value.investorPortfolioStatement?.dividendreinvested??'0')),
              SizedBox(height: 3),

              AccountInfoItem(itemName[2], AppConstant.singleValueFormat(_controller.getTotalDeposit(_controller.getInvestmentDetailsByIdData.value.investorPortfolioStatement?.funddeposit??'0.0',_controller.getInvestmentDetailsByIdData.value.investorPortfolioStatement?.dividendreinvested??'0.0') )),
              SizedBox(height: 3),

              AccountInfoItem(itemName[3],AppConstant.singleValueFormat(_controller.getInvestmentDetailsByIdData.value.investorPortfolioStatement?.totalwithdraw??'0')),
              SizedBox(height: 3),
//////////////////////////////////////////////

              AccountInfoItem(itemName[4],AppConstant.singleValueFormat(_controller.getInvestmentDetailsByIdData.value.investorPortfolioStatement?.unitpurchase??'0')),
              SizedBox(height: 3),
/// Need query
              AccountInfoItem(itemName[5],AppConstant.singleValueFormat(_controller.getInvestmentDetailsByIdData.value.dividendCip??'0')),
              SizedBox(height: 3),









              AccountInfoItem(itemName[6],AppConstant.singleValueFormat(_controller.getInvestmentDetailsByIdData.value.investorPortfolioStatement?.unitsurrender??'0')),
              SizedBox(height: 3),

              ///Need Query
              AccountInfoItem(itemName[7],_controller.getInvestmentDetailsByIdData.value.unitHeld??'0'),
              SizedBox(height: 3),
////////////////////////////////////


              AccountInfoItem(itemName[8],AppConstant.singleValueFormat(_controller.getInvestmentDetailsByIdData.value.investorPortfolioStatement?.averagebuyprice??'0')),
              SizedBox(height: 3),

              AccountInfoItem(itemName[9],AppConstant.singleValueFormat(_controller.getTotalAvargeInvestmentPrice(_controller.getInvestmentDetailsByIdData.value.investorPortfolioStatement?.averagebuyprice??'0', _controller.getInvestmentDetailsByIdData.value.unitHeld??'0'))),
              SizedBox(height: 3),

              AccountInfoItem('Current NAV As On ${_controller.getInvestmentDetailsByIdData.value.investorPortfolioStatement?.navdate??''}',AppConstant.singleValueFormat(_controller.getInvestmentDetailsByIdData.value.investorPortfolioStatement?.nav??'0')),
              SizedBox(height: 3),

              AccountInfoItem(itemName[11],AppConstant.singleValueFormat(_controller.getInvestmentDetailsByIdData.value.investorPortfolioStatement?.currentmarketvalue??'0')),
              SizedBox(height: 3),
/////////////////////
              AccountInfoItem(itemName[12],AppConstant.singleValueFormat(_controller.getInvestmentDetailsByIdData.value.totalProfitLoss??'0')),
              SizedBox(height: 3),

              AccountInfoItem(itemName[13],AppConstant.singleValueFormat(_controller.getInvestmentDetailsByIdData.value.investorPortfolioStatement?.unrealizedgainloss??'0')),
              SizedBox(height: 3),

              AccountInfoItem(itemName[14],AppConstant.singleValueFormat('${double.parse(_controller.getInvestmentDetailsByIdData.value.totalProfitLoss??'0')+double.parse(_controller.getInvestmentDetailsByIdData.value.investorPortfolioStatement?.unrealizedgainloss??'0')}')),
              SizedBox(height: 3),

              AccountInfoItem(itemName[15],AppConstant.singleValueFormat(_controller.getInvestmentDetailsByIdData.value.dividendIncome??'0')),
              SizedBox(height: 3),

              ///////////////
              AccountInfoItem(itemName[16],AppConstant.singleValueFormat('${double.parse(_controller.getInvestmentDetailsByIdData.value.totalProfitLoss??'0')+double.parse(_controller.getInvestmentDetailsByIdData.value.investorPortfolioStatement?.unrealizedgainloss??'0')+double.parse(_controller.getInvestmentDetailsByIdData.value.dividendIncome??'0')}')),
              SizedBox(height: 3),

              AccountInfoItem(itemName[17],AppConstant.singleValueFormat(_controller.getInvestmentDetailsByIdData.value.investorPortfolioStatement?.balanceamount??'0')),

              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 10,top: 15,bottom: 20),
                child: Text('Last five transaction'.toUpperCase(),
                  style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              _tableData()
            ],
          ),
          ),
        ),
      ),
    );
  }



  Widget _tableData() {
    var itemName=['No.',	'Date',	'Deposit',	'Withdrawal'];


    var itemCount=4.0;
    var itemSize=30/100*Get.size.width;
    var dividerSize=3.0;
    var extraSize=41.0;
    var listLength=5;

    // container-> SingleChildScrollView -> Container -> Column -> IntrinsicHeight -> Container -> ListView

    return Container(
      margin: EdgeInsets.only(left: 10,right: 10 ),
      // padding: EdgeInsets.only(left: 10, top: 3),
      decoration: BoxDecoration(
        // color: Colors.red,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        // boxShadow: [AppConstant.myBoxShadow2()],
      ),

      height: 35.0*listLength+extraSize,
      width: itemSize*itemCount,
      child: Column(
        children: [

          SingleChildScrollView(
            controller: _controller.scrollController,
            scrollDirection: Axis.horizontal,
            child: Container(
              // padding: EdgeInsets.only(right: 10),
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Container(
                    child: IntrinsicHeight(
                      child:  Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [

                          ListHeader(height:40, corner: 'left',color: Color(0xffE6E4E4) , align: 'left', title: itemName[0], size: itemSize, callback: (){print('P: 1');}, position: 1,),
                          Container(height:40,  width: 1, color: Colors.white,),
                          ListHeader(height:40, corner: 'center',color: Color(0xffE6E4E4), align: 'center', title: itemName[1], size: itemSize, callback: (){print('P: 1');},position: 2,),
                          Container( width: 1, color: Colors.white,),
                          ListHeader(height:40, corner: 'center',color: Color(0xffE6E4E4), align: 'center', title: itemName[2], size: itemSize, callback: (){print('P: 1');},position: 3,),
                          Container( width: 1, color: Colors.white,),
                          ListHeader(height:40, corner: 'right',color: Color(0xffE6E4E4), align: 'center', title: itemName[3], size: itemSize, callback: (){print('P: 1');},position: 4,),

                        ],
                      ),
                    ),
                  ),
                  Divider(height: 1,),
                  IntrinsicHeight(
                    child: Container(

                      height: 35*listLength.toDouble(),
                      width: itemSize*itemCount+dividerSize,
                      child: Obx(()=>ListView.separated(
                        physics: ClampingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: _controller.getInvestmentDetailsByIdData.value.lastFiveTransactions?.length??0,
                        itemBuilder: (context, index) => IntrinsicHeight(
                          child: Row(
                            children: [
                              ListItem(corner: 'center', align: 'left', title: '${index+1}', size: itemSize, callback: (){print('P: 1');}, position: 1,),
                              Container( width: 1, color: Colors.white,),
                              ListItem(corner: 'center', align: 'center', title: '${_controller.getInvestmentDetailsByIdData.value.lastFiveTransactions?[index].businessdate??'Date'}', size: itemSize, callback: (){print('P: 1');}, position: 1,),
                              Container( width: 1, color: Colors.white,),


                              ListItem(corner: 'center', align: 'center', title: '${AppConstant.singleValueFormat(_controller.getInvestmentDetailsByIdData.value.lastFiveTransactions?[index].sellsurrflag=='Sell'?'${_controller.getInvestmentDetailsByIdData.value.lastFiveTransactions?[index].totalamount??'0'}':'0')}', size: itemSize, callback: (){print('P: 1');}, position: 2,),


                              Container( width: 1, color: Colors.white,),
                              ListItem(corner: 'center', align: 'center', title: '${AppConstant.singleValueFormat(_controller.getInvestmentDetailsByIdData.value.lastFiveTransactions?[index].sellsurrflag!='Sell'?'${_controller.getInvestmentDetailsByIdData.value.lastFiveTransactions?[index].totalamount??'0'}':'0')}', size: itemSize, callback: (){print('P: 1');}, position: 3,),



                            ],
                          ),
                        ), separatorBuilder: (BuildContext context, int index)=>Container( height: 1, color: Colors.white,),

                      )),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );

  }



}
