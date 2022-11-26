import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:project_mad/page/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'app/routes/app_pages.dart';
import 'firebase_options.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Project MAD",
    initialRoute: AppPages.INITIAL,
    getPages: AppPages.routes,
  ));
}
