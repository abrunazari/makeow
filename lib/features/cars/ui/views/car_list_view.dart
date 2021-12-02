import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:our_cl/our_cl.dart';
import 'package:programow_flutter_getx_boilerplate/features/auth/domain/auth_controller.dart';
import 'package:programow_flutter_getx_boilerplate/features/cars/domain/entities/car.entity.dart';
import 'package:programow_flutter_getx_boilerplate/features/cars/ui/controllers/cars.controller.dart';

class CarListView extends GetView<CarsController> {
  @override
  Widget build(BuildContext context) {
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
        body: Center(
          child: Container(
            width: 300,
            height: 800,
            child: Column(
              children: [
                Padding(
                    padding: EdgeInsets.all(15),
                    child: Container(
                        color: OurColors.black,
                        height: 600,
                        child: GetBuilder<CarsController>(
                          builder: (cont) => ListView.builder(
                              itemCount: cont.cars.length,
                              itemBuilder: (context, index) => ListTile(
                                    title: Text(cont.cars[index].model),
                                  )),
                        ))),
                OutlinedButton(
                    onPressed: () {
                      print(controller.cars);
                      controller.listCars();
                    },
                    child: Text("List Cars!"))
              ],
            ),
          ),
        ));
  }
}
