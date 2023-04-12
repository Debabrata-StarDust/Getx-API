import 'package:get/get.dart';
import 'package:getx_tutorial/controller/homepage_controller.dart';

class HomeBinding extends Bindings{
@override
void dependencies() {
    Get.put(HomepageController());
  }
}