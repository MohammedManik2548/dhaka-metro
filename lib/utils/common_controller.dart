
import 'package:get/get.dart';



class CommonController extends GetxController{

   static var sharedPreUserExist=false.obs;
   static var sharedPreUserName=''.obs;
   static var sharedPreUserEmail=''.obs;
   static var sharedPreUserPhone=''.obs;
   static var sharedPreUserToken=''.obs;
   static var sharedPreInvestorCode=''.obs;



  @override
  void onInit() {
    // getSharedPreData();

    super.onInit();
  }

  // void getSharedPreData()async {
  //   SharedPreferences p = await SharedPreferences.getInstance();
  //   sharedPreUserName.value=p.getString(_controller.name)!;
  //   sharedPreUserEmail.value=p.getString(_controller.email)!;
  //   sharedPreUserPhone.value=p.getString(_controller.mobileNo)!;
  //   sharedPreUserToken.value=p.getString(_controller.token)!;
  //   sharedPreInvestorCode.value=p.getString(_controller.investor_code)??'';
  // }



}