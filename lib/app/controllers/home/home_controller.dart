// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_example/app/data/model/model.dart';
import 'package:getx_pattern_example/app/data/provider/api.dart';
import 'package:getx_pattern_example/app/routes/app_routes.dart';

import '../../data/repository/posts_repository.dart';

class HomeController extends GetxController {
  
  final MyRepository repository;

  HomeController({
    required this.repository,
  });


  final RxList<MyModel> _postsList = <MyModel>[].obs;
  RxList<MyModel> get postList => _postsList;
  set postList(RxList<MyModel> value) => _postsList.value = value;

  final Rx<MyModel> _post = MyModel().obs;
  get post => _post;
  set post(value) => _post.value = value;

  @override
  void onInit() {
    super.onInit();
    getAll();
    
  }

  getAll() async {
    try {
      final response = await repository.getAll() as List;
      if (response.isNotEmpty) {
        final posts =response.map((data){
            return MyModel.fromJson(data);
          }).toList();
        postList.assignAll(posts);
        if (kDebugMode) {
              print('Home controller $postList');
            }
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  adicionar(){

  }
  //dismissible
  excluir(){

  }
  //dismissible
  editar(){

  }
 details(MyModel value) {
    post = value;
    Get.toNamed(Routes.details);
  }
  

}
