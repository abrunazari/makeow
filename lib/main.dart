import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:programow_flutter_getx_boilerplate/core/routes/app_pages.dart';
import 'package:programow_flutter_getx_boilerplate/core/translations/app_translations.dart';

import 'package:our_cl/src/common/theme.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.INITIAL,
    theme: OurTheme,
    defaultTransition: Transition.fade,
    getPages: AppPages.pages,
    locale: Locale('pt', 'BR'),
    translationsKeys: AppTranslation.translations,
  ));
}
