import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_example/app/controllers/details/details_controller.dart';

import '../../../theme/app_text_theme.dart';

class CardTopCustomWidget extends StatelessWidget {
  const CardTopCustomWidget({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        padding: const EdgeInsets.all(16),
        child: GetX<DetailController>(builder: (_){
          return Text(
            _.post.value.title!,
            style: cardTextStyle,
          );
        }),
      ),
    );
  }
}