import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:programow_flutter_getx_boilerplate/app/controller/home/home_controller.dart';
import 'package:programow_flutter_getx_boilerplate/app/ui/views/widgets/loading_widget.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: GetX<HomeController>(initState: (state) {
          Get.find<HomeController>().getAll();
        }, builder: (_) {
          return _.postList.length < 1
              ? LoadingWidget()
              : ListView.builder(
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(_.postList[index].title ?? 'a'),
                      subtitle: Text(_.postList[index].body ?? 'b'),
                      onTap: () => _.details(_.postList[index]),
                    );
                  },
                  itemCount: _.postList.length,
                );
        }),
      ),
    );
  }
}