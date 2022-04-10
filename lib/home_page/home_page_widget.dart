import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_test/products_grid/products_grid_widget.dart';
import 'package:mobile_test/widgets/custom_tab_indicator.dart';

import '../flutter_flow/flutter_flow_theme.dart';
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
                              const Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, 15, 0, 15),
                                child: ProductsGrid(),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0, 15, 0, 15),
                                child: Column(
                                  children: [
                                    Column(
                                      children: const [
                                        Text("No items in cart")
                                      ],
                                    ),
                                    const Spacer(),
                                    Column(
                                      children: [
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              const Text("Sub Total",
                                                  style: TextStyle(
                                                      color: Colors.grey)),
                                              Text("₱ 0",
                                                  style: GoogleFonts.roboto())
                                            ],
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              const Text("Shipping",
                                                  style: TextStyle(
                                                      color: Colors.grey)),
                                              Text("₱ 0",
                                                  style: GoogleFonts.roboto())
                                            ],
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              const Text("Tax",
                                                  style: TextStyle(
                                                      color: Colors.grey)),
                                              Text("₱ 0",
                                                  style: GoogleFonts.roboto())
                                            ],
                                          ),
                                        ),
                                        const Divider(),
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              const Text(
                                                "Total",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w900),
                                              ),
                                              Text("₱ 0",
                                                  style: GoogleFonts.roboto())
                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).primaryColor,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(15)),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.8),
                                    offset: const Offset(0.0, 3.0),
                                    blurRadius: 5.0),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(15)),
                              child: TabBar(
                                labelColor: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                labelStyle:
                                    FlutterFlowTheme.of(context).bodyText1,
                                indicator: CustomTabIndicator(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground),
                                // indicatorColor:
                                //     FlutterFlowTheme.of(context).primaryColor,
                                // indicatorWeight: 4,
                                tabs: const [
                                  Tab(
                                    iconMargin: EdgeInsets.fromLTRB(0, 3, 0, 3),
                                    icon: FaIcon(
                                      FontAwesomeIcons.store,
                                    ),
                                    text: "Store",
                                  ),
                                  Tab(
                                    iconMargin: EdgeInsets.fromLTRB(0, 3, 0, 3),
                                    icon: FaIcon(
                                      FontAwesomeIcons.shoppingCart,
                                    ),
                                    text: "Cart",
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
