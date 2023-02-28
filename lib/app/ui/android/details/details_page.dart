// ignore_for_file: import_of_legacy_library_into_null_safe
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/details/details_controller.dart';
import '../../../controllers/home/home_controller.dart';

class DetailsPage extends GetView<DetailController> {
  const DetailsPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text('DetailsPage')),

    body: SingleChildScrollView(
      child: Container(
        width: 400,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(32),
        child: GetX<DetailController>(
          builder: (_){
            _.post = Get.find<HomeController>().post;
            return ListView(
              children: <Widget>[
                Card(
                  color: Colors.red,
                  shadowColor: Colors.amberAccent,
                  child: Column(
                    children: [
                      Text(_.post.value.title!),
                      Text(_.post.value.body!)
                    ],
                  ),
                )
              ],
            );
          }
          ),
      )
      )
    );
  }
}