import 'package:flutter_easyloading/flutter_easyloading.dart';

bool loadingStatus = false;

class LoadingUtils {

  static show() {
    EasyLoading.show();
  }

  static dismiss() {
    EasyLoading.dismiss();
  }
}
