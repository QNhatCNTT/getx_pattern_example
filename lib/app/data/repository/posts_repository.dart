
import 'package:get/get.dart';
import 'package:getx_pattern_example/app/data/model/model.dart';
import 'package:getx_pattern_example/app/data/provider/api.dart';

class MyRepository {
  final MyApiClient apiClient;

  MyRepository({required this.apiClient});

  getAll() {
    return apiClient.getAll();
  }

  getId(id){
    return apiClient.getId(id);
  }
}