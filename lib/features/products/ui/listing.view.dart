import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:our_cl/our_cl.dart';

class ListingView extends GetView {
  @override
  Widget build(BuildContext context) {
    List<dynamic> productList = [
      {
        'name': 'blush',
        'value': 2200,
        'rating': 4.5,
        'freeShipping': false
      },
      {
        'name': 'lipstick',
        'value': 700,
        'rating': 5,
        'freeShipping': false
      },
      {
        'name': 'base',
        'value': 4000,
        'rating': 4.4,
        'freeShipping': true
      },
    ];

    return OurScaffold(
      body: Container (
        color: OurColors.black,
      height: 600, width: 600,
      child: ListView(
        children: [
          ListTile(
            title: OurText (productList[0]['name']),
          ),
          ListTile(
            
          )
        ],
      )
      )

      
    );
  }
}
