import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:our_cl/our_cl.dart';
import 'package:programow_flutter_getx_boilerplate/features/cars/ui/controllers/car_detail.controller.dart';
import 'package:programow_flutter_getx_boilerplate/features/cars/ui/controllers/shared.controller.dart';

class CarDetailView extends GetView<CarController> {
  @override
  Widget build(BuildContext context) {
    var sharedController = Get.put(SharedController());

    return OurScaffold(
      navbar: OurResponsiveNavbar(children: [
        Text(
          "data",
          style: TextStyle(color: OurColors.primaryColor),
        ),
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
          height: 800,
          color: OurColors.black,
          child: Column(
            children: [
              GetBuilder<CarController>(builder: (cont) {
                return Text(cont.car.model ?? "Loading...");
              }),
              Container(
                height: 500,
                width: 400,
                child: ListView.builder(
                    itemCount: sharedController.cars.length,
                    itemBuilder: (context, index) => ListTile(
                          tileColor: OurColors.black,
                          title: Text(sharedController.cars[index].model),
                        )),
              )
            ],
          )),
    );
  }
}
