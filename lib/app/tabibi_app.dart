import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:tabibi_app/core/routes/app_pages.dart';

class TabibiApp extends StatelessWidget {
  const TabibiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tabibi',
      theme: ThemeData(fontFamily: 'Cairo', primarySwatch: Colors.blue),
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
    );
  }
}
