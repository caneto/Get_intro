
import 'package:get/get.dart';

class ValueController extends GetxController {

  RxString definidoValue = "".obs;

  RxBool isLoading = false.obs;

  Future<void> setValue(String newValue) async {
    isLoading.value = true;

    await Future.delayed(const Duration(seconds: 2));

    definidoValue.value = newValue;

    isLoading.value = false;
  }
}