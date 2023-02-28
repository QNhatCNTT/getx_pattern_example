import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_example/app/data/model/model.dart';

import '../../data/repository/posts_repository.dart';

class DetailController extends GetxController {

final MyRepository repository;
DetailController({required this.repository});

  final _post = MyModel().obs;
  get post => _post;
  set post(value) => _post.value = value;

  editar(post){
    if (kDebugMode) {
      print("editar");
    }
  }

  delete(id){
    if (kDebugMode) {
      print('delete');
    }
  }
}