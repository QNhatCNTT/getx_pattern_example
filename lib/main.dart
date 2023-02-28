import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_example/app/bindings/home_binding.dart';

import 'app/routes/app_pages.dart';
import 'app/routes/app_routes.dart';
import 'app/ui/theme/app_theme.dart';

void main() {
  runApp(
    GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.initial,
        theme: appThemeData,
        defaultTransition: Transition.fade,
        getPages: AppPages.pages,
        initialBinding: HomeBinding(),
    )
  );
}