import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late TextEditingController textEmailController;
  late TextEditingController textPasswordController;
  late bool textPasswordVisibility;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textEmailController = TextEditingController();
    textPasswordController = TextEditingController();
    textPasswordVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
