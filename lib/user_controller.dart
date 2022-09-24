import 'package:get/get.dart';
import 'package:getintro/user_model.dart';

class UserController extends GetxController {
  Rx<UserModel> user = UserModel().obs;

  void setUserName(String userName) {
    user.update((obj) {
      obj?.name = userName;
    });
  }

  void setUserAge(int userAge) {
    user.update((obj) {
      obj?.age = userAge;
    });
  }
}
