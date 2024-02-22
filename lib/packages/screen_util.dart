import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class ScreenUtilPakage extends StatefulWidget {
  const ScreenUtilPakage({super.key});

  @override
  State<ScreenUtilPakage> createState() => _ScreenUtilPakageState();
}

class _ScreenUtilPakageState extends State<ScreenUtilPakage> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      child: Scaffold(
        appBar: AppBar(),
      ),
    );
  }
}
