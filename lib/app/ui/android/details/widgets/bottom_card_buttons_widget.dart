import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';

import '../../../../controllers/details/details_controller.dart';
import '../../widgets/button_widget.dart';

class CardBottomButtonWidget extends StatelessWidget {
  const CardBottomButtonWidget({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        GetX<DetailController>(
          builder: (_) {
            return RaisedButtonCustomWidget(
              icon: Icons.delete_outline,
              onPressed: _.delete(_.post.value.id!),
              text: 'Delete',
            );
          },
        ),
        GetX<DetailController>(
          builder: (_) {
            return RaisedButtonCustomWidget(
              icon: Icons.edit,
              onPressed: _.editar(_.post),
              text: 'Editar',
            );
          },
        )
      ],
    );
  }
}