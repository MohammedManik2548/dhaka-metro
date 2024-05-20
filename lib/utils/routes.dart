
import 'package:dhaka_metro/screens/splashPage/splash_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../screens/homePage/fragments/updateProfilePage/update_profile_screen.dart';
import '../screens/homePage/home_page.dart';

var routeList= [
  GetPage(name: '/', page: ()=>SplashScreen()),
  GetPage(name: UpdateProfileScreen.routeName, page: ()=>UpdateProfileScreen()),

];