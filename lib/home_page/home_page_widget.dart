import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_test/products_grid/products_grid_widget.dart';

import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: DefaultTabController(
                  length: 2,
                  initialIndex: 0,
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                    child: Column(
                      children: [
                        Expanded(
                          child: TabBarView(
                            children: [
                              ProductsGrid(),
                              Text(
                                'Tab View 2',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 32,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(15)),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    offset: const Offset(0.0, 3.0),
                                    blurRadius: 3.0),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(15)),
                              child: TabBar(
                                labelPadding: const EdgeInsets.all(8),
                                labelColor:
                                    FlutterFlowTheme.of(context).primaryColor,
                                labelStyle:
                                    FlutterFlowTheme.of(context).bodyText1,
                                indicatorColor:
                                    FlutterFlowTheme.of(context).primaryColor,
                                indicatorWeight: 4,
                                tabs: const [
                                  Tab(
                                    icon: FaIcon(
                                      FontAwesomeIcons.store,
                                    ),
                                  ),
                                  Tab(
                                    icon: FaIcon(
                                      FontAwesomeIcons.shoppingCart,
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
