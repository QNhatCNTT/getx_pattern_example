import 'package:get/get.dart';

import '../bindings/details_binding.dart';
import '../bindings/home_binding.dart';
// ignore: import_of_legacy_library_into_null_safe
import '../ui/android/details/details_page.dart';
import '../ui/android/home/home_page.dart';
import 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(name: Routes.initial, page: ()=> const HomePage(), binding: HomeBinding()),
    GetPage(name: Routes.details, page: ()=> const DetailsPage(), binding: DetailsBinding())
  ];
}