import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_test/details_page/details_page_widget.dart';
import 'package:mobile_test/flutter_flow/flutter_flow_theme.dart';
import 'package:mobile_test/home_page/home_page_widget.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/details': (context) => DetailsPage(),
      },
      title: 'Gallery Design',
      theme: ThemeData(
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
          primarySwatch: Colors.blue,
          colorScheme: ThemeData().colorScheme.copyWith(
                primary: FlutterFlowTheme.of(context).primaryColor,
                secondary: FlutterFlowTheme.of(context).secondaryColor,
              )),
      home: GestureDetector(
        // Unfocus when tapping outside certain Widgets
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: const Scaffold(
          body: HomePageWidget(),
        ),
      ),
    );
  }
}
