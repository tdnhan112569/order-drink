import 'dart:io';

import 'package:animated_shimmer/animated_shimmer.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:currency_formatter/currency_formatter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:order_cart/controller/product_controller.dart';
import 'package:order_cart/presentation/widgets/app_bar.dart';

class OrderPages extends GetView<ProductController> {
  const OrderPages({super.key});

  List<Widget> _buildListItems() {
    List<Widget> widgets = [];
    for (int i = 0; i < controller.listProducts.length; i++) {
      final item = controller.listProducts[i];
      final currencyFormat = CurrencyFormat(
        // formatter settings for euro
        code: 'vnd',
        symbol: 'VNĐ',
        symbolSide: SymbolSide.right,
        thousandSeparator: '.',
        decimalSeparator: ',',
        symbolSeparator: ' ',
      );

      final itemWidget = Card(
        elevation: 8, // Controls the shadow depth
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        shadowColor: Colors.black54,
        child: Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(10),
          width: 280,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CachedNetworkImage(
                imageUrl: item.imgUrl,
                height: 360,
                width: 250,
                cacheKey: item.imgUrl,
                memCacheHeight: 360,
                memCacheWidth: 250,
                placeholder: (context, url) => const AnimatedShimmer(
                  width: 150,
                  height: 150,
                  borderRadius: BorderRadius.all(Radius.circular(75)),
                ),
                errorWidget: (context, url, error) => const Icon(Icons.error, color: Colors.red,),
                errorListener: (e) {
                  if (e is SocketException) {
                    debugPrint(
                        'Error with ${e.address} and message ${e.message}');
                  } else {
                    debugPrint('Image Exception is: ${e.runtimeType}');
                  }
                },
                imageBuilder: (context, imageProvider) => Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Text(item.productName),
              Text(CurrencyFormatter.format(item.price, currencyFormat))
            ],
          ),
        ),
      );

      widgets.add(itemWidget);
    }

    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarCommon(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                alignment: WrapAlignment.center,
                runAlignment: WrapAlignment.center,
                direction: Axis.horizontal,
                children: _buildListItems()
              )
            ],
          ),
        ),
      )
    );
  }
}
