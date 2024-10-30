import 'package:event_horizon/Buidings/HomeBinding.dart';
import 'package:event_horizon/Buidings/LoginBinding.dart';
import 'package:event_horizon/Buidings/RegistrationBinding.dart';
import 'package:event_horizon/View/Home.dart';
import 'package:event_horizon/View/Login.dart';
import 'package:event_horizon/View/Registration.dart';
import 'package:get/get.dart';
import 'package:event_horizon/Routes/AppRoute.dart';

class AppPage {

  static final List <GetPage> pages = [
    GetPage(name: AppRoute.home, page: () => Home(), binding: HomeBinding()),
    GetPage(name: AppRoute.register, page: () => Registration(), binding: RegistrationBinding()),
    GetPage(name: AppRoute.login, page: () => Login(), binding: LoginBinding()),

  ];
}