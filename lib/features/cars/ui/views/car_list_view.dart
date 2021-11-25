import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:our_cl/our_cl.dart';
import 'package:programow_flutter_getx_boilerplate/features/auth/domain/auth_controller.dart';

class CarListView extends GetView {
  @override
  Widget build(BuildContext context) {
    return OurScaffold(
        navbar: OurResponsiveNavbar(children: [
          Text(
            "data",
            style: TextStyle(color: OurColors.primaryColor),
          ),
          // Container(
          //   height: 50,
          //   width: 50,
          //   color: OurColors.secondaryColor,
          // )
        ]),
        drawer: OurDrawer(
            child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            ListTile(
              title: Text("That's a tile"),
            )
          ],
        )),
        body: Container(
          height: 50,
          width: 50,
          color: OurColors.primaryColor,
        ));
  }
}
