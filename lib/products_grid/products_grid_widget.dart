import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_test/details_page/details_page_widget.dart';
import 'package:mobile_test/flutter_flow/flutter_flow_theme.dart';
import 'package:mobile_test/models/product.dart';

import '../flutter_flow/flutter_flow_util.dart';

Route _createRoute(Widget page) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

class ProductsGrid extends StatefulWidget {
  const ProductsGrid({Key? key}) : super(key: key);
  @override
  _ProductsGridState createState() => _ProductsGridState();
}

class _ProductsGridState extends State<ProductsGrid> {
  final List<Product> _productList = [
    Product("2cFZ_FB08UM", "Digital Watch", 500.00),
    Product("KsLPTsYaqIQ", "One Step 2", 1000.0),
    Product("ZtxED1cpB1E", "Wireless Mouse", 2000.0),
    Product("dUx0gwLbhzs", "Playstation", 14000.0),
    Product("mwytIca3qNA", "Playstation Controller", 4000.0),
    Product("IJjfPInzmdk", "Puma Sneakers", 6000.0),
    Product("rI2MXeP6sss", "Airpods", 5000.0),
    Product("cOJgO4Zzs-w", "Nike Shoes", 16000.0),
    Product("WCbHuYngg44", "Watch", 20000.0),
    Product("pHqt1DsHCx0", "Marshal Headphones", 15000.0),
    Product("y4Atz4olpAQ", "FOSSIL Watch", 39000.0),
    Product("Rux50ySjahc", "Nikon Camera", 3000.0),
    Product("DGyTUaS6_aw", "GoPro", 18000.0),
    Product("LtDXRSnNBe0", "Drone", 12000.0),
    Product("aWPsyb7-KBQ", "G Fuel", 1000.0),
  ];
  List<Product> _searchList = [];

  final TextEditingController _searchController = TextEditingController();
  final _formatCurrency =
      NumberFormat.simpleCurrency(locale: 'en_US', name: 'PHP');

  @override
  void initState() {
    super.initState();

    _searchList = _productList;

    _searchController.addListener(() {
      setState(() {
        if (_searchController.text.isEmpty) {
          _searchList = _productList;
        } else {
          _searchList = _productList
              .where((product) => product.name
                  .toLowerCase()
                  .contains(_searchController.text.toLowerCase()))
              .toList();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        // Search Box
        width: MediaQuery.of(context).size.width * 0.90,
        clipBehavior: Clip.antiAlias,
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.6),
                  offset: const Offset(0.0, 2.0),
                  blurRadius: 5.0)
            ]),
        child: TextField(
          controller: _searchController,
          decoration: InputDecoration(
              prefixIcon: const Icon(Icons.search),
              suffixIcon: Material(
                color: FlutterFlowTheme.of(context).primaryBackground,
                child: IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: _searchController.clear,
                ),
              ),
              hintText: 'Search',
              border: InputBorder.none),
        ),
      ),
      Expanded(
          child: GridView.builder(
        shrinkWrap: true,
        padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          crossAxisCount: 2,
        ),
        itemCount: _searchList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                _createRoute(DetailsPage(product: _searchList[index])),
              );
            },
            child: Card(
                clipBehavior: Clip.antiAlias,
                elevation: 4.0,
                child: Column(
                  children: [
                    SizedBox(
                      child: CachedNetworkImage(
                          placeholder: (context, url) => const Center(
                                child: SizedBox(
                                  width: 40.0,
                                  height: 40.0,
                                  child: CircularProgressIndicator(),
                                ),
                              ),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                          imageUrl: _searchList[index].image),
                    ),
                    Column(children: [
                      Container(
                        margin:
                            const EdgeInsets.only(left: 10, top: 5, right: 10),
                        alignment: Alignment.centerLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                                child: Text(
                              _searchList[index].name,
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 12,
                                  ),
                            )),
                            Text(
                              _formatCurrency.format(_searchList[index].price),
                              style: const TextStyle(
                                  fontSize: 12, fontFamily: "Roboto"),
                            )
                          ],
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.only(top: 14, right: 10),
                          height: 30,
                          alignment: Alignment.centerRight,
                          child: Wrap(children: [
                            const Text(
                              'See Details',
                              style:
                                  TextStyle(fontSize: 11, color: Colors.grey),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 1),
                              child: const FaIcon(
                                FontAwesomeIcons.caretRight,
                                size: 13,
                                color: Colors.grey,
                              ),
                            )
                          ]))
                    ]),
                  ],
                )),
          );
        },
      )),
    ]);
  }
}
