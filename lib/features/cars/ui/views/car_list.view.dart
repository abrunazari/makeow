import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:our_cl/our_cl.dart';
import 'package:programow_flutter_getx_boilerplate/features/cars/ui/controllers/cars.controller.dart';
import 'package:programow_flutter_getx_boilerplate/features/cars/ui/controllers/shared.controller.dart';

class CarListView extends GetView<CarsController> {
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
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.all(15),
                child: Container(
                    // color: OurColors.black,
                    height: 600,
                    child: GetBuilder<CarsController>(
                      builder: (cont) => ListView.builder(
                        itemCount: cont.cars.length,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.all(4),
                          child: ListTile(
                            leading: Container(
                              width: 50,
                              height: 50,
                              child: Image.network(cont.cars[index].imageUrl),
                            ),
                            title: Text(cont.cars[index].model),
                            onTap: () =>
                                Get.toNamed("/cars/${cont.cars[index].id}"),
                            contentPadding: EdgeInsets.all(10),
                            tileColor: OurColors.grey,
                          ),
                        ),
                        //   separatorBuilder: (context, index) =>
                        //       Divider(height: 5),
                      ),
                    ))),
            OutlinedButton(
                onPressed: () {
                  sharedController.addCar();
                },
                child: Text("Add Car!"))
          ],
        ),
      ),
    );
  }
}
