import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:programow_flutter_getx_boilerplate/app/controller/auth/auth_controller.dart';

class BrunaView extends GetView<AuthController> {
  @override
  Widget build(BuildContext context) {
    List<dynamic> products = [
      {"id": "fb9874ifhbesrgi72u5", "name": "Mandioca", "price": 29.95},
      {"id": "fb987jjfkdkgi72u5", "name": "Banana", "price": 6.95},
      {'id': 'kfjdhgiuhrifdjk', 'name': 'Maça', 'price': 10.50}
    ];

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Cirilo'),
          backgroundColor: Colors.pinkAccent,
        ),
        drawer: Drawer(
          child: Column(
            children: [
              MaterialButton(
                onPressed: () => print('pressed'),
                color: Colors.pink,
                child: Text('Bear', style: TextStyle(color: Colors.white)),
              ),
              MaterialButton(
                onPressed: () => print('object'),
                color: Colors.pink,
                child: Text(
                  'Bear',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
        // body: ListView
      ),
    );
  }
}
