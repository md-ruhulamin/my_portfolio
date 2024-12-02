import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/Test/test%20button.dart';
import 'package:my_portfolio/constant/dimension.dart';
import 'package:my_portfolio/screen/homepage.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    
    final textTheme = Theme.of(context).textTheme;
    return GetMaterialApp(
       scrollBehavior: MaterialScrollBehavior().copyWith(
        dragDevices: {PointerDeviceKind.mouse, PointerDeviceKind.touch, PointerDeviceKind.stylus, PointerDeviceKind.unknown},
      ),
      debugShowCheckedModeBanner: false,
      title: "Ruhul Amin's Portfolio",
      theme: ThemeData(
       textTheme: GoogleFonts.latoTextTheme(textTheme).copyWith(
      bodyMedium: GoogleFonts.gfsDidot(textStyle: textTheme.bodyMedium),
       ), useMaterial3: true,
      ),
     home:    HomeResponsive(),
 //  home: MyWidget(),
    );
  }
}
