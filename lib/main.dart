import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_training/widgets/Wrap.dart';
import 'package:flutter_training/widgets/cipRRect.dart';
import 'package:flutter_training/widgets/custom_paint.dart';
import 'package:flutter_training/widgets/drawer.dart';
import 'package:flutter_training/widgets/fade_transition.dart';
import 'package:flutter_training/widgets/fitterbox.dart';
import 'package:flutter_training/widgets/gesture_detector.dart';
import 'package:flutter_training/widgets/gride_view.dart';
import 'package:flutter_training/widgets/hero.dart';
import 'package:flutter_training/widgets/layout_builder.dart';
import 'package:flutter_training/widgets/list_view.dart';
import 'package:flutter_training/widgets/list_view_builder.dart';
import 'package:flutter_training/widgets/mouse_region.dart';
import 'package:flutter_training/widgets/page_view.dart';
import 'package:flutter_training/widgets/refresh_indicator.dart';
import 'package:flutter_training/widgets/scroll_bar.dart';
import 'package:flutter_training/widgets/silver_appbar.dart';
import 'package:flutter_training/widgets/slider.dart';
import 'package:flutter_training/widgets/slivergrid.dart';
import 'package:flutter_training/widgets/sliverlist.dart';
import 'package:flutter_training/widgets/streambuilder.dart';
import 'package:flutter_training/widgets/tab_bar.dart';
import 'package:flutter_training/widgets/table_view.dart';
import 'package:flutter_training/widgets/tooltip.dart';
import 'package:flutter_training/widgets/transform.dart';


void main() => runApp(homepage());
class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "my home page",
      home: TransformWidget(),
    );
  }
}





