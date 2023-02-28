import 'package:get/get.dart';
import 'package:getx_pattern_example/app/data/provider/api.dart';
import 'package:getx_pattern_example/app/data/repository/posts_repository.dart';
import '../controllers/details/details_controller.dart';

class DetailsBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<DetailController>(() => DetailController(
    repository: MyRepository(apiClient: MyApiClient())));
  }
}