import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CachedNetworkImagePackage extends StatefulWidget {
  const CachedNetworkImagePackage({super.key});

  @override
  State<CachedNetworkImagePackage> createState() => _CachedNetworkImagePackageState();
}

class _CachedNetworkImagePackageState extends State<CachedNetworkImagePackage> {
  @override
  Widget build(BuildContext context) {
    return Placeholder(
      child: CachedNetworkImage(imageUrl: 'https://images.sftcdn.net/images/t_app-icon-m/p/f46fd4b6-53ae-4a87-87fb-6be9c599127f/2162652249/zero-cleaner-clear-cache-logo'),
    );
  }
}

