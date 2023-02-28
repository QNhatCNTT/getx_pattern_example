import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_example/app/data/model/model.dart';

import '../../../controllers/home/home_controller.dart';
import '../widgets/loading_widget.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print("Home page");
    }
    return Scaffold(
    appBar: AppBar(title: const Text('HomePage')),

    body: Container(
      padding: const EdgeInsets.all(0),
      child: GetX<HomeController>(
        initState: (state)=> Get.find<HomeController>().getAll(),
        builder: (_){
          if (kDebugMode) {
            print('postList ${_.postList.length}');
          }
          return _.postList.isEmpty 
          ? 
          const LoadingWidget() 
          : 
          ListView.builder(
            itemCount: _.postList.length,
            itemBuilder: (context, index){
            return ListTile(
              title: Text(_.postList[index].title!),
              subtitle: Text(_.postList[index].body!),
              onTap: ()=> _.details(_.postList[index]),
            );
          });
        },
        )
    )); 
  }
}