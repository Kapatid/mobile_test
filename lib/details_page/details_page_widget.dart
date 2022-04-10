import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_test/models/product.dart';

import '../flutter_flow/flutter_flow_theme.dart';

class DetailsPage extends StatelessWidget {
  final Product? product;

  const DetailsPage({Key? key, this.product}) : super(key: key);

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
              margin: const EdgeInsets.fromLTRB(15, 5, 15, 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(children: [
                    Row(children: [
                      Text(
                        "₱ ",
                        style: GoogleFonts.roboto(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        product!.price.toString(),
                        style: const TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      )
                    ]),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        product!.name,
                        style: const TextStyle(
                          fontSize: 24,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: const Text(
                        "Sit nulla elitr voluptua consequat takimata ad kasd diam dolor amet sanctus kasd. Dolores gubergren vel ut sadipscing ut no. Tempor ullamcorper lorem dolore ut consetetur dolores elitr sadipscing justo dolores minim rebum gubergren justo nostrud voluptua diam et.re",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
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
