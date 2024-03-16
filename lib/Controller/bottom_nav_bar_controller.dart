import 'package:app_nckh/Query/query_page.dart';
import 'package:app_nckh/auth/user_page.dart';
import 'package:app_nckh/pages/Favorite_option_page.dart';
import 'package:app_nckh/pages/layout_home_page.dart';
import 'package:get/get.dart';

class BottomNavigatorBarController extends GetxController{
  RxInt index = 0.obs;

  var Pages = [
    LayoutHomePage(),
    FavoriteOptionPage(),
    QueryPage(),
    UserPage()
  ];
}