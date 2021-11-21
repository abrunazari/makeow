import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:programow_flutter_getx_boilerplate/app/controller/details/details_controller.dart';
import 'package:programow_flutter_getx_boilerplate/app/ui/theme/app_text_theme.dart';

class CardBottomCustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16),
              child: GetX<DetailsController>(
                  builder: (_) => Text(
                        _.post.body,
                        style: cardTextStyle,
                      )),
            ),
          ),
        ],
      ),
    );
  }
}