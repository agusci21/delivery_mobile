import 'package:delivery_app/src/models/user_model.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomeController extends GetxController {
  HomeController();
  User user = User.fromJson(GetStorage().read('user') ?? <String, dynamic>{});
  void signOut(){
    GetStorage().remove('user');
    Get.offNamedUntil('/', (route) => false);
  }
}