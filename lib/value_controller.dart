
import 'package:get/get.dart';

class ValueController extends GetxController {

  String definidoValue = "";

  void setValue(String value) {
    definidoValue = value;

    update();
  }
}