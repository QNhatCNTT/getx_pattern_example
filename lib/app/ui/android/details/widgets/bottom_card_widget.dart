import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';
import 'package:getx_pattern_example/app/controllers/details/details_controller.dart';

import '../../../theme/app_text_theme.dart';

class BottomCardCustomWidget extends StatelessWidget {
  const BottomCardCustomWidget({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(children: [
        Expanded(child: GetX<DetailController>(
          builder: (_) => Text(_.post.value.body!, style: cardTextStyle,),
        ))
      ]),
    );
  }
}