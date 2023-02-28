import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_example/app/data/provider/api.dart';
import 'package:getx_pattern_example/app/data/repository/posts_repository.dart';
import '../controllers/home/home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    if (kDebugMode) {
      print("Home binding");
    }
    Get.lazyPut<HomeController>(() => HomeController(
      repository: MyRepository(
        apiClient: MyApiClient())
        )
      );
    }
}