import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:project_mad/app/routes/app_pages.dart';

class SplashController extends GetxController {
  //TODO: Implement SplashController

  final getStorage = GetStorage();
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    // if (getStorage.read('id') != null) {
    //   Future.delayed(const Duration(microseconds: 2000), () {
    //     Get.offAllNamed(Routes.HOME);
    //   });
    // } else {
    //   Get.offAllNamed(Routes.LOGIN);
    // }
  }

  @override
  void onClose() {
    super.onClose();
  }
}
