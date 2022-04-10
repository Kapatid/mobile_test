import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mobile_test/models/product.dart';
import 'package:mobile_test/flutter_flow/flutter_flow_theme.dart';
import 'package:mobile_test/flutter_flow/flutter_flow_util.dart';

class DetailsPage extends StatelessWidget {
  final Product? product;

  DetailsPage({Key? key, this.product}) : super(key: key);

  final _fc = NumberFormat.simpleCurrency(locale: 'en_US', name: 'PHP');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        title: const Text("Product Details"),
      ),
      body: Column(
        children: [
          CachedNetworkImage(
              placeholder: (context, url) => const Center(
                    child: SizedBox(
                      width: 40.0,
                      height: 40.0,
                      child: CircularProgressIndicator(),
                    ),
                  ),
              errorWidget: (context, url, error) => const Icon(Icons.error),
              imageUrl: product!.image),
          Expanded(
            flex: 1,
            child: Container(
              margin: const EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        _fc.format(product?.price),
                        style: TextStyle(
                            fontSize: 30,
                            fontFamily: "Roboto",
                            color: FlutterFlowTheme.of(context).secondaryColor),
                      ),
                    ),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          product!.name,
                          style: TextStyle(
                              fontSize: 24,
                              color: FlutterFlowTheme.of(context).primaryColor),
                        )),
                    const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Sit nulla elitr voluptua consequat takimata ad kasd diam dolor amet sanctus kasd. Dolores gubergren vel ut sadipscing ut no. Tempor ullamcorper lorem dolore ut consetetur dolores elitr sadipscing justo dolores minim rebum gubergren justo nostrud voluptua diam et.re",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        )),
                  ]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          flex: 1,
                          child: OutlinedButton(
                            onPressed: () {},
                            child: const Text('WISHLIST'),
                            style: OutlinedButton.styleFrom(
                                shape: const StadiumBorder(),
                                side: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    width: 2)),
                          )),
                      const SizedBox(width: 15),
                      Expanded(
                          flex: 1,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text("ADD TO CART"),
                            style: ElevatedButton.styleFrom(
                                shape: const StadiumBorder()),
                          )),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
