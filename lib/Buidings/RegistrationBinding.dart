import 'package:event_horizon/Controller/RegistrationController.dart';
import 'package:get/get.dart';

class RegistrationBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => RegistrationController());
  }

}