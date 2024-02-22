import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class Path_Provider_Package extends StatefulWidget {
  const Path_Provider_Package({super.key, required this.title});

  final String title;

  @override
  State<Path_Provider_Package> createState() => _Path_Provider_PackageState();
}

class _Path_Provider_PackageState extends State<Path_Provider_Package> {
  String temp_Path = "";
  String appPath = "";

  getPathLocation() async {
    Directory tempDir = await getTemporaryDirectory();
    temp_Path = tempDir.path;
    print("temp_path: $temp_Path");
    Directory appDir = await getApplicationDocumentsDirectory();
    appPath = appDir.path;
    print("app_path: $appPath");
  }

  @override
  void initState() {
    getPathLocation();
    super.initState();
  }

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    getPathLocation();
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Temp Path: $temp_Path"),
                Text("App Path: $appPath")
              ],
            )));
  }
}